mkdir -p broker/config
mkdir -p broker/data 
mkdir -p server/configs 
mkdir -p server/configs 
mkdir -p controller/configs 
mkdir -p controller/data 
mkdir -p kafka/data 
mkdir -p zookeeper/data 
mkdir -p zookeeper/datalog 
mkdir -p zookeeper/log

#Run only if it is linux or unix platform ( don't run on Mac/Darwin)
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   chown -R $USER:docker *
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   chown -R $USER:docker *
fi


docker-compose --project-name pinot-demo up -d
