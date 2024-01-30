part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable{
  const SignUpEvent();

  List<Object> get props => [];
}

//sign up events

class SignUpRequired extends SignUpEvent{
  final MyUser user;
  final String password;

  const SignUpRequired(this.user, this.password);

  List<Object> get props => [user, password];
}