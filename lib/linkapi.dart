class ApiLink {
  static const String server = "https://heshamkhaled.online/ecommerce";

  // =============================== test =============================

  static const String test = "$server/test.php";
  // =============================== Image =============================

  static const String imagesStatic =
      "https://heshamkhaled.online/ecommerce/upload";
  static const String imagesCategories = "$imagesStatic/categories";
  static const String imagesItems = "$imagesStatic/items";

  // =============================== Authentication =============================

  static const String signUp = "$server/auth/signup.php";
  static const String verfiycodesignup = "$server/auth/verfiycode.php";
  static const String login = "$server/auth/login.php";

// =============================== Forgetpassword =============================
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verfiycodeForgetPassword =
      "$server/forgetpassword/verifycode.php";

  // =============================== home =============================

  static const String homePage = "$server/home.php";
  // =============================== items =============================
  static const String items = "$server/items/items.php";
  // =============================== items =============================
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  
  
  
  
}
