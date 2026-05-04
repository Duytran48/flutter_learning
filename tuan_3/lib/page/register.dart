
import 'package:flutter/material.dart';
import '../model/user.dart';
import 'detail.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _checkValue1 = false;
  bool _checkValue2 = false;
  bool _checkValue3 = false;
  int _gender = 0;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'User information',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Full name',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      icon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _passController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      icon: Icon(Icons.password),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _confirmPassController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm password',
                      icon: Icon(Icons.password),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text('What is your Gender?'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: const Text('Male'),
                          leading: Transform.translate(
                            offset: const Offset(-8, 0),
                            child: Radio(
                              groupValue: _gender,
                              value: 1,
                              onChanged: (value) {
                                setState(() {
                                  _gender = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: const Text('Female'),
                          leading: Transform.translate(
                            offset: const Offset(-8, 0),
                            child: Radio(
                              groupValue: _gender,
                              value: 2,
                              onChanged: (value) {
                                setState(() {
                                  _gender = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: const Text('Other'),
                          leading: Transform.translate(
                            offset: const Offset(-8, 0),
                            child: Radio(
                              groupValue: _gender,
                              value: 3,
                              onChanged: (value) {
                                setState(() {
                                  _gender = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('What is your favorite?'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.all(0),
                          title: const Text('Music'),
                          value: _checkValue1,
                          onChanged: (value) {
                            setState(() {
                              _checkValue1 = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.all(0),
                          title: const Text('Movie'),
                          value: _checkValue2,
                          onChanged: (value) {
                            setState(() {
                              _checkValue2 = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.all(0),
                          title: const Text('Book'),
                          value: _checkValue3,
                          onChanged: (value) {
                            setState(() {
                              _checkValue3 = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var fullname = _nameController.text;
                          var email = _emailController.text;
                          var gender = '';
                          if (_gender == 1) {
                            gender = 'Male';
                          } else if (_gender == 2) {
                            gender = 'Female';
                          } else {
                            gender = 'Other';
                          }

                          var favorite = '';
                          if (_checkValue1) {
                            favorite += 'Music, ';
                          }
                          if (_checkValue2) {
                            favorite += 'Movie, ';
                          }
                          if (_checkValue3) {
                            favorite += 'Book, ';
                          }

                          if (favorite != '') {
                            favorite = favorite.substring(0, favorite.length - 2);
                          }

                          var objUser = User(
                            fullname: fullname,
                            email: email,
                            gender: gender,
                            favorite: favorite,
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail(user: objUser),
                            ),
                          );
                        },
                        child: const Text('Register'),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



