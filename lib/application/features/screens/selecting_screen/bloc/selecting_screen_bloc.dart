import 'dart:async';

import 'package:bloc/bloc.dart';

//import 'package:engineering_hub/DataModel/domain_data.dart';
//import 'package:engineering_hub/application/features/screens/selecting_screen/models/domain_model.dart';
//import 'package:engineering_hub/application/features/screens/selecting_screen/models/domain_selecting_model.dart';
import 'package:meta/meta.dart';

part 'selecting_screen_event.dart';
part 'selecting_screen_state.dart';

class SelectingScreenBloc
    extends Bloc<SelectingScreenEvent, SelectingScreenState> {
  SelectingScreenBloc() : super(SelectingScreenInitial()) {
    on<SelectingScreenInitialEvent>(selectingScreenInitialEvent);
    on<SelectingScreenDomainContainerCseNavigateEvent>(
        selectingScreenDomainContainerCseNavigateEvent, );
        on<SelectingScreenDomainContainerAiNavigateEvent>(selectingScreenDomainContainerAiNavigateEvent);
  }
  

  FutureOr<void> selectingScreenInitialEvent(SelectingScreenInitialEvent event,
      Emitter<SelectingScreenState> emit) async {
    emit(SelectingScreenLoadingState());
    await Future.delayed(Duration(seconds: 2));
    emit(SelectingScreenLoadedState(
        ));
  }

 
  FutureOr<void> selectingScreenDomainContainerCseNavigateEvent(SelectingScreenDomainContainerCseNavigateEvent event, Emitter<SelectingScreenState> emit) {
    print('Cart Navigate clicked');
    emit(SelectingScreenDomainContainerNavigateCseActionState());
  }
 
  FutureOr<void> selectingScreenDomainContainerAiNavigateEvent(SelectingScreenDomainContainerAiNavigateEvent event, Emitter<SelectingScreenState> emit) {
    emit(SelectingScreenDomainContainerNavigateAiActionState());
  }
    }
