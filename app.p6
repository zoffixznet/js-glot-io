use Bailador;
use Bailador::Plugin::Static;
use GlotIO;
use JSON::Fast;
use URI::Escape;

my GlotIO $glot .= new: :key<045e1a1a-6b16-40b5-81ba-08a5660081c5>;

get '/' => sub { 'index.html'.IO };
get '/main.js' => sub { 'main.js'.IO };

post '/run' => sub {
    my $c = uri-unescape request.params<code>;
    my $res= $glot.run: 'perl6', $c;
    return qq|{out: "$res<out>"}|;
}

baile;