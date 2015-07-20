class apache {
	package { "apache2":
		ensure => installed
	}
	service { "apache2":
		ensure => running,
		enable => true,
		require => [Package["apache2"],File["/etc/apache2/apache2.conf"]]
	}
	file { "/etc/apache2/apache2.conf":
		source => "/etc/puppet/modules/apache/files/apache2.conf",
		mode => 644,
		owner => root,
		group => root,
		require => Package["apache2"]
	}
}
