class postfix{
	package { "postfix": 
		ensure => installed
	}
	service { "postfix":
		ensure => running,
		enable => true,
		require =>[ Package["postfix"],File["/etc/postfix/main.cf"]]
	}
	file { "/etc/postfix/main.cf":
		source => "/etc/puppet/modules/postfix/files/main.cf",
		mode => 644,
		owner => root,
		group => root,
		require => Package["postfix"],
	}
}
