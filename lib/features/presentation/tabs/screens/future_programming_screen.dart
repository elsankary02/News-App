import 'package:flutter/material.dart';
import '../widgets/future_programming_widget.dart';

class FutureProgrammingScreen extends StatelessWidget {
  const FutureProgrammingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return   Scaffold(body: 
     SafeArea(
       child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
       
       const  SizedBox(height: 15,),
       
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.arrow_back_ios_rounded , color: theme.primaryColor ,)),
                           const SizedBox(height: 15,),
            Text(
              'Future Programming',
              style:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: theme.primaryColor),
            ),
        
         const  SizedBox(
                      height: 10,
                    ),
        
                   const  FutureProgrammingWidget(),
          ],
        ),
           ),
     ),
              
    
    );
  }
}