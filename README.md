# nasqar_singularity

- Below intructions shows how to build singularity.

```
git clone https://github.com/nyuad-corebio/nasqar_singularity
cd nasqar_singularity
sh download_data.sh
```

- Here is the definition file -> Nasqar.def 

Build the singularity sandbox.
```
sudo singularity build --sandbox nasqar_sandbox Nasqar.def
```

Verify the sandbox running manually.
```
sudo singularity shell --writable nasqar_sandbox
```

Inside the singularity shell, execute below.
```
exec shiny-server
```

That's it, now you can access the service via http://<IP-address/Hostname>:3232 .

Note:- You can change the port number by modifying /etc/shiny-server/shiny-server.conf

To convert this sandbox as a sif file.
```
sudo singularity build nasqar.sif nasqar_sandbox
```

To run, you need to create two directories.  
```
mkdir logs lib
```

Modify the username in the shiny-server.conf file located in your current working directory. 
Important Note:- This way you can map the singularity instance running with your user profile.  
```
vim shiny-server.conf
run_as <specify-your-username>;
```


To initiate the Nasqar, excecute below.
```
singularity run --bind ./shiny-server.conf:/etc/shiny-server/shiny-server.conf  --bind ./logs:/var/log/shiny-server/  --bind ./lib:/var/lib/shiny-server/ nasqar.sif
```

