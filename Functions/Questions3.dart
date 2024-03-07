import 'dart:io';

void main() {
  for (int x = 1; x <=7; x++) {
    for (int i = 1; i <=x; i++) {
      stdout.write("*");
    }
      stdout.write("\n");
  }

  for (int x = 7; x >= 1; x--) {
    for (int i = 1; i <=x; i++) {
      stdout.write("*");
    }
      stdout.write("\n");
  }
  for (int x = 1; x <=7; x++) {
    for (int i = 1; i <=x; i++) {
      stdout.write("*");
    }
      stdout.write("\n");
  }

  for (int x = 7; x >= 1; x--) {
    for (int i = 1; i <=x; i++) {
      stdout.write("*");
    }
      stdout.write("\n");
  }
}