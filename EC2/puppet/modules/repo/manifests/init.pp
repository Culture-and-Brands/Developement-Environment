class repo {


        vcsrepo { '/var/www/html/devops':
                ensure   => latest,
                provider => git,
                source   => 'https://github.com/CruzanCaramele/Puppet_Devops_Deployment.git',
                revision => 'master',

        }


}
