from	ubuntu:12.04

maintainer Sébastien Le Corre chablecorre@gmail.com
# Configure apt
run	echo 'deb http://us.archive.ubuntu.com/ubuntu/ precise universe' >> /etc/apt/sources.list
run	apt-get -y update

# Default configuration: can be overridden at the docker command line
env	LDAP_ROOTPASS toor
env	LDAP_ORGANISATION Acme Widgets Inc.
env	LDAP_DOMAIN

# vim:ts=8:noet:
