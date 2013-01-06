#
#===============================================================================
#
#         FILE: yatranslate.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Milovidov Mikhail (), milovidovwork@yandex.ru
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 07.01.2013 01:51:05
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Encode::Locale;
use Encode;

use Test::More tests => 2;                      # last test to print

my $hello_rus = decode(locale => "Привет");
my $hello_en = decode (locale => "Hi");

chomp(my $output = `yatranslate -t "en" $hello_rus`);
ok($hello_en eq decode(locale => $output));

chomp($output = `yatranslate -t "ru" $hello_en`);
ok($hello_rus eq decode(locale => $output));
