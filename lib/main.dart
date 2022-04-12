import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/* Screens */
import 'package:shoes_app/screens/screens.dart';

/* Models */
import 'package:shoes_app/models/models.dart';

void main() => runApp(const AppState());

/* Este Es El Primer Widget Que Se va A Crear, Es Decir,
Después De Este Widget En Adelante, En Todos Los Widgets 
Que Yo Quiera Tengo Acceso A Esta Misma Instancia De 
Shoe Model */
class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoeModel()),
        // ChangeNotifierProvider(create: (_) => ActorProvider(), lazy: false),
        // ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      debugShowCheckedModeBanner: false,
      home: const ShoeScreen(),
      // home: const ShoeDescriptionScreen(),
      theme: ThemeData.light(),
    );
  }
}
