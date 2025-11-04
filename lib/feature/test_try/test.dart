import 'package:fitness/feature/test_try/incrennt.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
/*
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final key= GlobalKey<FormState>() ;
 // TextEditingController email=TextEditingController();
    int a=0;

  @override
  void initState() {
//email.text;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("4444444"),backgroundColor: Colors.amber,),
body: Form(
  key: key,
  child:ChangeNotifierProvider(
    create:()=>Incrennt(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [IconButton(onPressed:  (){a=a+1;
      setState(() {
        
      });
      }, icon: Icon(Icons.plus_one)) ,
     Text("$a"),
     IconButton(onPressed: ( ){a=a-1;
     print(a);
     setState(() {
       
     }); 
     }, icon:  Icon(Icons.minimize))],),
  )
  /*
   Column(children: [
    SizedBox(height: 50,),
    TextFormField(
controller: email,
decoration:  InputDecoration(
  hint: Text("email"),
  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.green)),
  ),
    validator: (val){
   if (val == null || val.isEmpty) {
                return 'Please enter a valid password';
    }
    }
    ),
    ElevatedButton(onPressed:  (){
 
if(key.currentState!.validate()){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fffffffff")));
}

    }, child:  Container(
      width: 100,
      decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(20)
      ),))
    
    ],),
*/
),

    );
 
 
  }
}
*/
class Count extends StatelessWidget {
 
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create:(_)=>Incrennt(),
      child: Scaffold(
      appBar: AppBar(title: const Text("4444444"),backgroundColor: Colors.amber,),
      body: Consumer<Incrennt>(
            builder: (  context, c ,_ ) { return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [IconButton(onPressed: // (){//a+1;
      c.increment,
             
      //},
       icon: Icon(Icons.plus_one)) ,
             Text("${c.t}"),
             IconButton(onPressed: ( ){ 
             //print(a);
            
             }, icon:  Icon(Icons.minimize))],); },
            
      ),
      
      ),
    );
 
 
  }
}