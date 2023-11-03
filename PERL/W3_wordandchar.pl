use strict;
use warnings;

sub count_words_and_characters {
    my $line = shift;  

    my @words = split /\s+/, $line;     
    my $word_count = scalar @words;  

    my $char_count = length $line;

    return ($word_count, $char_count);
}


my $input_line = "JTK Polban adalah sekolah vokasi";


my ($word_count, $char_count) = count_words_and_characters($input_line);


print "Word = $word_count\n";
print "Character = $char_count\n";
