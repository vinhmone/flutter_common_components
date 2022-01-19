import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_prompt_address_event.dart';
part 'profile_prompt_address_state.dart';

class ProfilePromptAddressBloc extends Bloc<ProfilePromptAddressEvent, ProfilePromptAddressState> {
  ProfilePromptAddressBloc() : super(ProfilePromptAddressInitial()) {
    on<ProfilePromptAddressEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
