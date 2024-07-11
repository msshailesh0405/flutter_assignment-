import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String donateBlood='none';
  String smoking='none';
  String medical='none';
  String platelets='none';
  String bloodgroup='none';
  String gender='none';

  final _formKey = GlobalKey<FormState>();
  final _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title:  const Center(
            child: Text("Blood Donor Registration",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Times New Roman"
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[

                      const SizedBox(height: 20,),
                      const Text("Enter the name of the donor",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration:   const InputDecoration(
                          label: Text("Name"),
                          hintText:"Enter the name of the donor",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Enter the email address of the donor",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration:   const InputDecoration(
                          label: Text("email ID"),
                          hintText:"Enter the email address of the donor",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Enter the USN of the donor",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:   const InputDecoration(
                          label: Text("USN"),
                          hintText:"Enter the USN of the donor",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Enter the age of the donor",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:   const InputDecoration(
                          label: Text("AGE"),
                          hintText:"Enter the Age of the donor",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Enter the phone number of the donor",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:   const InputDecoration(
                          label: Text("phone number"),
                          hintText:"Enter the the phone number of the donor",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Enter the Alternative phone number",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:   const InputDecoration(
                          label: Text("Alternative number"),
                          hintText:"Enter the alternative phone number",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),

                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Enter the Address PIN code of the donor",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:   const InputDecoration(
                          label: Text("PIN CODE"),
                          hintText:"Enter the pin code of the donor",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Donor gender",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),

                      RadioMenuButton(
                            value:'male',
                            groupValue: gender,
                            onChanged: (value){
                              setState(() {
                                gender=value!;
                              });
                            },
                        child: const Text("male"),
                          ),
                      RadioMenuButton(
                        value:'Female',
                        groupValue: gender,
                        onChanged: (value){
                           setState(() {
                             gender=value!;
                           });
                        },
                        child: const Text("Female"),
                      ),
                      RadioMenuButton(
                        value:'Non Binary',
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender=value!;
                          });
                        },
                        child: const Text("Non Binary"),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Donor Blood Group",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),

                      RadioMenuButton(
                        value:'A RhD positive(A+)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("A RhD positive(A+)"),
                      ),
                      RadioMenuButton(
                        value:'A RhD negative(A-)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("A RhD negative(A-)"),
                      ),
                      RadioMenuButton(
                        value:'B RhD positive(B+)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("B RhD positive(B+)"),
                      ),
                      RadioMenuButton(
                        value:'B RhD negative(B-)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("B RhD negative(B-)"),
                      ),
                      RadioMenuButton(
                        value:'O RhD positive(O+)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("O RhD positive(O+)"),
                      ),
                      RadioMenuButton(
                        value:'O RhD negative(O-)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("O RhD negative(O-)"),
                      ),
                      RadioMenuButton(
                        value:'AB RhD positive(AB+)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("AB RhD positive(AB+)"),
                      ),
                      RadioMenuButton(
                        value:'AB RhD negative(AB-)',
                        groupValue: bloodgroup,
                        onChanged: (value){
                          setState(() {
                            bloodgroup=value!;
                          });
                        },
                        child: const Text("AB RhD negative(AB-)"),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Have you donated platelets",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      RadioMenuButton(
                        value:'yes',
                        groupValue: platelets,
                        onChanged: (value){
                          setState(() {
                            platelets=value!;
                          });
                        },
                        child: const Text("yes"),
                      ),
                      RadioMenuButton(
                        value:'no',
                        groupValue: platelets,
                        onChanged: (value){
                          setState(() {
                            platelets=value!;
                          });
                        },
                        child: const Text("no"),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Number of Donations",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),

                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:   const InputDecoration(
                          label: Text("Donations"),
                          hintText:"Enter Number of donations",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Last date of Donation",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),

                      TextFormField(
                        controller: _dateController,
                        decoration: const InputDecoration(
                          labelText: 'Select Date',
                          hintText: 'Tap to select date',
                        ),
                        readOnly: true,
                        onTap: () => _selectDate(context),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select a date';
                          }
                          return null;
                        },
                      ),





                      const SizedBox(height: 20,),
                      const Text("Are you under any medical condition?",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      RadioMenuButton(
                        value:'yes',
                        groupValue: medical,
                        onChanged: (value){
                          setState(() {
                            medical=value!;
                          });
                        },
                        child: const Text("yes"),
                      ),
                      RadioMenuButton(
                        value:'no',
                        groupValue: medical,
                        onChanged: (value){
                          setState(() {
                            medical=value!;
                          });
                        },
                        child: const Text("no"),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Drinking and Smoking?",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      RadioMenuButton(
                        value:'yes',
                        groupValue: smoking,
                        onChanged: (value){
                          setState(() {
                            smoking=value!;
                          });
                        },
                        child: const Text("yes"),
                      ),
                      RadioMenuButton(
                        value:'no',
                        groupValue: smoking,
                        onChanged: (value){
                          setState(() {
                            smoking=value!;
                          });
                        },
                        child: const Text("no"),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Will you donate blood if you stay close to needy?",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),
                      RadioMenuButton(
                        value:'yes',
                        groupValue: donateBlood,
                        onChanged: (value){
                          setState(() {
                            donateBlood=value!;
                          });
                        },
                        child: const Text("yes"),
                      ),
                      RadioMenuButton(
                        value:'no',
                        groupValue: donateBlood,
                        onChanged: (value){
                          setState(() {
                            donateBlood=value!;
                          });
                        },
                        child: const Text("no"),
                      ),

                      const SizedBox(height: 20,),
                      const Text("Write a few lines about your blood donation experience",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Times New Roman",
                        ),
                      ),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:   const InputDecoration(
                          label: Text("Experience"),
                          hintText:"write about your experience",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      Center(
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(backgroundColor:Colors.pink[300] ),
                          child: const Text("Submit",style: TextStyle(color: Colors.white),),),
                      ),

                      const SizedBox(height: 20,),





                    ]
                ),
              )
          ),
        ),

      ),
    );
  }
}


