#  You may distribute under the terms of either the GNU General Public License
#  or the Artistic License (the same terms as Perl itself)
#
#  Copyright (C) 2017 - Anthony J. Lucas - kaoyoriketsu@ansoni.com



package JSON::Print;

use strict;
use warnings;
use JSON ();

our $VERSION = '0.0';

if ($0 =~ /^-/) {
    my $encoder = JSON->new->pretty;
    my $json = $encoder->decode(do { local $/; <STDIN> });
    print "\n", $encoder->encode($json);
}

1;