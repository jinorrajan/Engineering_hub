import 'package:engineering_hub/application/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          WwChattingField(serverName: 'India Server',),
          SizedBox(height: 10,),
          WwChattingField(serverName: 'Dubai Server',),
        ],
      ),
    ));
  }
}

class WwChattingField extends StatelessWidget {
  const WwChattingField({
    super.key, required this.serverName,
  }
  );
  final String serverName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21),
      child: Container(
        height: 90,
        width: 360,
        color: CColors.lightBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/250.png',
                      ),
                    )),
              ),
            ),
            Text(
              serverName,
              style: GoogleFonts.roboto(
                  fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 60,),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios),
              backgroundColor: CColors.primaryButton,
              foregroundColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
