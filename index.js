function init(){

}
$(document).on("click", "#btnsoporte",function() {
    if ( $('#rol_id').val()==1) {
        $('#lbltitulo').html("Acceso Sistemas");
        $('#btnsoporte').html("Acceso Colaborador");
        $('#rol_id').val(2);
        $('#imgtipo').attr("src","publics/2.png");
    } else {
        $('#lbltitulo').html("Acceso Colaborador");
        $('#btnsoporte').html("Acceso Sistemas");
        $('#rol_id').val(1);
        $('#imgtipo').attr("src","publics/1.png");

    }
    
});

init();