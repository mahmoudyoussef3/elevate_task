import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'DI/dependency_injection.dart';
import 'View/Screens/product_home_screen.dart';
import 'ViewModel/product_model_cubit.dart';

void main() {
  setup(); // Setup DI
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BlocProvider(
            create: (_) => getIt<ProductCubit>()..fetchProducts(),
            child: const ProductHomeScreen(),
          ),
        );
      },
    );
  }
}
