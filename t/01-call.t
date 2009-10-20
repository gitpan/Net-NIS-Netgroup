#!/usr/bin/perl -w

use Test::More tests => 6;

use Net::NIS::Netgroup;

my $dom;
ok ( $dom = getdomainname(), "Successfully fetched domainname " . $dom );

my $newdom = "foobar";

ok ( setdomainname($newdom), "Successfully set new domainname " . $newdom);

is ( getdomainname(), $newdom, "Second get is equal to what I set ($newdom)" );

ok ( setdomainname($dom), "Successfully set original domainname " . $dom);


#my $netgroup = undef;
my $netgroup = 'Users.users';
my $host = undef;
my $user = undef;
my $domain = undef;

ok ( innetgr($netgroup, $host, $user, $domain), "undef host/user/domain is \"innetgr\" \"$netgroup\"" );
$netgroup = 'doesnotexist'; $host = 'nowherehost.local'; $user = 'barf'; $domain = 'surely.not.here.local';
ok ( !innetgr($netgroup, $host, $user, $domain), "invalid netgroup/host/user/domain are not \"innetgr\"" );
