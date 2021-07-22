import 'package:flutter/material.dart';
import 'package:quiz_app/allquestions.dart';

void main() {
  runApp(MaterialApp(
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({ Key? key }) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  String right = '✓';
  String wrong = '╳';
  List  results = <String>[] ;

  int number = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzz'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
      ),
      backgroundColor : Colors.indigo[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 100.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Card(
                  borderOnForeground: true,
                  elevation: 10.0,
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  color: Colors.teal[600],
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 20.0),
                    child: Text(
                      '${qlist.ques[number].question}',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ), 
                  ),
                ),
              )
            ],
          ),
        SizedBox(height: 170.0,),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 380,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (number == qlist.ques.length - 1) {
                            number = 0;
                            results.clear();
                          }

                          else {
                            if (qlist.ques[number].answer) {
                              results.add('$right');
                            }
                            else {
                              results.add('$wrong');
                            }
                            number +=1;
                          }
                        });
                      },
                      child: Text(
                         'True'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          textStyle: TextStyle(fontSize: 28,),
                        ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 380.0,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (number == qlist.ques.length - 1) {
                            number = 0;
                            results.clear();
                          }
                          else {
                            if (qlist.ques[number].answer) {
                              results.add('$wrong');
                            }
                            else {
                              results.add('$right');
                            }
                            number +=1;
                          }
                        });
                      },
                      child: Text(
                         'False'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.red,
                          textStyle: TextStyle(fontSize: 28,),
                        ),
                       ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: results.map((result) => Text(
                  '$result ',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.amberAccent,
                  ), )).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
