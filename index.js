function init(){

}
$(document).on("click", "#btnsoporte",function() {
    if ( $('#rol_id').val()=='1') {
        $('#lbltitulo').html("Acceso Sistemas");
        $('#btnsoporte').html("Acceso Colaborador");
        $('#rol_id').val(2);
    } else {
        $('#lbltitulo').html("Acceso Colaborador");
        $('#btnsoporte').html("Acceso Sistemas");
        $('#rol_id').val(1);
    }
    
});

init();