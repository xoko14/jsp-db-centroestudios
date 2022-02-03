function newAsignatura(){
    var nombre = document.getElementById("nombre").value
    if(nombre == ""){
        execute("backscript-loader", `../submit/datosblanco.jsp`)
    } else {
        execute("backscript-loader", `../submit/asignatura.jsp?nombre=${nombre}`)
    }
}
