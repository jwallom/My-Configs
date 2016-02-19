function encrypt --description="Encrypt any file passed with GPG"
  if count $argv > /dev/null
    command gpg2 --encrypt -u jwallom@gmail.com $argv
  end
end
