part of 'selecting_screen_bloc.dart';

@immutable
sealed class SelectingScreenState {
  
}

abstract class SelectingScreenActionState extends SelectingScreenState{}

 class SelectingScreenInitial extends SelectingScreenState {}

class SelectingScreenLoadingState extends SelectingScreenState{}

class SelectingScreenLoadedState extends SelectingScreenState{
  

 
}

class SelectingScreenDomainContainerNavigateCseActionState extends SelectingScreenState{
  
  
}
class SelectingScreenDomainContainerNavigateAiActionState extends SelectingScreenState{
  
}

class SelectingScreenErrorActionState extends SelectingScreenState{}

