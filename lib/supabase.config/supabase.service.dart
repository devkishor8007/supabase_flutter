import '../constant/constant.dart';

class SupabaseService {
  Future<void> signOut(context) async {
    final response = await supabase.auth.signOut();
    final error = response.error;
    if (error != null) {
      context.showErrorSnackBar(message: error.message);
    }
  }
}
