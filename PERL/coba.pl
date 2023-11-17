my %chars;
my $Para =
"Sunflowers waiting for sunshine. \n
Violets just waiting for dew. \n
Bees just waiting for honey \n
And honey, I'm just waiting for you!";
print "Matched \n"
if ($Para =~ m/for/);
print "Does not match \n"
if ($Para =~ m/^And/);
print "Matches (using modifiers) \n"
if ($Para =~ m/^And/m);