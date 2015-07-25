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
node ip-10-0-5-179{
        include sshd
	include postfix
	include apache
	include tianhaoqian_html
	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}
}
