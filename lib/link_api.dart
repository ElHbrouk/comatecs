abstract class AppLinks {
  static const server = "http://192.168.1.8/comatecs";
  static const test = "$server/test.php";
  //=========== Image =========== //
  static const imageStatic = "$server/upload";
  static const imageCategories = "$imageStatic/categories";
  static const imageItems = "$imageStatic/items";
  //=========== Auth =========== //

  static const signUp = "$server/auth/sign_up.php";
  static const verifyCodeSignUp = "$server/auth/verify_code.php";
  static const login = "$server/auth/login.php";

//=========== Forget Password =========== //

  static const checkEmail = "$server/forget_password/check_email.php";
  static const verifyCodeForgetPassword =
      "$server/forget_password/verify_code.php";
  static const resetPassword = "$server/forget_password/reset_password.php";

//=========== Home =========== //
  static const String homeView = '$server/home.php';
}
