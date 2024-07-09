import 'package:isar/isar.dart';

// this is neede to generate a file
// then run this code: dart run build_runner build
part 'note.g.dart';

@Collection()
class Note {
  Id id = Isar.autoIncrement;
  late String text;
}
