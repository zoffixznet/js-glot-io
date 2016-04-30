$(function(){
    setup_glot_io();
});

function setup_glot_io() {
    var codes = $('.glot-code');
    if ( ! codes.length ) { return; }

    codes.each(function(i, el){
        $(el).find('button').click(function() {
            var code  = $(el).parent('.glot-code').find('textarea').val();
            $.ajax({
                type: "POST",
                // url: 'http://httpbin.org/post',
                url: 'http://localhost:3000/run',
                data: 'code={"files": [{"name": "main.p6", "content": "print(42)"}]}',
                success: function(data){alert("yey!")},
                dataType: 'text/html'
            });
            return false;
//             $.post('http://localhost:3000/run',
//                 'code={"files": [{"name": "main.p6", "content": "print(42)"}]}',
//                 function(data){alert("yey!" + data)},
//                 'text/html'
//             );
        })
    });
}