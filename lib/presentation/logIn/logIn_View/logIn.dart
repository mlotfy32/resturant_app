import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturantapp/presentation/logIn/logIn_View/customeButton.dart';
import 'package:resturantapp/presentation/logIn/logIn_View/customeForgetPass&&singUp.dart';
import 'package:resturantapp/presentation/logIn/logIn_View/formFaild.dart';
import 'package:resturantapp/presentation/logIn/logIn_View_Model/logIn_View_Modal.dart';
import 'package:resturantapp/presentation/logIn/logIn_View_Model/logincubit_cubit.dart';
import 'package:resturantapp/presentation/resorces/appStrings.dart';
import 'package:resturantapp/presentation/resorces/assetsmanager.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/valuesManager.dart';

class logIn extends StatelessWidget {
  logIn({super.key});
  final LogInViewModel _LogInviewModel = LogInViewModel();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool allhasData = false;
  bool isForm1Valid = false;
  bool isForm2Valid = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogincubitCubit>(
      create: (context) => LogincubitCubit(),
      child: Scaffold(
        backgroundColor: ColorManager.wight,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.only(top: AppPadding.p100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(AssetImages.splashLogo),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeFormFailed(
                    keyBordType: TextInputType.emailAddress,
                    controller: userName,
                    hintText: AppStrings.username,
                    errorText: AppStrings.usernameError,
                    validation: 'userName',
                  ),
                  CustomeFormFailed(
                    keyBordType: TextInputType.visiblePassword,
                    controller: password,
                    hintText: AppStrings.password,
                    errorText: AppStrings.passwordError,
                    validation: 'password',
                  ),
                  BlocConsumer<LogincubitCubit, LogincubitState>(
                    listener: (context, state) {
                      if (state is isButtonActive) {
                        allhasData = state.isActive;
                        isForm1Valid = state.isActive;
                        isForm2Valid = state.isActive;
                      }
                    },
                    builder: (context, state) {
                      return CustomeButton(
                        title: 'LogIn',
                        allhasData: allhasData,
                        onTap: () {
                          if (_formKey.currentState!.validate() &&
                              allhasData == true) {
                            print('Success LogIn');
                          } else {
                            print('Failed LogIn');
                          }
                        },
                      );
                    },
                  ),
                  CustomeRow()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
