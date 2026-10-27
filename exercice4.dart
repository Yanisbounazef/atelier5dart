
class MotdepasseCourtException implements Exception {
  @override
  String toString() {
    return "Erreur : le mot de passe doit contenir au moins 6 caractères.";
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }

  print("Mot de passe valide.");
}

void main() {
  try {
    verifierMotdepasse("abc");
  } on MotdepasseCourtException catch (e) {
    print(e);
  }
}
