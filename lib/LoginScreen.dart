import 'dart:ui';

import 'package:e_commerce2/HomeScreen.dart';
import 'package:e_commerce2/shared/SignUpScreen.dart';
import 'package:e_commerce2/shared/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();
  var passController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0,left: 10.0,right: 10.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children:[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: const [
                                Text('Welcome,',style: TextStyle(fontSize: 28.0,color: Colors.black,fontWeight: FontWeight.w700),textAlign: TextAlign.left,),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text('Sign in to continue',style: TextStyle(fontSize: 15.0,color: Colors.grey),),

                              ],),
                              TextButton(onPressed: (){}, child:const Text('Sign',style: TextStyle(fontSize: 18.0,color: Colors.blue),),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          defaultFormField(controller: emailController, type: TextInputType.emailAddress,label:'Email', valid:(value){
                            if(value.isEmpty){
                              return 'Email can not be empty';
                            }
                            return null;
                          }),
                          const SizedBox(
                            height: 12.0,
                          ),
                          defaultFormField(controller: passController, type: TextInputType.visiblePassword,label:'Password',secure: true, valid:(value){
                            if(value.isEmpty){
                              return 'password can not be empty';
                            }
                            return null;
                          }),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextButton(onPressed: (){}, child:const Text('Forgot Password ?',style: TextStyle(fontSize: 13.0,color: Colors.blue),textAlign: TextAlign.right,),),
                          const SizedBox(
                            height: 20.0,
                          ),
                          defaultButton(
                            text: 'Sign in',
                              function:(){
                              if(formKey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                              }
                              }
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  const Text('-OR-',style: TextStyle(fontSize: 20.0,color: Colors.black) ,),
                  const SizedBox(height: 15,),
                 SocialButton(color: Colors.grey[200], pathImage: 'assets/images/face.jpg', text: 'Sign with Facebook',radius: 10),
                  const SizedBox(height: 15,),
                  SocialButton(color: Colors.grey[200], pathImage: 'assets/images/google.jpg', text: 'Sign with Google',radius: 10),

                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
