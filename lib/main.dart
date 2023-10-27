import 'package:flutter/material.dart';
import 'quote.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 26, 26),
      appBar: AppBar(
        title: const Text(" User Profile"),
        titleTextStyle: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 245, 244, 243)
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 83, 83, 82),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel ++;
          });

          if(ninjaLevel >= 19){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
               content: Text("Heey! count is more than 10"),
));
          }
  
        },

        child: Icon(
          Icons.add),
          backgroundColor: Colors.grey[800],
      ),
    
      drawer: Drawer(
      
        backgroundColor: Colors.grey[390],
        child: ListView(
          children: [
            ListTile(
              title: Text('Use of list',
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline,
            fontSize: 23.0,
            ),
            ),
            onTap: () {
               Navigator.push(context,
             MaterialPageRoute(builder: (context) => Use_of_list())
             );
            },
            ),
            ListTile(
              title: const Text('Custom Classes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23.0),
            ),
            onTap: () {
               Navigator.push(context,
             MaterialPageRoute(builder: (context) => CustomClass())
             );
            },
            
            ),

            ListTile(
              title: Text('Cards View',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23.0),
            
            ),
            onTap: () {
               Navigator.push(context,
             MaterialPageRoute(builder: (context) => Cards())
             );
            },
            ),
             ListTile(
              title: Text('User Inputs',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23.0),
            
            ),
            onTap: () {
               Navigator.push(context,
             MaterialPageRoute(builder: (context) => user_input())
             );
            },
            ),
            ListTile(
              title: Text('Login Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23.0),
            
            ),
            onTap: () {
               Navigator.push(context,
             MaterialPageRoute(builder: (context) => login())
             );
            },
            ),
          ],
          
          ),     
      ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/images.jpg'),
                radius: 70.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Color.fromARGB(255, 49, 48, 48),
            ),
            const Text(
              "NAME",
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              ),
            ),
            const SizedBox( height: 10.0,),
             Text(
              "Tania salas",
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox( height: 20.0,),
             const Text(
              "Ninja level",
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              ),
            ),
            const SizedBox( height: 10.0,),
             Text(
              "$ninjaLevel",
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
              ),
            ),
             const SizedBox( height: 20.0,),
            const Text(
              "Gender",
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              ),
            ),
            const SizedBox( height: 10.0,),
             Text(
              "Female",
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
              ),
            ),
             const SizedBox( height: 20.0,),
            const Text(
              "Marital Status",
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              ),
            ),
            const SizedBox( height: 10.0,),
             Text(
              "Single",
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
              ),
            ),
            
            const SizedBox(height: 30.0,),
            
            const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Tania@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                       if( ninjaLevel > 15){
                        ninjaLevel--;
                       }
                    });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Reducing the counter"))
                          );
                  },
                   child: Text(
                    " - Counter"
                   ))
              ],
            )
          ],

        ),),
    );
  }
}






class Use_of_list extends StatefulWidget {
  const Use_of_list({super.key});

  @override
  State<Use_of_list> createState() => _Use_of_listState();
}

class _Use_of_listState extends State<Use_of_list> {

  List<String> Quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: 
          Quotes.map((quote) => Text(quote)).toList(),

        
      ),
    );
  }
}



class CustomClass extends StatefulWidget {
  const CustomClass({super.key});

  @override
  State<CustomClass> createState() => _CustomClassState();
}

class _CustomClassState extends State<CustomClass> {

  List<quotez> Quotes = [


    quotez(text: 'Be yourself; everyone else is already taken', author: "   Lery Dary"),
    quotez(text: 'I have nothing to declare except my genius', author: '   Thomas Dew'),
    quotez(text: 'The truth is rarely pure and never simple', author: '   Kennedy peter')
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: 
          Quotes.map((quote) => Text('${quote.text}, ${quote.author}')).toList(),

        
      ),
    );
  }
}

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  List<quotez> Quotes = [


    quotez(text: 'Be yourself; everyone else is already taken', author: "   Lery Dary"),
    quotez(text: 'I have nothing to declare except my genius', author: '   Thomas Dew'),
    quotez(text: 'The truth is rarely pure and never simple', author: '   Kennedy peter')
    
  ];
  Widget QuoteTemplate(Quotes){
    return Card(
      margin: EdgeInsets.fromLTRB(16.9, 16.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(Quotes.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[600]
          ),
          ),
          SizedBox(height: 7.0,),
          Text(
            Quotes.author,
            style:  TextStyle(
              fontSize: 15.0,
              color: Colors.grey[800]
            ),

          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cards in flutter"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: 
          Quotes.map((Quotes) => QuoteTemplate(Quotes)).toList(),

        
      ),
    );
  }
}


class user_input extends StatefulWidget {
  const user_input({super.key});

  @override
  State<user_input> createState() => _user_inputState();
}

class _user_inputState extends State<user_input> {
  
  final _Username = TextEditingController();
  String display = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 244, 244),
      appBar: AppBar(
        title: Text(" Sign Up"),
        titleTextStyle: TextStyle(
          fontSize: 20.0,
        ),
      ),
body: Center(
  
  child:   Container(
    width: 300.0,
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
    
      children:<Widget>[

        Text(display),
        
    
        TextField(
          controller: _Username,
          decoration: InputDecoration(
            prefixText: "User Name",
            suffixIcon: 
            Icon(Icons.remove_red_eye_outlined),
            

            focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(21.0),
    
              borderSide: BorderSide(
    
              color: Colors.deepOrange
    
              )
              

            ),
            
    
            border: OutlineInputBorder(
    
              borderRadius: BorderRadius.circular(21.0),
    
              borderSide: BorderSide(
    
                color: Colors.deepOrange
    
              )
    
            ),
            
           
    
          ),
          
  
    
        ),
  
        const SizedBox( height: 20.0,),
              TextField(
    
          decoration: InputDecoration(
    
    focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(21.0),
    
            borderSide: BorderSide(
    
            color: Colors.deepOrange
    
              )

    ),
            border: OutlineInputBorder(
    
              borderRadius: BorderRadius.circular(21.0),
    
              borderSide: BorderSide(
    
                color: Colors.deepOrange
    
              )
    
            )
    
          ),
    
        ),
         const SizedBox( height: 30.0,),

        ElevatedButton(
          onPressed: () {
            setState(() {
              display = _Username.text;
            });
          },
         child: Text("Show "))
    
      ]),
  ),
),

    );
  }
}

