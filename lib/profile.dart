import 'package:flutter/material.dart';
import 'package:login_page/cs.dart';
import 'package:login_page/editprofile.dart';
import 'package:login_page/myshop.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff335b39),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Mengembalikan ke halaman sebelumnya
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
            size: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Color(0xffffffff), size: 24),
            onPressed: () {
              // Arahkan ke halaman baru
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfile()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("ppp.jpeg", fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "UserName",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff424141),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "Raffy",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading:
                      Icon(Icons.person, color: Color(0xff335b39), size: 24),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Color(0xff6e7180), size: 24),
                ),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 30,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: Color(0x00ffffff),
                title: Text(
                  "Costumer Service",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  "Ready for service",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: EdgeInsets.all(0),
                selected: false,
                selectedTileColor: Color(0x42000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                leading: Icon(Icons.info_outline,
                    color: Color(0xff335b39), size: 24),
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            cs(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;

                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff6e7180),
                    size: 24,
                  ),
                ),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 20,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: Color(0x00ffffff),
                title: Text(
                  "Phone",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  "098989 fufufafa",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: EdgeInsets.all(0),
                selected: false,
                selectedTileColor: Color(0x42000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                leading: Icon(Icons.call, color: Color(0xff335b39), size: 24),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Color(0xff6e7180), size: 24),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 20,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: Color(0xffffffff),
                title: Text(
                  "Your Shop",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  "---",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: EdgeInsets.all(0),
                selected: false,
                selectedTileColor: Color(0x42000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0x4dffffff), width: 1),
                ),
                leading: Icon(Icons.add_business,
                    color: Color(0xff335b39), size: 24),
                trailing: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff6e7180),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => myshop()),
                    );
                  },
                ),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 20,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
