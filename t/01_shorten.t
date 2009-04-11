use strict;
use Test::Base;

plan skip_all => "no inc/.author" unless -e "inc/.author";
plan tests => 1 * blocks;

use WWW::Shorten::Simple;

filters { args => 'yaml' };

run {
    my $block  = shift;
    my $shorten = WWW::Shorten::Simple->new(@{$block->args});
    my $tiny = $shorten->shorten($block->url);
    like $tiny, qr/${\$block->expected}/;
};

__END__

=== metamark
--- args
- Metamark
--- url: http://bulknews.net/
--- expected: http://xrl.us/\w+

=== rev=canonical
--- args
- RevCanonical
--- url: http://www.flickr.com/photos/bulknews/3409035590/
--- expected: http://flic.kr/p/\w+

