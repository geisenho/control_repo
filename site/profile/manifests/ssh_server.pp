class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4OKYrpU3cgvHHOCC01uH1P8PoGA0pwZhE2pKupZgx1Dz9TnGoVkYOm+BlPLQBnP2qC4BL26Ui0mJVya538MAJprIst/9LRPCip2VKihht4pfkXreyQe+nJT/lcog6MNsDHS9/vgVSlandEXFfmx1TVWHHvhjQF2D0Yg6Y4+uopr3Ow3XLj2rk9cjqoMPvDEHDsZrbJmII3myy4uoi478oWVlVgBWBXlhV+ibUEQZ+16TQDIkXxhzH9TJlE6jmHxXpHiNeJosVTxr607cfsS2KiI3+XxqzDkrb3rqC9d6Ow46xw5nd7ZqKCaUky+BzrUzNGlVDcuKEs2Moi978FvBh',
	}  
}
