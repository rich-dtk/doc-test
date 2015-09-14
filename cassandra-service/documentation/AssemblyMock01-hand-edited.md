# dtk2244

This cassandra module is a basic Cassandra service.  It manages both Apache Cassandra as well as DSE

## Module Dependencies

* akka/akka_cluster
* bigtop/bigtop_base
* bigtop/cassandra
* dtk/host
* gridx/gridx_mysql
* gridx/gridx_cassandra
* gridx/gridx_app
* gridx/hiera_bigtop
* gridx/repo_manager
* gridx/spark
* gridx/globals
* puppetlabs/mysql

## Assemblies

##build-server

###Actions

|      | Description | REST Enpoint |
| ---- | ----        | ----         |
|create| create a new build-server | api/v1/srvc/[service name]/create |

###Nodes

####build-server
#####Attributes
| Name | Type |
| ---- | ------ |

#####Components
**repo_manager**
**Links**
**host::dtk_hostname**
**Links**

##cluster-singledb-node

###Actions

|      | Description | REST Enpoint |
| ---- | ----        | ----         |
|create-databases|Akka/spark cluster, single db node for cassandra, and mysql|api/v1/srvc/[service name]/create-databases|
|create-cluster|Akka/spark cluster, single db node for cassandra, and mysql|api/v1/srvc/[service name]/create-cluster|
|start-gridx|Akka/spark cluster, single db node for cassandra, and mysql|api/v1/srvc/[service name]/start-gridx|
|gridx-status|Akka/spark cluster, single db node for cassandra, and mysql|api/v1/srvc/[service name]/gridx-status|
|create|Akka/spark cluster, single db node for cassandra, and mysql|api/v1/srvc/[service name]/create|
    
###Nodes

####databases
#####Attributes
| Name | Type |
| ---- | ------ |

#####Components
**host::dtk_hostname**
**Links**
**cassandra::seed**
**Links**
**cassandra**
**Links**
**mysql::server**
**Links**
**gridx_mysql**
**Links**
**gridx_cassandra**
**Links**
    
####master
#####Attributes
| Name | Type |
| ---- | ------ |

#####Components
**hiera_bigtop**
**Links**
**bigtop_base**
**Links**
**spark::common**
**Links**
**spark::master**
**Links**
**spark::client**
**Links**
**gridx_app::akka_seed**
**Links**
**gridx_app::common**
**Links**
**gridx_app::cluster_coordinator**
**Links**
**gridx_app::master**
**Links**
**gridx_app::run_master**
**Links**

####dynamic-workers
#####Attributes
| Name | Type |
| ---- | ------ |

#####Components
**hiera_bigtop**
**Links**
**bigtop_base**
**Links**
**spark::common**
**Links**
**spark::worker**
**Links**
**gridx_app::common**
**Links**
**gridx_app::akka_actor[dynamic]**
**Links**
**gridx_app::run_akka_actor[dynamic]**
**Links**

####constant-workers
#####Attributes
| Name | Type |
| ---- | ------ |

#####Components
**hiera_bigtop**
**Links**
**bigtop_base**
**Links**
**spark::common**
**Links**
**spark::worker**
**Links**
**gridx_app::common**
**Links**
**gridx_app::akka_actor[constant]**
**Links**
**gridx_app::run_akka_actor[constant]**
**Links**