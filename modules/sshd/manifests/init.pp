class sshd {
	package {
		"openssh-server": ensure => installed;
	}

	file {"/etc/ssh/sshd_config":
		mode => 777,
		owner => "root",
		group => "root",
		source =>"/etc/puppet/files/sshd_config",
		require => Package["openssh-server"],

	}

	service { "ssh":
		enable	=> true,
		ensure	=> running,
		require	=>	[ Package["openssh-server"],
				  File["/etc/ssh/sshd_config"], ],
	}

	ssh_authorized_key{"tianhao-keypair":
		user => "ubuntu",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCsyC0b0IgYACF99yz8uW53AEh9BrvJPXCWThWEw9AahfC/49eZT36W5Guh0C/64OpsRy/pe8suv7Cmm6VIIh4hfAOHqI3w23kE0cqrsZpEE7AlFu316cmXLOxmM7ECojHfR6ocdv5sHR4NMBuEOisn+OxBDClZdSP04Ro82cL06qZO3yYz4GwXiPqtHDg6RbufeWJ8icnTjni8W2PaJxYqectf3hBthif/L2+9WGZVi7xmj/AjchLddfh3CwaKALvHvv+mpWBtw4PhjLCrxjjh53pox9+BxYVJFHlVGz6r8E+/wGv1Kog14EONyD0qZWXTtoTcv0ZIDlICAg7V27Dz",
		
	}

	ssh_authorized_key{"LeiLi@LEILI-HP":
		user => "ubuntu",
		key => "AAAAB3NzaC1yc2EAAAABIwAAAQEAtHsKuvVWDo91Z5W60QNEBtzqYv0jQDCtaqH/cqzEN/MowI4/XxN2hwZ8SW1mFBD70tKsGr9CW0rFzSlC6ZcCskPiDHE1tWe4MGlHcYfqqKNO5ApscIkTJvW0N3ZsKPNGNrU7K4soZMZ3UUS62CQ5DR2PaFzNFO+hgsLr7adlosO2+a1N/T9jckFf6OIC8ICS5LnIOs6dBaOmOHA4LldoQOz59xSDkTnKC0mGruK7VeyOcHziQcwGzbJt1At9u317C26orCtgMQo5iIN2kv8pN7wPRP4x2Z1AuOM1RWtkoKWYnNbNTL23IJN4peLIQZTDI/qJ9KcL6pQsCQ9FvRDF+Q==",
	}

	ssh_authorized_key{"liheqian0408@128-223-223-127-wireless.uoregon.edu":
		user => "ubuntu",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDMUeWQXdFYE3f5ukpKBUmUIqfXR2aXK4yE1V7jmvQGYqY8hzKp7RzRJzr+yRh/XHyHJV7Sz3ibxOdrRyZ1dJ3XX95UvmXmNVNThu66oNHJPxonfGOJQm3t86gTXqKmjn9xMsajtAi/jcUJdO1Yon/S1zDKDVfc1KpJSrxQ52Kd+K5SWtC0aaLc9tcVtM4vQvjdFRoHW7zdWMT0zwdKBUP9d4DeDKSghtRyWq255/lLPNq2C5LdrZJZ9tz+YlP27gX4aC4OKa+IF+xKALOaVfwMkxYLGjuuoTI0nDl754Gek3PZHNKmj21dLVK8Wr8mTJ6n40E/rIbYd3s/L7dP+LD5",
	}

	ssh_authorized_key{"leili10086@gmail.com":
		user => "ubuntu",
		key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC94FVRKPLNZAgOcNwqCp7IukYzT4rspOC/sw+/V7AkRH0RJI9F1jKMm+xZH7gWz50YV2VdMj7nPSbohAYLxFrzCdErqTMsCPHroBs2Mwi5P4B5u1mjm8blbnEZaQNIoZTuY1yoh6uwbnIbzIB9810i8+BWbndLNNy/opF+ajWx6g++IKivV6vFwe55ydcrgM0hie1qlBDIz3kkRwThZZjjRF50cIZXsOxxBupl0HLruXrB8ElnoP8UsMAzOkIvRkrln9GRoB+UxBGRaRfVTzBEeq0YkcFM96VvPTDvuJokea5dYa00NrBTkyBitBSS4S0YjNjXEhwDeRwxm6eW91Mx",
	}	
