#!/usr/bin/env perl

use strict;
use warnings;
use IPC::Open2;

my $RAW_SINKS = readpipe('pamixer --list-sinks | tail -n 2');

my @SINK_NAMES;
my %SINKS;

foreach my $SINK (split(/\n/, $RAW_SINKS)) {
  my @SINKID = split('"', $SINK);
  push @SINK_NAMES, $SINKID[5];
  $SINKS{$SINKID[5]} = $SINKID[1];
}

my ($DMENU_OUT, $DMENU_IN);
my $DMENU_CMD = "bemenu -i";

my $PID = eval {
  open2($DMENU_OUT, $DMENU_IN, $DMENU_CMD);
} or do {
  print STDERR "$@";
  say STDERR "Error";
  exit 1;
};

say $DMENU_IN $_ for sort keys %SINKS;
close($DMENU_IN);

waitpid($PID, 0);
my $STATUS = ($? >> 8);

exit $STATUS unless $STATUS == 0;

my $CHOICE = <$DMENU_OUT>;
chomp($CHOICE);

system("pactl", "set-default-sink", "$SINKS{ $CHOICE }");
