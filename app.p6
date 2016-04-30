use Bailador;
use Bailador::Plugin::Static;
use GlotIO;

my GlotIO $glot .= new: :key<045e1a1a-6b16-40b5-81ba-08a5660081c5>;

post '/run' => sub {
    #my $c = request.params<code>;
    #say request.params;
    #say $c;
    return 'looks good';
    app.headers<Access-Control-Allow-Origin> = '*';
    #'{foo:"bar"}';
}

baile;