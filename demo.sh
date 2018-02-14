ssh k01 '\
   while true; do \
      curl --connect-timeout 1 -s 10.103.1.152  && echo || echo "Failed to access frontend";
      sleep 1; \
   done \
   '
