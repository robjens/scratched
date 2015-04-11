#!/usr/bin/env bash

echo "Installing packages ... please hit return to continue or ^C to quit next "
read
(npm i -q -g nesh coffee js2coffee) 2>&1 >/dev/null

test -d ~/bin || mkdir ~/bin
test -f ~/bin/js2c || cat <<-'eos' > ~/bin/js2c
#!/usr/bin/env bash
js2coffee -i 4 "${@}"
eos
test -f ~/bin/js2c && chmod +x ~/bin/js2c

