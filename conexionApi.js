function obtenerDatos()
{
    $.get( "http://localhost/backend/public/obtenerArtistas", function( data ) {
        $("#datos").empty();
        data.forEach(element => {
            $("#datos").append('<li><a href="#detalle" class="ui-btn ui-btn-icon-right ui-icon-carat-r" onclick="getArtista('+element.id+')">'+element.nombre+''+element.descripcion+'</a></li>');
        });
      });
}

function getArtista(id)
{
    $("#imagen").empty();
    $("#nombre_artista").empty();
    $.get("http://localhost/backend/public/artista/"+id,
    function(data, status){
        $("#imagen").append('<img src="'+data.imagen+'" width="100%">');
        $("#nombre_artista").append('<h3>'+data.nombre+'</h3>');
        $("#descripcion").append('<h5>'+data.descripcion+'</h5><hr>');
    });
}