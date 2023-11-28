import 'package:day_24/themes/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Consumer<ThemeModel>(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(themeNotifier.isDark ? "Dark Mode" : "Light Mode",
            style: TextStyle(
              color: themeNotifier.isDark ? Colors.white : Colors.grey.shade900
            ),),
          actions: [
            IconButton(
              icon: Icon(themeNotifier.isDark
                ? Icons.nightlight_round
                : Icons.wb_sunny, color: themeNotifier.isDark ? Colors.white : Colors.grey.shade900),
              onPressed: () {
                themeNotifier.isDark
                  ? themeNotifier.isDark = false
                  : themeNotifier.isDark = true;
              }
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: size.height * 0.2, top: size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello, \nWelcome Back", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: size.width * 0.1,)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: 30,
                          image: AssetImage('assets/icons/google.png')
                        ),
                        SizedBox(width: 40),
                        Image(
                          width: 30,
                          image: AssetImage('assets/icons/facebook.png')
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone number"
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password"
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Forgot Password?", style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () => {},
                      elevation: 0,
                      padding: EdgeInsets.all(18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.blue,
                      child: Center(child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(height: 30,),
                    Text("Create account", style: Theme.of(context).textTheme.bodyText1)
                  ],
                )
              ],
            ),
          ),
        ),
      );
      }
    );
  }
}