use strict;
use warnings;

sub getInput {
    my @numbers;
    my $totalNumber;
    do {
        print "Masukan total bilangan: ";
        $totalNumber = <STDIN>;
        chomp($totalNumber);
        if ($totalNumber <= 0) {
            print "Masukan bilangan positif!.\n";
        }
    } while ($totalNumber <= 0);

    for my $i (1..$totalNumber) {
        my $input;
        print "Masukan bilangan ke-$i: ";
        $input = <STDIN>;
        chomp($input);
        push @numbers, $input;
    }

    return \@numbers, $totalNumber;   #numbers di return as reference
}

sub getAverage {
    my ($numberPass, $totalNumber) = @_;  #unpacking atau destructuring sehingga bisa diproses di subroutine
                                           # @_. adalah array bawaan perl 
    my @numbers = @$numberPass;  #pass ke array baru
    my $total = 0;
    if ($total ==1) {
        return $total /$totalNumber;
    }
    else {
         foreach my $num (@numbers) {
        $total += $num;
        return $total / $totalNumber;
    }
    }
   
}

sub printResult {
    my ($average) = @_;  
    print "Rata-rata: $average\n";
}

my ($numberPass, $totalNumber) = getInput();
my $average = getAverage($numberPass, $totalNumber);
printResult($average, );
