#Lei Li
node ip-10-0-5-113{
	include sshd
	include postfix
	include apache
}
#Heqian Li
node ip-10-0-5-217{

	include sshd
	include postfix
	include apache
}
#Tianhao Qian
node ip-10-0-5-179{
        include sshd
	include postfix
	include apache
	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}
}
