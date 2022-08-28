import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(children: [
        Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WeaveClipper(),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.deepOrangeAccent,
                  height: 150,
                ),
              ),
            ),
            ClipPath(
              clipper: WeaveClipper(),
              child: Container(
                color: Colors.deepOrangeAccent,
                height: 120,
                alignment: Alignment.center,
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                right: 35,
                left: 35,
                top: MediaQuery.of(context).size.height * 0.27),
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  hintText: 'Name',
                  hintStyle: const TextStyle(color: Colors.deepOrangeAccent),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.deepOrangeAccent),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.deepOrangeAccent),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ]),
            ]),
          ),
        ),
      ]),
    );
  }
}

class WeaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.39,
      size.height * 0.98,
      size.width * 0.5,
      size.height * 0.77,
    );
    path.quadraticBezierTo(
      size.width * 0.72,
      size.height * 0.61,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);

    // var firstStart = Offset(size.width / 5, size.width);
    // var firstEnd = Offset(size.width / 2.25, size.height - 50);
    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    //
    // var secondStart =
    //     Offset(size.width - (size.width / 3.24), size.height - 105);
    // var secondEnd = Offset(size.width, size.height - 10);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    // path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
