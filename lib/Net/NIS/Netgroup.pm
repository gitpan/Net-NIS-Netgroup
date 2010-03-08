# $Id: Netgroup.pm,v 1.2 2009/10/20 07:34:57 bastian Exp $
# Copyright (c) 2007 Collax GmbH
package Net::NIS::Netgroup;

use 5.006001;
use strict;

require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);
our @EXPORT = qw ( getdomainname setdomainname innetgr );

our $VERSION = "1.0.1";

=head1 NAME

Net::NIS::Netgroup - Interface to glibc "getdomainname" function and its family

=head1 VERSION

Version 1.0

=cut

bootstrap Net::NIS::Netgroup;

=head1 SYNOPSIS

 use Net::NIS::Netgroup;

 printf("Domain name is %s\n", getdomainname());
 setdomainname("newdom.com");

 printf("Is user in group? %d\n", innetgr('netgroup', 'host', 'user', 'domain'));

=head1 DESCRIPTION

Detailed information about the three supplied functions getgroupname,
setdomainname, and innetgr can be found on the man pages of the respective
glibc functions.

innetgr will happily take "undef" for one or more of its arguments, meaning
the same as a NULL pointer in the C equivalent.

All three functions are exported per default.

=cut

1;
