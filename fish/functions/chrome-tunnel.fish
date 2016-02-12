function chrome-tunnel --description "Launch Google Chrome with socks5 proxy"
  if count $argv > /dev/null
    command /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks5://localhost:$argv"
  else
    command /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks5://localhost:8088"
  end
end
