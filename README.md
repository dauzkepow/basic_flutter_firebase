# flutter_firebase

A new Flutter project.

## Catatan ##
Firebase :
donwload nodejs https://nodejs.org/en
install

buka cmd
npm install -g firebase-tools

firebase login
login pertama diarahkan web browser

lihat daftar project :
firebase projects:list

Install the FlutterFire CLI :
dart pub global activate flutterfire_cli

Configure firebase dengan project flutter:
buka = https://console.firebase.google.com/u/0/?pli=1
buat project baru

buka Environment Variables untuk aktifkan flutterfire
"Edit Environment Variable" window, click New.
Paste the directory: C:\Users\ip1teknik\AppData\Local\Pub\Cache\bin.

buka flutter terminal :
flutterfire configure

flutter pub add firebase_core

buka main.dart
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

copy ke dalam main :
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupPage(), //ke halaman SignupPage
      debugShowCheckedModeBanner: false,
    );
  }
}


=== pastikan ketika di run tidak ada error


//cek firebase auth
firebase_auth

buka terminal
flutter pub add firebase_auth

create user with email password


buka console.firebase
built/authentication

get Started
email password
enable
enable

pada flutter :
buat file signup_page
buat class SignupPage
buat statefull widget
di dalam scaffold() :

buat tombol elevatebutton
Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              final result =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: 'bisma@gmail.com',
                password: 'sidomukti81',
              );
            } on Exception catch (e) {
              print(e);
            }
          },
          child: const Text('Test'),
        ),
      ),
	  

//password harus minimal 6 karakter

buka console fire base
authentication
Users

Android/App/build.gradle
 defaultConfig {
    applicationId = "com.example.flutter_firebase" //harus sama dengan android/app/google-services.json/client/client info
    
    minSdk = 23 //minimal 23 untuk firebase integration



==== pastikan sudah tambah user ====



