import 'package:firebase_auth/firebase_auth.dart';

String handleFirebaseAuthException(FirebaseAuthException error) {
  switch (error.code) {
    case 'invalid-email':
      return 'Invalid email';
    case 'user-not-found':
      return 'User not found';
    case 'wrong-password':
      return 'Wrong password';

    // Login/Signin errors
    case 'user-disabled':
      return 'This account has been disabled';
    case 'too-many-requests':
      return 'Too many failed attempts. Please try again later';
    case 'operation-not-allowed':
      return 'This sign-in method is not allowed';

    // Registration/Signup errors
    case 'email-already-in-use':
      return 'Email is already registered';
    case 'weak-password':
      return 'Password is too weak';

    // Password Reset errors
    case 'expired-action-code':
      return 'The action code has expired';
    case 'invalid-action-code':
      return 'The action code is invalid';

    // Network & Connection errors
    case 'network-request-failed':
      return 'Network error. Please check your connection';
    case 'timeout':
      return 'Request timeout. Please try again';

    // Token & Session errors
    case 'invalid-credential':
      return 'Invalid credentials provided';
    case 'credential-already-in-use':
      return 'This credential is already associated with another account';
    case 'invalid-verification-code':
      return 'Invalid verification code';
    case 'invalid-verification-id':
      return 'Invalid verification ID';

    // Account linking errors
    case 'account-exists-with-different-credential':
      return 'Account exists with different sign-in method';
    case 'requires-recent-login':
      return 'Please sign in again to continue';

    // Phone Auth errors
    case 'invalid-phone-number':
      return 'Invalid phone number';
    case 'missing-phone-number':
      return 'Phone number is required';
    case 'quota-exceeded':
      return 'SMS quota exceeded. Please try again later';

    // General errors
    case 'internal-error':
      return 'Internal error occurred. Please try again';
    case 'invalid-api-key':
      return 'Invalid API key';
    case 'app-not-authorized':
      return 'App not authorized to use Firebase';

    default:
      return "Something went wrong. Please try again";
  }
}
