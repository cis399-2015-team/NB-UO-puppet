#Lei Li
node ip-10-0-5-113{
}
#Heqian Li
node ip-10-0-5-217{
}
#Tianhao Qian
node ip-10-0-5-179{
        include sshd
	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}
}
