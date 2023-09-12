import 'package:bookly_app/Features/home/presentation/view_model/home_view_cubit/home_view_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_model/newset_view_cubit/newset_cubit.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/home/data/repos/home_repo_impl.dart';
import 'core/utils/service_locator.dart';

void main() {
  setupGetIt();
  Bloc.observer = SimpleBlocObserver();

  runApp(const BookyApp());
}

class BookyApp extends StatelessWidget {
  const BookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeViewCubit(repo: getIt.get<HomeRepoImpl>())
              ..fetchHomeViewBooks(),
          ),
          BlocProvider(
            create: (context) => NewsetCubit(repo: getIt.get<HomeRepoImpl>())
              ..fetchNewsetBooks(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
        ),
      ),
    );
  }
}
