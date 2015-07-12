class sshd {
	package {
		"openssh-server": ensure => installed;
	}

	service { "ssh":
		enable	=> true,
		ensure	=> running,
		require	=>	[ Package["openssh-server"],
				  File["/etc/ssh/sshd_config"], ],
	}

}
