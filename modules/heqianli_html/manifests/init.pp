class heqianli_html {
	file { "/var/www/html/index.html":
		mode => 644,
		owner => "root",
		group => "root",
		source => "/etc/puppet/modules/heqianli_html/files/index.html"
	}
}