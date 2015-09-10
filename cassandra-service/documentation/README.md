## Service Module - dtk2244

This is some content to go at the top of this example, lets put some content here...

## Assembly Templates
| Name | Description |
| ---- | ------ |
| build-server | build-server
| cluster-singledb-node | Akka/spark cluster, single db node for cassandra, and mysql

## Workflows

### build-server
* __create_action

### cluster-singledb-node
* create-databases
* create-cluster
* start-gridx
* gridx-status
* __create_action


## Component Module References

* gridx:gridx_mysql
* gridx:hiera_bigtop
* dtk:host
* puppetlabs:mysql
* gridx:repo_manager
* gridx:spark
* gridx:gridx_cassandra
* akka:akka_cluster
* bigtop:bigtop_base
* bigtop:cassandra
* gridx:globals
* gridx:gridx_app
