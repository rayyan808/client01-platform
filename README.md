Containerized Package

========= NO KUBERNETES ==========

RUN ====> docker-compose up 

========= KUBERNETES =========

RUN ====> kubectl apply -f kubemanifest.yaml 

>>> Changes to Docker Compose must be appended to the Kubernetes config. <<<

APPEND ====> kompose convert -f docker-compose.yml -o kubemanifest.yaml

========== CONFIG =========

CONFIG DETAILS
MongoDB => Port 27017:27017
Node.JS => Port: 80:8000
