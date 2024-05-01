
import 'package:engineering_hub/application/core/constants/colors.dart';
import 'package:engineering_hub/application/features/screens/cse/home_screen/widgets/trending_field_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../DataModel/service/auth_service.dart';
import '../widgets/subcategory_card.dart';

class HomeCse extends StatelessWidget {
  const HomeCse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                HomeStack(),
              ],
            ),
            Expanded(child: HomeCseListView())
          ],
        ),
      ),
    );
  }
}

// its wrap by stack , create app bar

class HomeStack extends StatelessWidget {
  const HomeStack({
    super.key,
  });

  void logOut(){
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: logOut,
          child: const MappBar(
            iconss: Icons.logout,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80, top: 60),
          child: Card(
            elevation: 5,
            shadowColor: CColors.textThird,
            color: CColors.lightBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const InkWell(
              child: SizedBox(
                height: 42,
                width: 253,
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.search,
                      color: CColors.textThird,
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: CColors.textThird,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//Custom AppBar

class MappBar extends StatelessWidget {
  const MappBar({super.key, required this.iconss});
  final IconData iconss;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      width: double.infinity,
      child: AppBar(
        elevation: 3,
        shadowColor: CColors.textThird,
        toolbarHeight: 86,
        backgroundColor: CColors.primary,
        leading: const Padding(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/250.png"),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
        actions: [
          SizedBox(
            width: kToolbarHeight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(iconss),
              iconSize: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class HomeCseListView extends StatelessWidget {
  const HomeCseListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      //Its Subcategory Container
      Container(
        height: 405,
        width: double.infinity,
        child: const SubCategory(),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 320,
          width: double.infinity,
          child: TrendingField(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Container(
          height: 150,
          width: double.infinity,
          child: const RefernceField(
            rMaintitle: "SEMESTER",
            rTitle: "Semester",
            subTitle: "Select your semester and subject",
            rColor: CColors.blueBorder,
            rImageUrl: "assets/images/250.png",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Container(
          height: 150,
          width: double.infinity,
          child: const RefernceField(
            rMaintitle: "PROJECT",
            rTitle: "Project",
            subTitle: "Select your semester and subject",
            rColor: CColors.goldenBorder,
            rImageUrl: "assets/images/250.png",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Container(
          height: 150,
          width: double.infinity,
          child: const RefernceField(
            rMaintitle: "CHATTING",
            rTitle: "Chatting",
            subTitle: "Select your semester and subject",
            rColor: CColors.redBorder,
            rImageUrl: "assets/images/250.png",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Container(
          height: 150,
          width: double.infinity,
          child: const RefernceField(
            rMaintitle: "Test",
            rTitle: "Test",
            subTitle: "Select your semester and subject",
            rColor: CColors.greenBorder,
            rImageUrl: "assets/images/250.png",
          ),
        ),
      ),
    ]);
  }
}


//balance Field

class RefernceField extends StatelessWidget {
  const RefernceField({
    super.key,
    required this.rMaintitle,
    required this.rTitle,
    required this.subTitle,
    required this.rColor,
    required this.rImageUrl,
  });

  final String rMaintitle;
  final String rTitle;
  final String subTitle;
  final Color rColor;
  final String rImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              rMaintitle,
              style:
                  GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 78,
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(color: rColor, width: 1.5),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(213, 93, 93, 93)),
                          image: DecorationImage(
                            image: AssetImage(rImageUrl),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(subTitle),
                    ],
                  ),
                ],
              ),
              
            ],
          ),
        )
      ],
    );
  }
}

// Trending Field

class TrendingField extends StatelessWidget {
  const TrendingField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 7),
            Text(
              'TRENDING FIELD',
              style:
                  GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  TrenCard(
                    tImageUrl: "assets/images/starting 1.jpg",
                    tTitle: "Machine Learning",
                    tSubTitle: "Natural Language Processing\n(NLP)",
                    tRview: "4.1(120 Review)",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TrenCard(
                    tImageUrl: "assets/images/starting 1.jpg",
                    tTitle: "Machine Learning",
                    tSubTitle: "Natural Language Processing\n(NLP)",
                    tRview: "4.1(120 Review)",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TrenCard(
                    tImageUrl: "assets/images/starting 1.jpg",
                    tTitle: "Machine Learning",
                    tSubTitle: "Natural Language Processing\n(NLP)",
                    tRview: "4.1(120 Review)",
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 335),
          child: Row(
            children: [
              TextButton(onPressed: () {}, child: Text('See All')),
            ],
          ),
        )
      ],
    );
  }
}

//subCategory Section
class SubCategory extends StatelessWidget {
  const SubCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'SUB CATEGORY',
                    style: GoogleFonts.roboto(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SizedBox(width:0 ,),
                MainCard(
                  imageUrl: "assets/images/select 2.jpg",
                  name: 'Cloud Computing',
                ),
                MainCard(
                  imageUrl: "assets/images/select 3.jpg",
                  name: 'Machine Learning',
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SizedBox(width:0 ,),
                MainCard(
                  imageUrl: "assets/images/select 2.jpg",
                  name: 'App development',
                ),
                MainCard(
                  imageUrl: "assets/images/select 2.jpg",
                  name: 'UI/UX',
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 330,
                ),
                TextButton(onPressed: () {}, child: Text('See All')),
              ],
            )
          ],
        ),
      ],
    );
  }
}
