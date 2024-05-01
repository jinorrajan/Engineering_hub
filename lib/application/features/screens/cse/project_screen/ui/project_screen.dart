//import 'dart:convert';

import 'package:engineering_hub/application/DataModel/service/auth_service.dart';
import 'package:engineering_hub/application/DataModel/service/chatService/chat_sevice.dart';
import 'package:engineering_hub/application/core/constants/colors.dart';
import 'package:engineering_hub/application/core/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/user_title.dart';
import 'chat_page.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const KSearchBar(),
          toolbarHeight: 75,
          shadowColor: CColors.greyBorder,
          backgroundColor: CColors.lightBackground,
          bottom: const TabBar(tabs: [
            Tab(
              text: '  Group 😎',
            ),
            Tab(
              text: '  Chat 📢',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Container(
                    height: 650,
                    width: double.infinity,
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [
                          InkWell(
                            child: ProjectChatScreen(
                              pntext: 'Project Name',
                              lntext: 'Leader Name',
                              pftext: 'Project Field',
                              imageUrlP: "assets/images/250.png",
                            ),
                          ),
                          ProjectChatScreen(
                            pntext: 'Project Name',
                            lntext: 'Leader Name',
                            pftext: 'Project Field',
                            imageUrlP: "assets/images/250.png",
                          ),
                          ProjectChatScreen(
                            pntext: 'Project Name',
                            lntext: 'Leader Name',
                            pftext: 'Project Field',
                            imageUrlP: "assets/images/250.png",
                          ),
                          ProjectChatScreen(
                            pntext: 'Project Name',
                            lntext: 'Leader Name',
                            pftext: 'Project Field',
                            imageUrlP: "assets/images/250.png",
                          ),
                          ProjectChatScreen(
                            pntext: 'Project Name',
                            lntext: 'Leader Name',
                            pftext: 'Project Field',
                            imageUrlP: "assets/images/250.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 548, left: 340),
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Color.fromARGB(226, 65, 165, 123),
                          isDismissible: true,
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 450,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  ShowBottomContainer(
                                    hintText: 'Project Heading',
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  ShowBottomContainer(
                                    hintText: 'Project Heading',
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  ShowBottomContainer(
                                    hintText: 'Project Heading',
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 260),
                                        child: Container(
                                          height: 40,
                                          width: 110,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            color: CColors.lightBackground,
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Create",
                                            style: GoogleFonts.roboto(
                                                color: const Color.fromARGB(
                                                    213, 3, 61, 37)),
                                          )),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Icon(Icons.add),
                      backgroundColor: CColors.primaryButton,
                      splashColor: CColors.secondaryButton,
                    ),
                  )
                ],
              ),
            ),

            //one to one chatting screen
            oneTooneChatting(),
          ],
        ),
      ),
    );
  }
}

class oneTooneChatting extends StatelessWidget {
  oneTooneChatting({
    super.key,
  });
  final chatService _chatservice = chatService();
  final AuthService _authservice = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _chatservice.getUsersStream(),
        builder: (context, snapshot) {
          //error
          if (snapshot.hasError) {
            return const Text("Error");
          }

          //loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading...");
          }

          //Return list view
          return ListView(
            children: snapshot.data!
                .map<Widget>(
                    (userData) => _buildUserListItem(userData, context))
                .toList(),
          );
        },
      ),
    );
  }

  // build individual list title for user
  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
  if(userData['email'] != _authservice.getCurrentUser()){
    return UserTile(
        text: userData['email'],
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  reciverEmail: userData['email'],
                ),
              ));
        });}else {
          return Container();
        }
  }
}

// ignore: must_be_immutable
class ShowBottomContainer extends StatelessWidget {
  ShowBottomContainer({
    required this.hintText,
    super.key,
  });

  String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: CColors.lightBackground,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}

class ProjectChatScreen extends StatelessWidget {
  const ProjectChatScreen({
    super.key,
    required this.pntext,
    required this.pftext,
    required this.lntext,
    required this.imageUrlP,
  });

  final String pntext; //pn means project name
  final String pftext;
  final String lntext;
  final String imageUrlP;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 390,
      decoration: BoxDecoration(
          color: CColors.lightBackground,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 93,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(213, 28, 223, 141),
                  image: DecorationImage(
                    image: AssetImage(imageUrlP),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pntext,
                  style: GoogleFonts.roboto(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                kheight7,
                Text(pftext),
                kheight7,
                Text(
                  lntext,
                  style: GoogleFonts.roboto(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KSearchBar extends StatelessWidget {
  const KSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 52,
        width: 370,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(167, 158, 158, 158),
              spreadRadius: 0.2,
              blurRadius: 3,
              offset: Offset(0, 10)),
          BoxShadow(
            color: CColors.lightBackground,

            // offset: Offset(0,5),
          )
        ], borderRadius: BorderRadius.all(Radius.circular(22))),
        child: Container(
          height: 50,
          width: 360,
          decoration: BoxDecoration(
            color: CColors.lightBackground,
            //border: Border.all(width: 1, color: CColors.greyBorder),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.search,
                  color: Color.fromARGB(47, 0, 0, 0),
                  size: 33,
                ),
              ),
              kwidth100,
              Text(
                'Search',
                style: GoogleFonts.roboto(
                    color: const Color.fromARGB(46, 0, 0, 0), fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
