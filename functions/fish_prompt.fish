# name: mtahmed
# Left prompt:
# - First 10 characters of hostname if ssh'ed
# - Current directory name
# - ─╼
# Right prompt:
# - Exit code of the previous command
function fish_prompt
  set_color $fish_color_cwd
  if [ -n "$SSH_CONNECTION" ]
    printf '%s | ' (hostname | head -c 10)
  end
  if string match -q "/home/nop***" (string escape (pwd))
    printf "~"
    printf (string replace (string escape "/home/nop") "" (string escape (pwd)))
  else
    printf (basename (pwd))
  end
  printf " ─╼ "
end
