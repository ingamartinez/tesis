
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

Echo.channel('arduino')
.listen('ActualizarArduinoEvent', (e) => {
    console.log(e);

    $("#arduino-id-"+e.id).find( "#arduino-luz-"+e.id).val(e.luz).trigger('change');
    $("#arduino-id-"+e.id).find( "#arduino-temp-"+e.id).val(e.temperatura).trigger('change');

    //zmdi-more | zmdi zmdi-block | zmdi zmdi-block

    // let sonido = alert(e['sonido']);
    //
    if(e.sonido==="SI"){
        $("#arduino-id-"+e.id).find( "#arduino-sonido-"+e.id+" > i").removeClass().addClass( "zmdi zmdi-audio" );
    }else{
        $("#arduino-id-"+e.id).find( "#arduino-sonido-"+e.id+" > i").removeClass().addClass( "zmdi zmdi-block" );
    }

    if(e.movimiento==="SI"){
        $("#arduino-id-"+e.id).find( "#arduino-movimiento-"+e.id+" > i").removeClass().addClass( "zmdi zmdi-run" );
    }else{
        $("#arduino-id-"+e.id).find( "#arduino-movimiento-"+e.id+" > i").removeClass().addClass( "zmdi zmdi-male-alt" );
    }

    $('#arduino-update-'+e.id).livestamp(moment().fromNow());
    $("#arduino-id-"+e.id).find( "#arduino-update-"+e.id).livestamp(new Date());

    $("#arduino-id-"+e.id).unblock();

});