function encrypt-ascii --description="Encrypt any file passed with GPG in ascii armor"
  if count $argv > /dev/null
    command gpg2 --encrypt --armor $argv
  end
end
