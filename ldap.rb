http://www.tutorialspoint.com/ruby/ruby_ldap.htm
2.1.1 :001 > require 'ldap'
 => true 
2.1.1 :007 > HOST = 'ldap.site.company.com'
 => "ldap.site.company.com" 
2.1.1 :011 > PORT = 3268
 => 3268
2.1.1 :013 > conn = LDAP::Conn.new(HOST, PORT)
 => #<LDAP::Conn:0x0000000192f300 @args=["ldap.site.company.com", 3268], @sasl_quiet=false> 
2.1.1 :014 > conn.bind('cn=ldap-auth-svc,ou=ldap,ou=services,dc=site,dc=company,dc=com','Supreskrut094!!')
 => #<LDAP::Conn:0x0000000192f300 @args=["ldap.site.company.com", 3268], @sasl_quiet=false> 
2.1.1 :015 > conn.search('OU=people,DC=site,DC=company,DC=com',LDAP::LDAP_SCOPE_SUBTREE,'(objectclass=person)','mail') { |entry| p entry.dn}
<<Prints users>>
