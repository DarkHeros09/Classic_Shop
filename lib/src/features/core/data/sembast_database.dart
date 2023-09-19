import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  SembastDatabase(this._instance);

  late final Database _instance;
  Database get instance => _instance;

  // bool _hasBeenInitialized = false;

  // Future<void> init() async {
  //   if (_hasBeenInitialized) return;
  //   _hasBeenInitialized = true;

  //   final dbDirectory = await getApplicationDocumentsDirectory();
  //   await dbDirectory.create(recursive: true);
  //   final dbPath = join(dbDirectory.path, 'db.sembast');
  //   _instance = await databaseFactoryIo.openDatabase(dbPath);
  // }
}

class SembastInit {
  // bool _hasBeenInitialized = false;

  Future<Database> init() async {
    // if (_hasBeenInitialized) return instance;
    // _hasBeenInitialized = true;

    final dbDirectory = await getApplicationDocumentsDirectory();
    await dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'db.sembast');
    return databaseFactoryIo.openDatabase(dbPath);
  }
}
