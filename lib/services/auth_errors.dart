import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;
import 'package:flutter/material.dart' show immutable;

const Map<String, AuthError> authErrorMapping = {
  'user-not-found': AuthErrorUserNotFound(),
  'operation-not-allowed': AuthErrorOperationNotAllowed(),
  'email-already-in-use': AuthErrorEmailAlreadyInUse(),
  'requires-recent-login': AuthErrorRequiresRecentLogin(),
  'no-current-user': AuthErrorNoCurrentUser(),
  'wrong-password': AuthErrorWrongPassword(),
  'weak-password': AuthErrorWeakPassword(),
  'invalid-email': AuthErrorInvalidEmail(),
  'missing-email': AuthErrorMissingEmail(),
  'missing-password': AuthErrorMissingPassword(),
  'network-request-failed': AuthErrorNetworkRequestFailed(),
  'too-many-requests': AuthErrorTooManyRequests(),
  'account-disabled': AuthErrorAccountDisabled(),
};

@immutable
abstract class AuthError {
  final String dialogTitle;
  final String dialogText;

  const AuthError({
    required this.dialogTitle,
    required this.dialogText,
  });

  factory AuthError.from(FirebaseAuthException exception) =>
      authErrorMapping[exception.code.toLowerCase().trim()] ??
      AuthErrorUnknown(error: exception.toString());
}

@immutable
class AuthErrorNetworkRequestFailed extends AuthError {
  const AuthErrorNetworkRequestFailed()
      : super(
          dialogTitle: "Network Request Failed",
          dialogText:
              "There was an issue with your network connection. Please check your internet connection and try again.",
        );
}

@immutable
class AuthErrorMissingEmail extends AuthError {
  const AuthErrorMissingEmail()
      : super(
          dialogTitle: "Missing Email",
          dialogText: "Please enter your email address",
        );
}

@immutable
class AuthErrorMissingPassword extends AuthError {
  const AuthErrorMissingPassword()
      : super(
          dialogTitle: "Missing Password",
          dialogText: "Please enter your password",
        );
}

@immutable
class AuthErrorTooManyRequests extends AuthError {
  const AuthErrorTooManyRequests()
      : super(
          dialogTitle: "Too Many Requests",
          dialogText:
              "Too many unsuccessful login attempts. Please try again later.",
        );
}

@immutable
class AuthErrorAccountDisabled extends AuthError {
  const AuthErrorAccountDisabled()
      : super(
          dialogTitle: "Account Disabled",
          dialogText:
              "This account has been disabled. Please contact support for assistance.",
        );
}

@immutable
class AuthErrorUnknown extends AuthError {
  const AuthErrorUnknown({required String error})
      : super(
          dialogTitle: "Authentication Error",
          dialogText: error,
        );
}

@immutable
class AuthErrorNoCurrentUser extends AuthError {
  const AuthErrorNoCurrentUser()
      : super(
          dialogTitle: "No Current User!",
          dialogText: "No user was found with this credintials",
        );
}

@immutable
class AuthErrorRequiresRecentLogin extends AuthError {
  const AuthErrorRequiresRecentLogin()
      : super(
          dialogTitle: "Requires Recent Login",
          dialogText:
              "You need to logout and login again in order to perform this operation",
        );
}

@immutable
class AuthErrorOperationNotAllowed extends AuthError {
  const AuthErrorOperationNotAllowed()
      : super(
          dialogTitle: "Operation Now Allowed",
          dialogText: "You can not register using this method at this moment!",
        );
}

@immutable
class AuthErrorUserNotFound extends AuthError {
  const AuthErrorUserNotFound()
      : super(
          dialogTitle: "User Not Found",
          dialogText: "User not found on the server!",
        );
}

@immutable
class AuthErrorEmailAlreadyInUse extends AuthError {
  const AuthErrorEmailAlreadyInUse()
      : super(
          dialogTitle: "Email already in use",
          dialogText: "Please choose another email to register with",
        );
}

@immutable
class AuthErrorWrongPassword extends AuthError {
  const AuthErrorWrongPassword()
      : super(
          dialogTitle: "Wrong Password",
          dialogText: "Please enter correct password",
        );
}

@immutable
class AuthErrorWeakPassword extends AuthError {
  const AuthErrorWeakPassword()
      : super(
          dialogTitle: "Weak Password",
          dialogText: "Please enter password at least 6 characters",
        );
}

@immutable
class AuthErrorInvalidEmail extends AuthError {
  const AuthErrorInvalidEmail()
      : super(
          dialogTitle: "Invalid Email",
          dialogText: "Please enter a valid email address",
        );
}
