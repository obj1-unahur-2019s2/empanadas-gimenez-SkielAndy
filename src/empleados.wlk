object galvan {
// la linea que sigue es equivalente a todo lo que está debajo.
// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
// var property sueldo = 15000
    var resultado = 0
var sueldo = 15000
method sueldo() { return sueldo }
method sueldo(nuevoValor) { sueldo = nuevoValor }
method cobrarSueldo(){resultado +=sueldo}
method gastar(cuanto){
resultado-=cuanto
}
method totalDeuda(){
if (resultado<0){
return resultado
}
else{
return 0
}
}
method totalDinero(){
if (resultado>0){
return resultado
}
else{
return 0
}
}

}

object baigorria {
var totalCobrado = 0
var cantidadEmpanadasVendidas = 100
var montoPorEmpanada = 15

method venderEmpanada() {
cantidadEmpanadasVendidas += 1
}
 
method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada //es lo mismo que hacer un {return}
method cobrarSueldo(){ totalCobrado+=self.sueldo()}
method totalCobrado(){return totalCobrado}
}
//Dueño
object gimenez {
var dinero = 300000
method dinero() { return dinero }
method pagarA( empleado ) { dinero -= empleado.sueldo() }
}


//1-si quiero agregar un nuevo empleado que metodo le tengo que poner para que gimenez le pueda pagar
//sueldo

//2-donde aparece el polimorfismo. o sea: que objetos son polimorficos para que otro objeto?
//los empleados son polimorficos para el dueño. el dueño trata polimorficamente a todos los empleados.

//Si pongo el nombre del objeto me muestra la memoria del objeto, en este caso... si pongo en consola gimenez me muestra la variable dinero