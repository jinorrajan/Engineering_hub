import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../core/constants/colors.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({
    super.key,
    required this.text1,
  });
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: CColors.greyBorder),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //kwidth20,
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              text1,
              style: GoogleFonts.roboto(fontSize: 18),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
                backgroundColor: CColors.primaryButton,
                radius: 20,
                child: Icon(Icons.video_library_outlined)),
          ),
        ],
      ),
    );
  }
}
