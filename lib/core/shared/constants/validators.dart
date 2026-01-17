class Validators {
  static String? isValidEmail(String? email) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    if (email == null || email.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!emailRegex.hasMatch(email)) {
      return 'Email address is not valid';
    }
    return null;
  }

  static String? isValidPassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password cannot be empty';
    }

    final upperRegex = RegExp('[A-Z]');
    if (!upperRegex.hasMatch(password)) {
      return 'Password must contain uppercase letter';
    }

    final lowerRegex = RegExp('[a-z]');
    if (!lowerRegex.hasMatch(password)) {
      return 'Password must contain a lowercase letter';
    }

    final numberRegex = RegExp('[0-9]');
    if (!numberRegex.hasMatch(password)) {
      return 'Password must contain a number';
    }

    final specialCharRegex = RegExp(
      "[!@#\$%^&*(),.?\":{}|<>~\\[\\]\\\\/'\\-_=+;]",
    );
    if (!specialCharRegex.hasMatch(password)) {
      return 'Password must contain special characters';
    }

    if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  static String? isValidConfirmPassword({
    String? confirmPassword,
    String? originalPassword,
  }) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm Password cannot be empty';
    }
    if (confirmPassword != originalPassword) {
      return 'Passwords do not match';
    }
    return null;
  }
}
