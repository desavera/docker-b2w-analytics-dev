# docker-b2w-analytics-dev
Dockerfile for B2W analytics team dev env configuration

the stack installed will hold the latest release to all modules except when mentioned :

- Git
- Maven
- IntelliJ
- Python utilities
- JAVA 8

in order to generate a docker image do (from the directory you downloaded this git rep) :

# sudo docker build -t b2wdev-analytics .
