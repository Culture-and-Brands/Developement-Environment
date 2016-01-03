# Class: database
#
#
class database {
	# resources
    class { 'postgresql::globals':
        version             => '9.3',
        manage_package_repo => true,
        encoding            => 'UTF8',
        locale              => 'en_US.UTF-8',
    }->
    class { 'postgresql::server':
		ip_mask_allow_all_users    => '0.0.0.0/0',
		listen_addresses           => '*',
		postgres_password          => 'TPSrep0rt!',
    }

    # install the postgresql contrib package
    class { 'postgresql::server::contrib':
        package_ensure => 'present',
    }

    # create database with user and default permissions
    postgresql::server::db { 'my_awesome_db':
        user     => 'my_db_user',
        password => 'puppetRocks',
    }

}