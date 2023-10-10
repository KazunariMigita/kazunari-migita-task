
import 'package:flutter/material.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 248, 255, 37),
        //appbar内を真ん中に配置
        title: Center(
          child:Column(
            children: [
              const Image(
                image:AssetImage("assets/images/logo.png"),
                height: 50,),

              
              Padding(
                padding: const EdgeInsets.only(top:10,bottom: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                     child: Center(
                       child: const Text(
                         "HOME",
                         style: TextStyle(
                           fontSize: 15
                         ),)),
                     width: 100,
                     height:30,
                     color: const Color.fromARGB(255, 252, 246, 229),),

                    Container(
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:4, left: 5),
                              child: Icon(
                                Icons.search,
                                size: 20,
                                ),
                            ),
                            Text(
                              "商品一覧",
                              style: TextStyle(
                                fontSize: 15
                              ),),

                            
                          ],
                        )),
                      width: 100,
                      height:30,
                      color: const Color.fromARGB(255, 252, 246, 229),),

                    Container(
                     child: Center(
                      child: Text(
                         "店舗一覧",
                         style: TextStyle(
                           fontSize: 15
                         ),)),
                      width: 100,
                      height:30,
                      color: const Color.fromARGB(255, 252, 246, 229),),
                  ],
                ),
              ),

                
                //  const Positioned(
                // right:0,
                // top:10,
                // width:100,
                // height: 100,
                // child: Icon(Icons.search)),
            ],
          ),
          // child: Text(
          //   "UP GARAGE",
          //   style: TextStyle(
          //     fontSize: 38,
          //     fontWeight: FontWeight.bold,
          //     color:Color.fromARGB(255, 26, 24, 185)
          //     // color:Color.fromARGB(255, 1, 73, 133),
          //   ),
          //   ),
          ),
        // backgroundColor: const Color.fromARGB(255, 255, 230, 0)
      ),

      body:Container(
        
        //横にめいっぱい広げる
        height: double.infinity,
        //縦に目いっぱいげる
        width: double.infinity,
        color:Colors.amber,
        child: const Center(
          child:Column(
            children: [
              Text(
                "Welocome To Upgarge Page!!",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w800
                )
                ),
              Text(
                "test app",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),

        
            ],
          ),
          
        ),
        
      
      ),
      
   
    );
  }
}
