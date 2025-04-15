part of 'firebase_sync_cubit.dart';

@freezed
sealed class FirebaseSyncState with _$FirebaseSyncState {
  const factory FirebaseSyncState({
    @Default(false) bool isLoading,
    String? errorMessage,
    FirebaseSyncData? syncData,
  }) = _FirebaseSyncState;
}
