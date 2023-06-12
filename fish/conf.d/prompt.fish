function fish_prompt -d "Write out the prompt"
    printf '%s%s%s%s%s%s%s%s %s%s%s%s%s%s%s \n$ ' (set_color --bold red) \
		(echo "[") (set_color --bold yellow) $USER \
		(set_color --bold green) \
		(echo @) (set_color --bold blue) \
		$hostname (set_color --bold --italics purple) \
		(pwd)  (set_color --bold red) \
		(echo "]") (set_color --italics brcyan) (fish_git_prompt) (set_color normal)
end

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      echo -e "\1\e[2 q\2"
    case insert
      echo -e "\1\e[6 q\2"
    case replace_one
      echo ""
    case visual
      echo ""
    case '*'
      echo ""
  end
  set_color normal
end

function fish_right_prompt
	if test $status -gt 0
		printf "%s%s" (set_color --reverse --bold red) (echo "[Err]") (set_color normal)
	else
		printf "%s%s" (set_color --reverse --bold green) (echo "[Ok]") (set_color normal)
	end
end
