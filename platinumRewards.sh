dotnet restore
dotnet publish --framework netcoreapp3.0 --configuration Debug --output dist


#### TEST
#Run Docker as Admin and Run Git Bash as Admin
docker build . -t doug/hydeparktest:022720v1.5 -f Dockerfile
docker tag doug/hydeparktest:022720v1.5 buzzardbait/hydeparktest:022720v1.5
docker login -u buzzardbait -p dockerhub1qaz@wsx
docker push buzzardbait/hydeparktest:022720v1.5

#Move image into container (on hosted server side)
docker login -u buzzardbait -p dockerhub1qaz@wsx
docker pull buzzardbait/hydeparktest:022720v1.5
docker create -p 6060:5000 --name rewardsTest buzzardbait/hydepark:022720v1.5
docker start rewardsTest


##### PROD
docker build . -t doug/hydepark:022720v1.5 -f Dockerfile
docker tag doug/hydepark:022720v1.5 buzzardbait/hydepark:022720v1.5
docker login -u buzzardbait -p dockerhub1qaz@wsx
docker push buzzardbait/hydepark:022720v1.5


docker login -u buzzardbait -p dockerhub1qaz@wsx
docker pull buzzardbait/hydepark:022720v1.5
docker create -p 7070:5000 --name rewardsProd buzzardbait/hydepark:022720v1.5
docker start rewardsProd