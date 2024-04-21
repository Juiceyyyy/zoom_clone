import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:zoom_clone_tutorial/resources/auth_methods.dart';
import 'package:zoom_clone_tutorial/resources/firestore_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  bool _isInMeeting = false;

  Future<void> createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      if (_isInMeeting) {
        print("Already in a meeting.");
        return;
      }

      String name = username.isNotEmpty ? username : _authMethods.user.displayName!;
      String email = _authMethods.user.email ?? '';
      String avatarUrl = _authMethods.user.photoURL ?? '';

      var options = _buildMeetingOptions(
        roomName: roomName,
        name: name,
        email: email,
        avatarUrl: avatarUrl,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
      );

      _firestoreMethods.addToMeetingHistory(roomName);
      _isInMeeting = true; // Set the flag to indicate that the user is in a meeting
      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      print("error: $error");
    } finally {
      _isInMeeting = false; // Reset the flag after the meeting ends or encounters an error
    }
  }

  JitsiMeetingOptions _buildMeetingOptions({
    required String roomName,
    required String name,
    required String email,
    required String avatarUrl,
    required bool isAudioMuted,
    required bool isVideoMuted,
  }) {
    return JitsiMeetingOptions(
      roomNameOrUrl: roomName,
      userDisplayName: name,
      userEmail: email,
      userAvatarUrl: avatarUrl,
      isAudioMuted: isAudioMuted,
      isVideoMuted: isVideoMuted,
    );
  }
}
