docker build -t io89/multi-client:latest -t io89/multi-client:$SHA -f ./complex/client/Dockerfile ./complex/client/
docker build -t io89/multi-server:latest -t io89/multi-server:$SHA -f ./complex/server/Dockerfile ./complex/server/
docker build -t io89/multi-worker:latest -t io89/multi-worker:$SHA -f ./complex/worker/Dockerfile ./complex/worker/

docker push io89/multi-client:latest
docker push io89/multi-server:latest
docker push io89/multi-worker:latest

docker push io89/multi-client:$SHA
docker push io89/multi-server:$SHA
docker push io89/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=io89/multi-server:$SHA
kubectl set image deployments/client-deployment client=io89/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=io89/multi-worker:$SHA