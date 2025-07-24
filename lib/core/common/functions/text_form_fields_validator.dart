enum TextFormFieldsValidator { email, password }

String? textFormFieldsValidator(
  TextFormFieldsValidator validator,
  String value,
) {
  if (validator == TextFormFieldsValidator.email) {
    if (value.isEmpty) {
      return 'Email is required';
    }
    if (!value.contains('@')) {
      return 'Email is invalid';
    }
    return null;
  } else if (validator == TextFormFieldsValidator.password) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
  return null;
}
