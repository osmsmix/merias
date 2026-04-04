import '../db.dart';

Future<void> loggin() async {
  // Check if a user is already "there" when the web page loads
final session = db.auth.currentSession;

if (session == null) {
  // Only sign in anonymously if they don't have a session yet
  try {
    await db.auth.signInAnonymously();
  } catch (e) {
    print('Error signing in anonymously: $e');
  }
}
}