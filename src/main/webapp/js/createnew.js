function newAsignatura(){
    var nombre = document.getElementById("nombre").value
    if(nombre == ""){
        execute("backscript-loader", `../submit/datosblanco.jsp`)
    } else {
        execute("backscript-loader", `../submit/asignatura.jsp?nombre=${nombre}`)
    }
}

function newDepartamento(){
    var nombre = document.getElementById("nombre").value
    if(nombre == ""){
        execute("backscript-loader", `../submit/datosblanco.jsp`)
    } else {
        execute("backscript-loader", `../submit/departamento.jsp?nombre=${nombre}`)
    }
}

function newProfesor(){
    var dni = document.getElementById("dni").value
    var nombre = document.getElementById("nombre").value
    var apellidos = document.getElementById("apellidos").value
    var dept = document.getElementById("departamento").value
    if(nombre == "" || dni == "" || apellidos == "" || dept == ""){
        execute("backscript-loader", `../submit/datosblanco.jsp`)
    } else {
        execute("backscript-loader", `../submit/profesor.jsp?dni=${dni}&nombre=${nombre}&apellidos=${apellidos}&dept=${dept}`)
    }
}
