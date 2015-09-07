class spark(
) inherits spark::params
{
  $mirror = 'http://www.interior-dsgn.com/apache/spark'
  $spark_version = 'spark-1.0.0'
  $spark_tar_dir = 'spark-1.0.0-bin-hadoop2'
  $spark_tar_gz  = "#{spark_tar_dir}.tgz"

  exec { 'wget spark':
    command => "wget -q ${mirror}/${spark_version}/${spark_tar_gz}",
    creates => "${base_dir_for_spark}/${spark_tar_gz}",
    cwd     => $base_dir_for_spark,
    path    => ['/usr/bin']
  } ->   

  exec { "untar ${spark_tar_gz}":
    command => "tar xfvz ${base_dir_for_spark}/${spark_tar_gz}",
    cwd     => $base_dir_for_spark,
    creates => "${base_dir_for_spark}/${spark_tar_dir}",
    path    => ["/bin"]
  } ->

  file { $spark_home:
    ensure => 'link',
    target => "${base_dir_for_spark}/${spark_tar_dir}",
  } ->

  file { "${spark_home}/conf/spark-env.sh":
    content => template('spark/spark-env.sh.erb')
  }

  file { [$spark_log_dir,$spark_run_dir]:
     ensure => 'directory',
     owner  => $spark_user
  }

}
