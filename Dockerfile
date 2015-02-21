FROM frenchbeard/centos-dev

MAINTAINER frenchbeard frenchbeardsec@gmail.com

ADD ldap-config/* /ldap-utils

RUN chmod -R +x /ldap-utils/ \
&& ldap-config/setup-openldap.sh

CMD ["/ldap-utils/run-openldap.sh"]
