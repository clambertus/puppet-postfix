# Class: postfix::params
#
class postfix::params {

  $osfamily = $facts['os']['family']

  case $osfamily {
    'Debian': {
      $command_directory = '/usr/sbin'
      $config_directory = '/etc/postfix'
      $daemon_directory = '/usr/lib/postfix'
      $shlib_directory = '/usr/lib/postfix'
      $data_directory = '/var/lib/postfix'
      $manpage_directory = '/usr/share/man'
      $readme_directory = '/usr/share/doc/postfix'
      $sample_directory = '/usr/share/doc/postfix/examples'
      $service_restart = '/usr/sbin/service postfix reload'
      $dovecot_directory = '/usr/lib/dovecot'
      $postfix_package = 'postfix'
      $postfix_mysql_package = 'postfix-mysql'
      $postfix_package_ensure = installed
      $postgrey_package = 'postgrey'
      $spamassassin_package = 'spamassassin'
      $spampd_package = 'spampd'
      $spampd_config = '/etc/default/spampd'
      $spampd_template = 'postfix/default-spampd.erb'
      $root_group = 'root'
      $setgid_group = 'postdrop'
      $mailq_path = '/usr/bin/mailq.postfix'
      $newaliases_path = '/usr/bin/newaliases.postfix'
      $sendmail_path = '/usr/sbin/sendmail.postfix'
      $postmap = '/usr/sbin/postmap'
    }
    'FreeBSD': {
      $command_directory = '/usr/local/sbin'
      $config_directory = '/usr/local/etc/postfix'
      $daemon_directory = '/usr/local/libexec/postfix'
      $data_directory = '/var/db/postfix'
      $manpage_directory = '/usr/local/man'
      $readme_directory = '/usr/local/share/doc/postfix'
      $sample_directory = '/usr/local/etc/postfix'
      $service_restart = '/usr/sbin/service postfix reload'
      $dovecot_directory = '/usr/local/libexec/dovecot'
      $postfix_package = 'mail/postfix'
      $postfix_mysql_package = 'mail/postfix'
      $postfix_package_ensure = installed
      $postgrey_package = 'mail/postgrey'
      $spamassassin_package = 'mail/spamassassin'
      $spampd_package = 'mail/spampd'
      $spampd_config = '/etc/sysconfig/spampd'
      $spampd_template = 'postfix/sysconfig-spampd.erb'
      $root_group = 'wheel'
      $setgid_group = 'maildrop'
      $mailq_path = '/usr/local/bin/mailq'
      $newaliases_path = '/usr/local/bin/newaliases'
      $sendmail_path = '/usr/local/sbin/sendmail'
      $postmap = '/usr/local/sbin/postmap'
    }
    default: {
      fail("Unsupported OS family ${osfamily}")
    }
  }
}

