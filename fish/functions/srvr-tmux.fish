function srvr-tmux --description "Persistantly connect to a given server and attach to tmux."
  if count $argv < /dev/null
    while not ssh -t $argv -o 'ServerAliveInterval 5' 'tmux attach || tmux new-session -s main' ^ /dev/null;
      true
    end
  else
    echo "Usage: srvr-tmux [hostame or ip]"
  end
end
