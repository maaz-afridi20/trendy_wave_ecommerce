import 'package:trendy_waves_ecommerce/utils/constants/export_statement.dart';

Future<void> main() async {
  //
  //
  //! widgets binding...
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  //
  //
  //! Initializing the local storage..
  await GetStorage.init();
  //
  //
  //wait the splash screen until other item loads.
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //
  //
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRespsitory()));
  runApp(const App());
}
