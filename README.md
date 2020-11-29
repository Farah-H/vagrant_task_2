# Provisioning Lab

## Timings

60 - 90 Minutes

## Summary

The developers have indicated that they'll need a mongodb database soon. We need to create a provisioning script that will create this server.

Research the method for installing and configuring a MongoDB server on your server.

Write the steps in to the provisioning script.

```bash
#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10</span>
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get install -y mongodb-org=3.4 mongodb-org-server=3.4 mongodb-org-shell=3.4 mongodb-org-mongos=3.4 mongodb-org-tools=3.4
sudo systemctl status mongodb
```

Start the machine and run the tests as follows:

```bash
cd tests
rake spec
```

## Hints

To get MongoDB to listen on 0.0.0.0 is a very minor change to the mongodb.conf file.

Research how this is done. But consider how you can automate the editing of this file with your provisioning script.

> HINT: You cannot edit a file with a provisioning script so you'll have to come up with another solution.


## Acceptance Criteria

* Uses vagrant file
* Create VM and Mongod is working
* MongoDB 3.2.20 is isntalled

## Extra time tomorrow -- Try to research and see if you can do it!
* MongoDB to listen on 0.0.0.0 on port 27017
* Work with command "vagrant up"
* All tests passing

* Documentation exists as README.md file
* Documentation includes: Intro (purpose of repo), Pre Requisits  and Intructions

* repo exists on github



