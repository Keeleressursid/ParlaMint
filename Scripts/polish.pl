#!/usr/bin/perl
# Finalise ParlaMint file
use warnings;
use utf8;
undef $/;
$txt = <>;
$txt =~ s|([^>]) *\n\s*|$1 |g; #join lines
$txt =~ s|(<p [^>]*>)\s+|$1|g;
$txt =~ s|(<p>)\s+|$1|g;
#$txt =~ s|\n\s*<desc>|<desc>|g;
#$txt =~ s|</desc>\n\s*|</desc>|g;
$txt =~ s|\n\s*<term|<term|g;
$txt =~ s|</term>\n\s*|</term>|g;
$txt =~ s|</gap> (\S)|</gap>$1|g;
$txt =~ s|\n\s*<w |\n<w |g;
$txt =~ s|\n\s*<pc |\n<pc |g;
$txt =~ s|\n\s*<s |\n<s |g;
$txt =~ s|\n\s*<linkGrp |\n<linkGrp |g;
$txt =~ s|\n\s*<link |\n<link |g;
print $txt;
print "\n";
