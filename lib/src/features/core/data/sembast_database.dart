import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  // SembastDatabase(this._instance);

  // late final Database _instance;
  Database get instance => db!;
  Database? db;

  // bool _hasBeenInitialized = false;
  Future<void> init() async {
    if (db != null) return;
    // _hasBeenInitialized = true;

    final dbDirectory = await getApplicationDocumentsDirectory();
    await dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'db.sembast');
    db = await databaseFactoryIo.openDatabase(dbPath);
  }

  Future<void> delete() async {
    if (db != null) {
      await db?.close();
      await databaseFactoryIo.deleteDatabase(db!.path);
      db = null;
      // _hasBeenInitialized = false;
      await init();
      // await SembastInit().init();
    }
  }
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
