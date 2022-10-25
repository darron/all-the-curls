## all-the-curls

Need have some endpoints you need to test and need curl?

Are some of those endpoints GRPC and you're tired of tricking curl into talking to it?

`all-the-curls` is here for you:

https://hub.docker.com/repository/docker/darron/all-the-curls

Common uses are:

```bash
docker run -i --tty darron/all-the-curls sh
```

And on Kubernetes:

```bash
kubectl run curling-rink --image=darron/all-the-curls -i --tty --rm -- sh
```