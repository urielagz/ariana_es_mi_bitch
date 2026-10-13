import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'perfil_screen.dart';
import 'favorito_screen.dart';

class MainScreen extends StatefulWidget {
   const MainScreen({super.key});

   @override
   State<MainScreen> createState() => _MainScreenState();
 }

 class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const FavoritosScreen(),
    const PerfilScreen(),
  ]; }