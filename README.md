-> Infrastructure is created in AWS.

-> A sample maven project is taken from ( https://github.com/ravdy/hello-world.git) is used to build using jenkins. Maven local repository is changed to store 
the artefacts to /mnt/artefact/. Jenkins log attached.

-> Ansible playbook is uploaded which copies the war to tomcat host webapps directory and restarts tomcat.

.......



