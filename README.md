# docker_garminexport
Dockerfile for petergardfjall/garminexport

# First use
0. install docker https://docs.docker.com/install/
1. git clone https://github.com/90oak/docker_garminexport
2. cd docker_garminexport
3. echo "python ./garminexport/garminbackup.py --password _myGarminPassword_ --backup-dir ./data/ -f fit _myGarminEmailAddress_" > cmd.sh
4. docker build -t docker_garminexport .
5. docker run -v /local/path/to/GarminData/:/data/:rw docker_garminexport

# Refresh downloaded activities

docker run -v /local/path/to/GarminData/:/data/:rw docker_garminexport

# If Garmin download fails, clone latest code from petergardfjall/garminexport

0. docker build --no-cache -t docker_garminexport .
1. docker run -v /local/path/to/GarminData/:/data/:rw docker_garminexport
