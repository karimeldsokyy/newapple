import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Professional Login',
      theme: ThemeData(
        primaryColor: Colors.white, // Set the primary color to white
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fortune AI Predictor'),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/aipredictor.png',
                    height: 170.0,
                    width: 310.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Rest of the content
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                labelStyle: TextStyle(
                  color: Color.fromARGB(179, 0, 0, 0),
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                labelStyle: TextStyle(
                  color: Color.fromARGB(179, 0, 0, 0),
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Forget Password
                    print('Forget Password');
                  },
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Color.fromARGB(179, 0, 106, 187),
                      fontSize: 18.0,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle Signup
                    print('Signup');
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Color.fromARGB(179, 0, 106, 187),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Simulate login logic
                String enteredEmail = _emailController.text;
                String enteredPassword = _passwordController.text;

                // Hardcoded login information
                String validEmail = 'assembayumi@gmail.com';
                String validPassword = '123456789';

                if (enteredEmail == validEmail &&
                    enteredPassword == validPassword) {
                  // Successful login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                } else {
                  // Invalid login
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Login Error'),
                        content: Text(
                          'Invalid login credentials. Please try again.',
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                    Size(200.0, 50.0)), // Set the width and height
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(179,
                    0, 106, 187)), // Set the background color of the button
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // Set the text color to white
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Help
                    print('Help');
                  },
                  child: Text(
                    'Help',
                    style: TextStyle(
                      color: Color.fromARGB(179, 0, 106, 187),
                      fontSize: 18.0,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle Contact Us
                    print('Contact Us');
                  },
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Color.fromARGB(179, 0, 106, 187),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
