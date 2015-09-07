class spark::params()
{
  $hadoop_conf_dir = '/etc/hadoop/conf' #TODO: this should come from bigtop base

  $base_dir_for_spark = '/usr/lib'
  $spark_home = "${base_dir_for_spark}/spark"
  $spark_log_dir = '/var/log/spark'
  $spark_run_dir = '/var/run/spark'
  $spark_user = 'hdfs'
}