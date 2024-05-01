
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/size.dart';
import '../../../../../../core/widget/button_widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
   final videoUrl = 'https://youtu.be/8hPtgyZVgb0?si=vxCi15IY16R46Unk ';
   late YoutubePlayerController _controller;

  @override
  void initState(){
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(initialVideoId: videoId!,
    flags: YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            kheight20,
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 52,
                width: 296,
                decoration: BoxDecoration(
                    color: CColors.secondaryButton,
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(164, 0, 0, 0))),
                child: Center(
                    child: Text(
                  'HEADING',
                  style: GoogleFonts.roboto(
                      fontSize: 28, fontWeight: FontWeight.w600),
                )),
              ),
            ),
            kheight20,
            Stack(
              children: [
                YoutubePlayer(controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () => debugPrint('Ready'),),
                
              ],
            ),
            kheight20,
            Container(
              height: 360,
              width: 364,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(167, 45, 45, 45),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 17,top: 11,right: 7),
                  child: Text(
                    'Python is a versatile, high-level programming language known for its simplicity and readability, making it an excellent choice for beginners and professionals alike.With its extensive standard library and active community support, Python is widely used in various fields, including web development, data science, artificial intelligence,and automation. Its elegant syntax and dynamic typing facilitate rapid development and prototyping, empowering developers to create robust and scalable applications efficiently',
                  style: GoogleFonts.roboto(fontSize: 18),
                  ),
                ),
              ),
            ),
            kheight35,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                   onTap: (){
                Navigator.pop(context);
              },
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ButtonWidget(
                      icons: Icons.arrow_back_outlined,
                      text: "Back",
                      color: CColors.primaryButton,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: ButtonWidget(
                    icons: Icons.home_filled,
                    text: "Home",
                    color: CColors.primaryButton,
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
