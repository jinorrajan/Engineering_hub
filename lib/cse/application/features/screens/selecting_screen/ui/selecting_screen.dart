//import 'package:drop_shadow/drop_shadow.dart';
import 'package:engineering_hub/cse/application/core/constants/colors.dart';
import 'package:engineering_hub/cse/application/features/screens/AI/ai_screens_main_page.dart';
//import 'package:engineering_hub/cse/application/features/screens/home_screen/ui/home_ai_screen.dart';
//import 'package:engineering_hub/cse/application/features/screens/home_screen/ui/home_csee_screen.dart';
import 'package:engineering_hub/cse/application/features/screens/selecting_screen/bloc/selecting_screen_bloc.dart';
import 'package:engineering_hub/cse/main_pages/screen_main_page.dart';

//import 'package:engineering_hub/application/features/screens/selecting_screen/ui/domain_selection_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectingScreen extends StatefulWidget {
  const SelectingScreen({super.key});

  @override
  State<SelectingScreen> createState() => _SelectingScreenState();
}

//class SelectingScreenDomainContainerNavigateEvent extends SelectingScreenEvent{
// final String selectingDomain;

// SelectingScreenDomainContainerNavigateEvent(this.selectingDomain);
//}
class _SelectingScreenState extends State<SelectingScreen> {
  late SelectingScreenBloc selectingScreenBloc;
  @override
  void initState() {
    selectingScreenBloc = SelectingScreenBloc();
    selectingScreenBloc.add(SelectingScreenInitialEvent());
    super.initState();
  }

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectingScreenBloc, SelectingScreenState>(
      bloc: selectingScreenBloc,
      listenWhen: (previous, current) => current is SelectingScreenActionState,
      buildWhen: (previous, current) => current is! SelectingScreenActionState,
      listener: (context, state) {
        /*if (state is SelectingScreenDomainContainerNavigateCseActionState) {
          
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomeCse()));
        }
        else if (state is SelectingScreenDomainContainerNavigateAiActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeAi()));
        }*/
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case SelectingScreenLoadingState:
            return const Scaffold(
              body: Center(
                  child: CircularProgressIndicator(
                color: Color.fromRGBO(17, 213, 131, 0.840),
              )),
            );

          case SelectingScreenLoadedState:

            //final loadedState = state as SelectingScreenLoadedState;
            return Scaffold(
              backgroundColor: CColors.lightBackground,
              appBar: AppBar(
                backgroundColor: CColors.lightBackground,
                title: Text(
                  'SELECT YOUR DOMAIN ?',
                  style: GoogleFonts.roboto(
                    color: CColors.textPrimary,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              body: ListView(
                scrollDirection:Axis.vertical,
                children: [
                  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  ScreenMainPage()));
                          },
                          highlightColor: CColors.secondary,
                          splashColor: CColors.secondary,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 156,
                            width: 148,
                            child: Column(
                              children: [
                                Container(
                                  height: 87,
                                  width: 121.64,
                                  margin: EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7)),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            'assets/images/select 2.jpg',
                                          ))),
                                ),
                                Text(
                                  'Computer Science',
                                  style: GoogleFonts.roboto(
                                    color: CColors.textSecondary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AiScreenmainPage()));
                          },
                          highlightColor: CColors.secondary,
                          splashColor: CColors.secondary,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 156,
                            width: 148,
                            child: Column(
                              children: [
                                Container(
                                  height: 87,
                                  width: 121.64,
                                  margin: EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/select 3.jpg',
                                      ),
                                      
                                    ),
                                    
                                  ),
                                ),
                                Text(
                                  'Artifical Intelligence and Data Science',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: CColors.textSecondary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ]
              ),
            );

          case SelectingScreenErrorActionState:
            return Scaffold(
              body: Center(
                child: Text(
                  "Error",
                  style: GoogleFonts.roboto(
                    color: CColors.error,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );

          default:
            return const SizedBox();
        }
      },
    );
  }
}
