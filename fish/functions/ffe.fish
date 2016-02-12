function ffe --description 'Find a file that contains the argument starting in the current directory'
  command find . -name *$argv
end
