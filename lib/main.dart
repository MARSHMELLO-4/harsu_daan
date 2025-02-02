import 'package:harsu_daan/cart_page.dart';
import 'package:harsu_daan/home.dart';
import 'package:flutter/material.dart';
import 'package:harsu_daan/product_details.dart';
import 'package:harsu_daan/global_variables.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
void main() {
  runApp(const MyApp());
}
// provider
// changenotifier provider
//futureProvider
//StreamProvider
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 255, 216, 0),
              primary: Color.fromARGB(255, 255, 216, 0),
            ),
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                  fontSize: 16,
                )
            ),
            textTheme: TextTheme(  //we are using this to generalise the titles
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
                bodySmall: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )
      
        ),
          appBarTheme: AppBarTheme( /*WE CAN set the global  app bar for the app throughout the app*/
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            )
          )
        ),
        debugShowCheckedModeBanner: false,
      
        title: "Shopping App",
        home: const HomePage(),
        // home: CartPage(),
      ),
    );
  }
}