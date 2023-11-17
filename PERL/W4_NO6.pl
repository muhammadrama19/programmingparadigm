sub pwValidator {
    my ($password) = @_;
    return $password =~ /(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%^&*()_+])(?!.*\s).{10,}$/;
}

# Test cases
my @test_passwords = (
    "ValidP!ssw0rd",
    "Pendek",
    "TakdeSimbol12345",
    "JalanJalanYuk12!",
    "NoDigit&Simbol",
    "Password 123!",
);

foreach my $password (@test_passwords) {
    if (pwValidator($password)) {
        print "Password: $password - Valid\n";
    } else {
        print "Password: $password - Invalid\n";
    }
}
