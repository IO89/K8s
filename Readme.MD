# App for practicing Kubernetes
    Shows Fibonacci sequence for index and able to remember results. 
    App is made with React and NodeJS, there is PostgresSQl for storing data and Redis cache server.
    App is deployed by TravisCI on Google cloud platform with help of Kubernetes.
## How to run App
    When master branch is updated Travis CI should run tests and deploy updated version to Kubernetes cluster.
    It is possible to run locally with Kubectl.
  