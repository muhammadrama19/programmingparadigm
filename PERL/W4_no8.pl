my %web = (
    "web1" => "www.google.com",
    "web2" => "google.com",
    "web3" => "yahoo.com",
    "web4" => "www.yahoo.com",
    "web5" => "www.abc123.sg",
    "web6" => "WWW.abc123.id",
    "web7" => "www._.com",
    "web8" => "WWW.1.com",
    "web9" => "WWW.!!!.com",
);


my $regek = qr/^www\.[a-zA-Z0-9-]+\.(com|net|id|)$/i;
#/^/www filter www diawal
#\. escape character
#any nama domain selagi a-z or A-Z or 0-9
#filter akhir just com or net or id

foreach my $key (keys %web) {
    my $url = $web{$key};
    
    if ($url =~ $regek) {
        print "$key adalah : Valid URL\n";
    } else {
        print "$key adalah : Invalid URL\n";
    }
}
