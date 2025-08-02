#!/bin/bash

if [ -z "$OMARCHY_BARE" ]; then
  source ~/.local/share/omarchy/default/bash/functions
  web2app "WhatsApp" https://web.whatsapp.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
  web2app "YouTube" https://youtube.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/youtube.png
fi
