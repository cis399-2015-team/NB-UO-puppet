class postfix{
	package { "postfix": 
		ensure => installed
	}
	service { "postfix":
		ensure => true,
		enable => true,
		require => Package["apache2"],
	}
}
