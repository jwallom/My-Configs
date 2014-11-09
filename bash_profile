#!/bin/sh

#	---------------------------------
#	|	My Aliases		|
#	---------------------------------

alias home="ssh -AXl pi ssh.wallom.com"
alias mchome="ssh -l pi -L 37373:10.0.1.7:25565 ssh.wallom.com"
alias vnchome="ssh -A -l pi -t -L 7333:localhost:7333 ssh.wallom.com 'ssh -l jwallom -t -L 7333:localhost:5900 10.0.1.7 'x11vnc -usepw''"

#	---------------------------------
#	|	SoP Aliases		|
#	---------------------------------

# Create a tunnel to connect to the file server
alias physfile="ssh -l jwallom3 -L 4450:phys-file.physics.gatech.edu:445 ssh.physics.gatech.edu"
alias work="ssh -l jwallom3 -L 7373:phys41080.physics.gatech.edu:22 ssh.physics.gatech.edu"
alias vncmac="ssh -l jwallom3 -L 7374:130.207.139.70:5900 ssh.physics.gatech.edu"
alias vncwork="ssh -l jwallom3 -t -L 7373:localhost:7373 ssh.physics.gatech.edu 'ssh -t -L 7373:localhost:5900 phys41080 'x11vnc -usepw''"
alias sop="ssh jwallom3@ssh.physics.gatech.edu"
alias s101p="ssh -l jwallom3 -L 9101:hpb-s101.physics.gatech.edu:9100 ssh.physics.gatech.edu"
alias s103c="ssh -l jwallom3 -L 9102:hpb-s103-color.physics.gatech.edu:9100 ssh.physics.gatech.edu"'*'

#	---------------------------------
#	|	Basic Aliases		|
#	---------------------------------

alias ll="ls -FGlAhp"
alias path='echo -e ${PATH//:/\\n}'
alias DT='tee ~/Desktop/terminalOut.txt'

#	---------------------------------
#	|	Searching		|
#	---------------------------------

alias qfind="find . -name "
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string
scopy () { /usr/bin/scp "$@" jwallom3@ssh.physics.gatech.edu:~/Downloads; }

#       ---------------------------------
#       |       Keychain                |
#       ---------------------------------

# eval $(keychain --eval --agents ssh -Q --quiet ~/.ssh/myKey)
