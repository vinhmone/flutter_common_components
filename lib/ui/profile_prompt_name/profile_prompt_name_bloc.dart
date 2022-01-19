import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_prompt_name_event.dart';
part 'profile_prompt_name_state.dart';

class ProfilePromptNameBloc extends Bloc<ProfilePromptNameEvent, ProfilePromptNameState> {
  ProfilePromptNameBloc() : super(ProfilePromptNameInitial()) {
    on<ProfilePromptNameEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
