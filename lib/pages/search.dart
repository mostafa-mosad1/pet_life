import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate{
  
  List names=["cat","hamster","dog","bird","fish"];
  
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed: (){
        query="";
      }, icon: Icon(Icons.close))
    ];
  }

  Widget? buildLeading(BuildContext context) {
    return  IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }

  
  Widget buildResults(BuildContext context) {
    return Text("$query",style: TextStyle(fontSize: 30),);
  }

  Widget buildSuggestions(BuildContext context) {
    List Filtername=names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
        itemCount: query==""?names.length:Filtername.length,
        itemBuilder: (context,i){
          return MaterialButton(onPressed: (){
            query=Filtername[i];
            showResults(context);
          },
          child: Container(
              padding:EdgeInsets.all(10),
          child:query=="" ?
            Container(alignment: Alignment.topLeft,
                child: Text("${names[i]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))):
            Container(alignment: Alignment.topLeft,
                child: Text("${Filtername[i]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)))
          ),
          );
        }
    );
  }
  
  
  
}