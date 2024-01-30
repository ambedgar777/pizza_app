part of 'sign_in_bloc.dart';

sealed class SignInState extends Equatable{
  const SignInState();

  @override
  List<Object> get props => [];
}

//four basic sign in states

final class SignInInitial extends SignInState{}
final class SignInFailure extends SignInState{}
final class SignInProcess extends SignInState{}
final class SignInSuccess extends SignInState{}