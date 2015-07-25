class tianhaoqian_html {
	file { "/var/www/html/index.html":
		recurse => true,
		mode => 644,
		owner => "root",
		group => "root",
		source => "/etc/puppet/modules/tianhaoqian_html/files/index.html"
	}
}
