// import 'package:classic_shop/src/features/wish_list/data/wish_list_isar.dart';
// import 'package:isar/isar.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

// class IsarDatabase {
//   IsarDatabase(this._instance);

//   late final Isar _instance;
//   Isar get instance => _instance;
// }

// class IsarInit {
//   Future<Isar> init() async {
//     final dbDirectory = await getApplicationDocumentsDirectory();
//     await dbDirectory.create(recursive: true);
//     final dbPath = join(dbDirectory.path, 'db.isar');
//     return Isar.open(
//       [WishListIsarSchema],
//       directory: dbDirectory.path,
//     );
//   }
// }
