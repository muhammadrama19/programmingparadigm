use strict;
use warnings;

sub add_arrays {
    my ($arr1_ref, $arr2_ref) = @_;  #unpack dari parameter
    my @result;

    my $count = scalar(@$arr1_ref);  #count

    for my $i (0..$count-1) {
        my $sum = $arr1_ref->[$i] + $arr2_ref->[$i];
        push @result, $sum;
    }

    return @result;
}


my @a = (1, 2, 3);
my @b = (4, 5, 6);


my @result = add_arrays(\@a, \@b);


print "Output: (", join(", ", @result), ")\n";