import 'package:app_tienda_v1/models/categoria.dart';
import 'package:app_tienda_v1/widgets/producto_card.dart';
import 'package:flutter/material.dart';
import '../models/producto.dart';

class HomeScreen extends StatelessWidget{
  final List<Categoria> categorias = const[
    Categoria( "Ropa",Icons.checkroom),
    Categoria("Calzado",Icons.hiking),
    Categoria("Tecnologia",Icons.devices),
    Categoria("Hogar",Icons.chair),
    Categoria("Deportes",Icons.sports_soccer),
    Categoria("Belleza",Icons.face_retouching_natural),

  ];
  final List<Producto> productos = const [
    Producto("Zapatos", 1200, Icons.hiking),
    Producto("Audifonos", 834, Icons.headphones),
    Producto("Smartphone", 1293, Icons.devices),
    Producto("laptop", 10043, Icons.laptop_mac),
    Producto("Balón de fútbol", 400, Icons.sports_soccer),
    Producto("Maquillaje", 345, Icons.face_retouching_natural),
  ];
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("tienda Delfines"),
        backgroundColor: Colors.blue,
      ),
     body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hola uriel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "¿Qué quieres comprar hoy?",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.pink,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 206, 169, 236),
                          Color.fromARGB(255, 109, 23, 181),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 24,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hasta 20% de descuento",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("En productos seleccionados",
                        style:TextStyle(color:Colors.white60, fontSize:18),)
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 16,
                    bottom: 16,
                    child: Icon(Icons.local_offer, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Categorías",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 90,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorias.length,
              itemBuilder:(context, index) {
                final categoria = categorias[index];
                return Container(width: 76,
                margin: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Icon(categoria.icono, color: Colors.white),

                    ),
                    SizedBox(height: 8),
                    Text(
                      categoria.nombre,
                      style: TextStyle(fontSize: 11),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
                );
              },
            )
            ),
            Text("productos destacados", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
              ),
              itemCount: productos.length,
              itemBuilder: (context, index) {
                final producto = productos[index];
                return ProductoCard(producto: producto);
              },
            ),
          ],
        ),
      ),
    );
    
  }
}