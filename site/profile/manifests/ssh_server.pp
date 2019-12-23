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
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFeI0HCqDC79Q38hmcefw6sXigQsDENTKmEZsY6zFt+d+FkLOr3ct3tuJ9OaIK9fYmFTCRhRNqXOGoaix1owlQeUZr+tZSDD8uU62qiQtgp5dMuXnKjNSisvFjRwKne46zQDqdcsmWGn3F3MgmbURIpwiyTOpIWLulAvS2/swgb4OvOHSSCKDha1eCAvOjuNCkcXugflnokw4/wv3pqN0nIM0Oeqjh2W+h/NBrhrt4RHuKDHqLf1VHqkdvtRiqkQcoX3Gh+I8fB4KrAALGZYPzm+60AAbdR/A8N+wDYbhHihXkw1+6riYNmP084K1Udd9bYRDJEZAHiKTCmliQ58nd',
        }
}
