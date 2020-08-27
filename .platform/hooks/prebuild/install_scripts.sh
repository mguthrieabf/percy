#!/bin/bash

cat << EOF > /home/ec2-user/.bashrc
#!/bin/bash
# Pretty much everything requires root so su immediately
alias x='exit'
sudo -s
EOF

cat << EOF > /root/.bashrc
#!/bin/bash
# root now so do stuff
alias x='exit'

# activate virtualenv
. /var/app/venv/staging-LQM1lest/bin/activate

# set environment variable
`cat /opt/elasticbeanstalk/deployment/env | awk '{print "export",$1}'`

# change to app directory
cd /var/app/current

clear
echo $COBALT_HOSTNAME
cat /cobalt-media/admin/env.txt
EOF
