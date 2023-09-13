import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(
              width: 300,
              height: 350,
              child:  WebView(
                initialUrl: "https://app.vectary.com/p/4QTKzhACQx8Qka9FlspTYe",
                javascriptMode: JavascriptMode.unrestricted,
              ),
             ) ,
             const Padding(
               padding: EdgeInsets.symmetric(vertical:15.0),
               child: Divider(thickness: 1,),
             ),
           const  Text("Men's White Hoddie ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20,fontWeight: FontWeight.bold),)
            ,
             const Padding(
              padding: EdgeInsets.symmetric(horizontal:13.0),
              child: Text("Essentials Men's Hooded Fleece Sweatshirt \n                  (Available in Big & Tall)",style: TextStyle(fontStyle: FontStyle.italic),),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: (){},
               child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                Text(" Order now",style: TextStyle(fontStyle: FontStyle.italic),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('/'),
                ),
                Text("23.80\$",style: TextStyle(fontStyle: FontStyle.italic),)
               ],))],
          ),
        ),
      ),
    );
      
  }
}
