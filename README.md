Spark Cluster Docker image and Rancher catalog entry
---
I'm trying to add to the Rancher Community Catalog a Spark Cluster entry
to easily experiment with Spark on a Rancher Cluster.

TODO:
* take a param `slave` or `master` and create the correct container
  * master should have a fixed name like "spark-master" and this name shall be used by slaves to connect to it
* add "conf" image
* add catalog entry
* manage Rancher stack scalability in some way
