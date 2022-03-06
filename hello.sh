cat > /etc/cloud/cloud.cfg.d/90_dpkg.cfg << EOF
 datasource_list: [ Azure ]
EOF

cat > /etc/cloud/cloud.cfg.d/90-azure.cfg << EOF
system_info:
   package_mirrors:
     - arches: [i386, amd64]
       failsafe:
         primary: http://archive.ubuntu.com/ubuntu
         security: http://security.ubuntu.com/ubuntu
       search:
         primary:
           - http://azure.archive.ubuntu.com/ubuntu/
         security: []
     - arches: [armhf, armel, default]
       failsafe:
         primary: http://ports.ubuntu.com/ubuntu-ports
         security: http://ports.ubuntu.com/ubuntu-ports
EOF

cat > /etc/cloud/cloud.cfg.d/10-azure-kvp.cfg << EOF
reporting:
  logging:
    type: log
  telemetry:
    type: hyperv
EOF