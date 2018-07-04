docker build . -t cmj-helloworld
docker images | grep hello
kubectl create namespace dev

docker tag cmj-helloworld mycluster.icp:8500/dev/cmj-helloworld:1.0
docker login mycluster.icp:8500
docker push mycluster.icp:8500/dev/mtl-helloworld:1.0
helm create myapp
# In values.yaml include:
# repository: mycluster.icp:8500/dev/mtl-helloworld
#  tag: "1.0"
helm package ./myapp
# Add Repository demo-charts
# https://ibmcloudprivate2.github.io/mycharts
helm repo index charts --url helm add https://ibmcloudprivate2.github.io/mycharts
# add demo charts to ICP catalog then SYNC REPOSITORIES
helm add https://ibmcloudprivate2.github.io/mycharts
# helm install (GUI or command line)


