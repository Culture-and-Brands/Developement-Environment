# Class: apache::www
#
#
class apache::www {
	# resources
    vcsrepo { '/var/www/devops':
            ensure   => latest,
            provider => git,
            source   => 'https://github.com/CruzanCaramele/Puppet_Devops_Deployment.git',
            revision => 'master',
            require  => [Package['apache2'], File['/var/www']],
            notify   => Service['apache2'],

    }
}