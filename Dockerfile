from	ubuntu:12.04

maintainer Sébastien Le Corre chablecorre@gmail.com
# Configure apt
run	echo 'deb http://us.archive.ubuntu.com/ubuntu/ precise universe' >> /etc/apt/sources.list
run	apt-get -y update


# Install slapd
run	LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y slapd

# Default configuration: can be overridden at the docker command line
env	LDAP_ROOTPASS toor
env	LDAP_ORGANISATION Acme Widgets Inc.
env	LDAP_DOMAIN

# To store the data outside the container, mount /var/lib/ldap as a data volume

# vim:ts=8:noet:
