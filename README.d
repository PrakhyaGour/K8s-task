Here, I am creating a mongodb pod with persistent volume attached to it as a hostpath of the node.
I have created the PV using hostpath.Mongo pod has nodeselector field so that it will launch the pod in that node only so that pv that uses the hostpath can be used.
I have then created PV claim which in further used in mongo configuration
DB username and passwords are passed through k8 secrets and the same are used by node app to connect to the mongodb.Then I ahve created the service on the top of the pod so that it can be used by node app to refer for db connection.Node app has been created using the images provided and the env variable to passed to connect to mongo db.
Service and ingress has been created to have the external access to the node app.
