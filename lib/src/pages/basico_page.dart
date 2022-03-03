import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: SingleChildScrollView (
              child: Column(

                children: <Widget> [

                _crearImagen(),

                  _crearTitulo(),

                  _crearAcciones(),

                  _crearTexto(),
                  _crearTexto(),
                  _crearTexto(),
                  _crearTexto(),
                  _crearTexto(),
                  

              ],
              ),

          ),

    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
            image: NetworkImage('https://www.xtrafondos.com/wallpapers/paisaje-digital-en-atardecer-5846.jpg'),
            height: 200.0,
            fit: BoxFit.cover,
             ),
    );
  }


    Widget _crearTitulo(){
        return  SafeArea(
          child: Container( 
        
                        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                        child: Row(
                          children:<Widget> [
        
                            Expanded(
                             child: Column(
                           
                                crossAxisAlignment: CrossAxisAlignment.start,
                           
                               children: <Widget> [
                                   Text('Lago bajo la luna', style: estiloTitulo),
                                   SizedBox(height: 7.0),
                                   Text('Un lago en Alemania', style: estiloSubTitulo),
                               ],
                             ),
                           ),
        
                              Icon(Icons.star, color: Colors.red, size: 30.0),
                              Text('41', style: TextStyle(fontSize: 20.0) )
        
                          ],
                        ),
                      ),
        );
    }

   Widget _crearAcciones(){
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
              _accion(Icons.call,'CALL' ),
               _accion(Icons.near_me, 'Route'),
               _accion(Icons.share, 'Share')

        ],

     );
   }

    Widget _accion(IconData icon,  String texto){
        return Column(
                children: <Widget> [
                  Icon(icon, color: Colors.blue, size: 40.0),
                  SizedBox(height: 5.0),
                  Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
                ],
              );
    }

    Widget _crearTexto(){
      return SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            textAlign: TextAlign.justify,
          ),
        ),
      );
    }

} 