import 'package:flutter/material.dart';

import 'components.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController=TextEditingController();
  var passController=TextEditingController();
  var nameController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,leading:IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back,color: Colors.black87,)),),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0,left: 10.0,right: 10.0),
            child: Form(
              key: formKey,
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
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          const Text('Sign Up',style: TextStyle(fontSize: 28.0,color: Colors.black,fontWeight: FontWeight.w700),textAlign: TextAlign.left,),
                          const SizedBox(
                            height: 80.0,
                          ),
                          defaultFormField(controller: nameController, type: TextInputType.text,label:'Name', valid:(value){
                            if(value.isEmpty){
                              return 'Name can not be empty';
                            }
                            return null;
                          }),
                          const SizedBox(
                            height: 18.0,
                          ),
                          defaultFormField(controller: emailController, type: TextInputType.emailAddress,label:'Email', valid:(value){
                            if(value.isEmpty){
                              return 'Email can not be empty';
                            }
                            return null;
                          }),
                          const SizedBox(
                            height: 18.0,
                          ),
                          defaultFormField(controller: passController, type: TextInputType.visiblePassword,secure: true,label:'Password', valid:(value){
                            if(value.isEmpty){
                              return 'password can not be empty';
                            }
                            return null;
                          }),
                          const SizedBox(
                            height: 40.0,
                          ),
                          defaultButton(
                              text: 'Sign up',
                              function:(){
                                if(formKey.currentState!.validate()){

                                }
                              }
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
