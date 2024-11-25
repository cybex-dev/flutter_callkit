import 'ck_sounds.dart';
import 'enums/enums.dart';

class CKConfiguration {
  final CKCustomSounds sounds;
  final Set<CallKitCapability> capabilities;
  final Set<CallAttributes> attributes;

  const CKConfiguration({
    this.sounds = const CKCustomSounds(),
    this.capabilities = const {},
    this.attributes = const {},
  });
}
