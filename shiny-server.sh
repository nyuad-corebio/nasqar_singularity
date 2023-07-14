#!/bin/bash
#chmod a+x /home/shiny/miniconda3/etc/profile.d/conda.sh
#source /home/shiny/miniconda3/etc/profile.d/conda.sh
#export PATH="/home/shiny/miniconda3/bin:$PATH"
#/home/shiny/miniconda3/bin/conda activate nasqar_env
exec shiny-server > /dev/null 2>&1
#exec shiny-server >> /var/log/nasqar/shiny-server.log 2>&1

