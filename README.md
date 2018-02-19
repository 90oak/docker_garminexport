# docker_garminexport
Dockerfile for petergardfjall/garminexport

# Usage
0. install docker https://docs.docker.com/install/
1. git clone https://github.com/90oak/docker_garminexport
2. cd docker_garminexport
3. echo "python ./garminexport/garminbackup.py --password _myGarminPassword_ --backup-dir ./data/ -f fit _myGarminEmailAddress_" > cmd.sh
4. docker build -t docker_garminexport .
5. docker run -v /local/path/to/GarminData:/data/:rw docker_garminexport
