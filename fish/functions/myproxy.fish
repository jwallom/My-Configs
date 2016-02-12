function myproxy --description "Starts and stops a sock5 proxy for on a given port."
  # Set the interface you want the proxy on
  set int Wi-Fi

  # Lets take the port from an argument if it exists
  if count $argv > /dev/null
    if test $argv = off -o $argv = close
      networksetup -setsocksfirewallproxystate $int off
      return 1
    end
    if test 9000 -gt $argv -a 8000 -lt $argv
      set port $argv
    else
      echo "Please supply a port between 8000 and 9000, or use close/off to shut down a proxy."
      return 1
    end
  else
    set port 8088
  end

  networksetup -setsocksfirewallproxy $int localhost $port

end
