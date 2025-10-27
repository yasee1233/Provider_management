import 'package:demo_prj/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter Provider",
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(create: (context)=>CounterProvider(),child: HomePage(),),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("RUn this object");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
         child:Consumer<CounterProvider>(builder: (ctx, _, __){
          print('Build this context');
          return Text('${ctx.watch<CounterProvider>().counts}');
         })
        // Text('${Provider.of<CounterProvider>(context, listen: true).counts}'),
      ),
    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(onPressed: (){
          // Provider.of<CounterProvider>(context,listen: false).increment();
          context.read<CounterProvider>().increment();
          },child: Icon(Icons.add),),
        FloatingActionButton(onPressed: (){
          context.read<CounterProvider>().decrement();
          // Provider.of<CounterProvider>(context,listen: false).decrement();
          },child: Icon(CupertinoIcons.minus),),
      ],
    ),
    );
  }
}