#!/usr/bin/perl

use Socket;
use Term::ANSIColor;
use WWW::Mechanize;
use JSON;
  

print color 'bright_white';
 
print q{
           
};

print color 'reset';
@iphost=$ARGV[0] || die "  \n \n";
my @ip = inet_ntoa(scalar gethostbyname("@iphost")or die "Invalid! \n");
my @hn = scalar gethostbyaddr(inet_aton(@ip),AF_INET);
 
my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/@ip"); 
    my $json = $GET->content();
 
 
my $info = decode_json($json);

print color 'bright_green';
 
print "  TARGET =", $info->{'query'}, "\n";
print "  [ORG]               ", $info->{'as'}, "\n";
print "  [ISP]               ", $info->{'isp'}, "\n";
print "  [Country]           ", $info->{'country'}," - ", $info->{'countryCode'}, "\n";
print "  [City]              ", $info->{'city'}, "\n";
print "  [Region]            ", $info->{'regionName'}, " - " , $info->{'region'}, "\n";
print "  [Geo Lat]           ", $info->{'lat'}, " - Long: ", $info->{'lon'}, "\n";
print "  [Geo lat]           ", $info->{'lat'}, " - Long: ", $info->{'lat'}, "\n";
print "  [TimeZone]          ", $info->{'timezone'}, " - Long: ", $info->{'timezone'}, "\n";
print "  [number/name]       ", $info->{'as'}, " - Long: ", $info->{'as'}, "\n";
print "  [ORG]               ", $info->{'as'}, "\n";
print "  [Country code]      ", $info->{'countryCode'}, "\n"; 
print "  [Status]            ", $info->{'status'}, "\n";  
print "\n";
