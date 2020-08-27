!#/bin/bash

cat << EOF > /home/ec2-user/.bashrc
    mode: "000755"
    content : |
#!/bin/bash
# Pretty much everything requires root so su immediately
alias x='exit'
sudo -s
EOF
