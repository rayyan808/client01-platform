Containerized Package

RUN (w/o Kubernetes) ====> docker-compose up 


CONFIG DETAILS
MongoDB => Port 27017:27017
Node.JS => Port: 80:8000

RUN (Kubernetes) ==> kubectl apply -f kubemanifest.yaml 

Changes to Docker Compose must be appended to the Kubernetes config.

Append ==> kompose convert -f docker-compose.yml -o kubemanifest.yaml
