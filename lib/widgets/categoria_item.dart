import 'package:flutter/material.dart';
import '../models/categoria.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;
  const CategoriaItem({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      margin: const EdgeInsets.only(right: 12),
      child: Column(children: [
        CircleAvatar(radius:28,
        backgroundColor: const Color.fromARGB(255, 14, 25, 187),
        child: Icon(categoria.icono,color:Colors.white)),
        SizedBox(height: 8),
        Text(categoria.nombre,
         style: TextStyle(fontSize: 12),
         textAlign: TextAlign.center
        )
        
      ],)     
    );
    
}
}