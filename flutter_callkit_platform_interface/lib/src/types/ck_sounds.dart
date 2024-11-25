import 'enums/enums.dart';

class CKCustomSounds {
  final bool enabled;
  final Map<CallState, String> sounds;

  const CKCustomSounds({
    this.enabled = true,
    this.sounds = const {},
  });
}
