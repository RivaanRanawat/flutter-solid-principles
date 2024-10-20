// Single Responsibility Principle - 2 seperate classes, 1 for each task

// Authentication manager class responsible for authentication logic
class AuthManager {
  bool authenticateUser(String username, String password) {
    // Logic to authenticate user
    return true; // Simulated success for the example
  }
}

// Profile manager class responsible for user profile management logic
class ProfileManager {
  void updateUserProfile(String username, Map<String, dynamic> profileData) {
    // Logic to update user profile
    print('User profile updated for $username');
  }
}
