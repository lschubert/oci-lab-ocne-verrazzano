# oci-lab-ocne-verrazzano
Automation to set up OCNE and Verrazzano in Oracle provided free lab environment (https://luna.oracle.com/lab/8a6bf419-7ef9-4be1-a679-680b03191011)

t the time this code was created the lab timeslot is limited to 2 hours. This automation code is inteded to execute the lab steps to save some time.

This automation is best executed within the Luna Lab environment using Visual Studio Code.

# Pre-Requisites on execution machine
- git client, ansible installed
    - verify with ```git version``` and ```ansible --version```

# Instructions to setup

1. Launch Lab

    1.1. Wait until the lab ressources are provisioned. Setting up the underlying OCNE cluster as pre-requisite is part of the free lab provisioning process and takes approximately 30 minutes to finish after launch. The Resources Tab will show a checkamr and further details about provisioned resources once ready. 

2. Checkout this git repo in Luna Lab Visual Studio Code

    2.1 Open Visual Studio Code. Select Topmost left Icon ("Explorer") and press "Clone Repository" button.
    
    Provide github URL: https://github.com/lschubert/oci-lab-ocne-metallb.git
    
    Select "Open Folder" and choose the local path of cloned repo

3. In Lab Environement Visual Studio Code

    3.1. Select "Terminal > New Terminal"

    3.2.  In Temrinal Window - gather ip addresses from lab enviroment
    ```
    ./get_ips.sh
    ocne_node01: 130.61.182.225
    ``` 
    
    3.3. Open file ```vars/main.yml``` in Visual Studio Code and modify the values for ```ocne_node01``` to match the corresponsing IP from step 3.2

    You can copy the output from ```./get_ips.sh``` and replace the corresponding section at the beginning of ```vars/main.yml```. 

    3.4. Make sure "oci_executor" variable in ```vars/main.yml``` is set to true 

    Save the file.

    3.5. Start setup

    ```
    ./setup.sh 
    ```