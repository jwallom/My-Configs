function cent-tmux --description "Connect to centurian and attach to tmux."
  while not ssh -t centurian -o 'ServerAliveInterval 5' 'tmux attach -d || tmux new-session' ^ /dev/null;
    true
  end
end
