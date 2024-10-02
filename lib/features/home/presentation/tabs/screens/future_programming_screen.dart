import 'package:flutter/material.dart';
import '../widgets/future_programming_widget.dart';

class FutureProgrammingScreen extends StatelessWidget {
  const FutureProgrammingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  const Scaffold(body:  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
                          SizedBox(height: 50,),
          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Future Programming',
                            style:
                                TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                         
                        ],
                      ),
      
         SizedBox(
                    height: 10,
                  ),
      
                   FutureProgrammingWidget(),
        ],
      ),
    ),
              
    
    );
  }
}