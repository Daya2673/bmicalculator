import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;
  void calculater() {
    setState(() {

    });
    double heightd = double.parse(height.text)/100;
    double weightd = double.parse(weight.text);
    double height2 = heightd * heightd;
    result = weightd / height2;
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text('BMI Calculator'),centerTitle: true,
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
            TextField(
              controller: height,
                decoration: InputDecoration(
                  fillColor: Colors.pinkAccent,
                  filled: true,
                  labelText: 'height',
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),)),
          SizedBox(height: 30,),
          TextField(
            controller: weight,
            decoration: InputDecoration(
              fillColor: Colors.pinkAccent,
              filled: true,
              labelText: 'weight',
              labelStyle: TextStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),),
          ),
          SizedBox(height: 20,),
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue,),
              onPressed: ((){
                calculater();
              }),child: Text('calculate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black,),)
          ),
          SizedBox(height: 30,),
              Text(result.toString()),

        ],
      ),

    );
  }

}
