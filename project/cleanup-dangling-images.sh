
docker images -f dangling=true
docker images --quiet --filter=dangling=true | xargs docker rmi

