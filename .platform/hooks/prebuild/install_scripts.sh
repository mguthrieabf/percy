#!/bin/bash

cat << EOF > /tmp/fff
#!/bin/bash
# Pretty much everything requires root so su immediately
alias x='exit'
sudo -s
EOF
