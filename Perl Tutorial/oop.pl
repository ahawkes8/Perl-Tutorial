# In Perl, a class corresponds to a package which is a self contained unit of variables and subroutines
 
use lib 'lib';
 
use Animal::Cat;
 
# Create a Cat object
my $whiskers = new Animal::Cat("whiskers", "Andrew");
 
# Call the subroutine that returns the name
say $whiskers->getName();
 
# Change the name
$whiskers->setName("Whiskers");
 
say $whiskers->getName();
 
say $whiskers->getSound();
 
# Inheriting object
use Animal::Lion;
 
# Create object that inherits from cat
my $king = new Animal::Lion("King", "No Owner");
 
# Call overridden method
say $king->getSound();