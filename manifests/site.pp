#Lei Li
node ip-10-0-5-113{
	include sshd
	include postfix
	include apache
	include leili_html
}
#Heqian Li
node ip-10-0-5-217{

	include sshd
	include postfix
	include apache
	include heqianli_html
}
#Tianhao Qian
node ip-10-0-5-119{
        include sshd
	include postfix
	include apache
	include tianhaoqian_html
	include php5
	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}
	ssh_authorized_key { "stevev-keypair":
		user => "ubuntu",
		type => "ssh-rsa",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCrFq80b0ptexNiI6KP4hxww5d5RFm8djIpsdJqRZDyoyD5vaf7d30bTLef8su6stHuBBjKccMcUjNyu4BliJBXIy7bKVDllVB5oeLFizDahQcgqjYfzyqj16uEa7NLBW5/3ljLpPX8XEI7YFM/hg65JFgpQIAiBi2N6bGj9mQrh/51SpCO6FruQH8KVjDl/CLgbnFq9cDwRDAo4tvPO1b0MRVrvM8BbZbBUHqV/093jVXkwY+BxsU6cgOnHrSmoTnH4MqMXUI/ok31JORVbWW5NAz28Ag7V/NbDvRBIYicJOd9aqEST/L812+tmnE8iQzn3bZvv7v0E7FHneCS5Qpz",
	}
}
