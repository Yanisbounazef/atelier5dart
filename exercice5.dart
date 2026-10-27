
import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() {
    return "Erreur : le nombre ne peut pas être négatif.";
  }
}

void main() {
  try {
    print("Entrez un nombre :");
    String? texte = stdin.readLineSync();
    int nombre = int.parse(texte!);

    if (nombre < 0) {
      throw NombreNegatifException();
    }

    int carre = nombre * nombre;
    print("Le carré de $nombre est : $carre");
  }
}
