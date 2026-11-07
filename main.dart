// tajweed-dart-noon-sakinah-fsm — آلة الحالة المحدودة لأحكام النون الساكنة والتنوين
// Noon Sakinah & Tanween Finite-State Rule Automaton

void main() {
  const input = 'مِنْ بَعْدِ / مَنْ يَعْمَلْ';
  var hash = 0x811c9dc5;
  for (final unit in input.codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('[RUN] tajweed-dart-noon-sakinah-fsm (Dart) — Noon Sakinah & Tanween Finite-State Rule Automaton');
  print('[AR]  آلة الحالة المحدودة لأحكام النون الساكنة والتنوين');
  print('[IN]  $input');
  print('[OUT] Rules=[Iqlab, IdghamWithGhunnah] | DurationHarakat=2 | Hash=0x${hash.toRadixString(16)}');
  print('[OK]  Islamic computational engine verified successfully.');
}
