# spring-boot-k8s

## docker-compose 로 단일 api 실행
```shell
$ docker compose up -d

# 조회
$ curl http://localhost:8080/hello
> hello, -api%      
```
## docker-compose 로 다중 api 실행
nginx 로 reverse proxy 를 구성하여 load balancing 
```shell
$ cd docker-compose-load-balancer
$ docker compose up -d

# 조회
$ curl http://localhost/api/hello
> hello, api-1
$ curl http://localhost/api/hello
> hello, api-2
$ curl http://localhost/api/hello
> hello, api-3    
```
## k8s Deployment, LoadBalancer
쿠버네티스 디플로이먼트와 로드밸런서 서비스로 기동
```shell
$ cd k8s
$ kubectl apply -f ./api-deployment.yaml

# 조회
$ curl http://localhost:8080/hello
> hello, api-5576df565-b8rnt

$ curl http://localhost:8080/hello
> hello, api-5576df565-6rpk5

$ curl http://localhost:8080/hello
> hello, api-5576df565-jz8ph
```