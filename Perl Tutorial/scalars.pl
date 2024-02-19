# 3 data types in Perl; scalars, arrays, & hashes

# Use the 'my function' to declare a variable
# The sigil '$' says we are defining a scalar or single value
# Variable must start with a letter or '_' and then numbers afterwards
# A variable receives the default value of undefined

my $name = 'Andrew';

# Can contain multiple values and scalars can contain strings or numbers

my ($age, $street) = (21, '123 Main St');

# Using " for strings can include things like newlines with \n and variables
# Backslash quotes to use them in strings

my $my_info = "$name lives on \"$street\"\n";

# Can avoid escaping quotes with q{} for single quotes and q[] for double quotes

$my_info = qq{$name lives on "$street"\n};
print $my_info;

# You can define a long string over multiple lines like this:

my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

# 'say' ends the line with a newline
say $bunch_of_info;

# The largest integer you can hold:
my $big_int = 18446744073709551615;

# You can formatted strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)
printf("%u \n", $big_int + 1);

# You can trust 16 digits of precision for floats on most machines
my $big_float = .1000000000000001;

# You can define the decimal precision amount
printf("%.16f \n", $big_float + .1000000000000001);

# Switch values of scalars
my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);
say "$first $second";