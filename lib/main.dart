//siempre hay que importar la libreria de material para flutter
import 'package:flutter/material.dart';

//la clase main principal que ejecuta la aplicacion al inciar es
//en este casso MyApp debe tener la primera letra en mayuscula
void main() => runApp(MyApp());
//con este main estoy indicando que ejecute la aplicacion principal

//con la ayuda del los pluggins usamos statlessW o StatefulW
//la diferencia entre estos es que en el full podemos sobre escribir

//se crea el primer widget (clase) de la aplicacion
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  //este es un contructor (build) donde se construye el widget y que retorna
  //un widget

  @override
  Widget build(BuildContext context) {
    //devolvemos un MaterialApp , Material es un patron de diseño de google
    //material tiene ciertos parametros como title,home
    //title define el titulo de la aplicacion
    //home lo que aparece en el inicio de la aplicacion
    return Container(
      child: MaterialApp(
        //Para quitar el banner de debug
        debugShowCheckedModeBanner: false,

        title: "Clases",
        home: Inicio(),
      ),
    );
  }
}

//como en home colocamos que llame a un widget (clase) llamado Inicio()
//debemos crearlo

//creamos el widget Inicio() de tipo stateful
class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

//varible para la clase Empresa
//nueva instancia de Empresa
//new es opcional en Dart
Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 300000);

Empresa _google = new Empresa("Google", "", 800000);

//ejemplo de que los widgets son Clases
//tambien se puede sin la palabra new
Text _nombre = new Text(
  "Diego",
  style: const TextStyle(fontSize: 24),
);

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    //debemos retornar un widget usado en aplicaciones tradicionales
    //llamado Scaffold()
    //debemos recordar que hay widget que son contenedores de otros widgets
    //por eso se ve como si fuera una clase dentro de otra clase

    return Scaffold(
        appBar: AppBar(
          title: const Text("Clases"),
        ),
        //creamos en el body un center con un child que tiene un childrend
        //para colocar varios textos y llamaos a los parametros de la clase
        //Empresa
        body: Center(
          child: Column(children: [
            Text(_facebook.nombre),
            Text(_facebook.propietario),
            Text(_facebook.ingresoAnual.toString()),
            Text(_google.nombre),
            Text(_google.propietario),
            Text(_google.ingresoAnual.toString()),
          ]),
        ));
  }
}

//una clase es un contenedor que recibe una estructura de datos determinada

//creamos una clase Empresa
//las clase por convencion empiezan en Mayuscula
class Empresa {
  //parametros de la clase Empresa
  late String nombre;
  late String propietario;
  late int ingresoAnual;

  //metodo contructor de la clase es el encargado de llenar los parametros o propiedades de la clase
  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}

 //late es tipo de variable tardia
  //significa que despues debe tomar un valor
  //Dart tiene formas de especificar valores nulos y no nulos

  //poner valores como String? significa que la variable asociada acepta
  //valores nulos, en cambio poner String nombre=null; significa que la variable empieza con un valor nulo , por lo que para evitar errores es recomendable iniciar las variables y controlar los valores nulos