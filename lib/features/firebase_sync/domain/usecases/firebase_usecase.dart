import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class GetUserDataUseCase implements AsyncUseCase<Map<String, dynamic>?, void> {
  final FirebaseRepository repository;

  GetUserDataUseCase(this.repository);

  @override
  Future<Map<String, dynamic>?> call(void params) {
    return repository.getUserData();
  }
}
