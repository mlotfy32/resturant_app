import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:resturantapp/presentation/logIn/logIn_View_Model/logincubit_cubit.dart';
import 'package:resturantapp/presentation/resorces/appStrings.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/fontManager.dart';
import 'package:resturantapp/presentation/resorces/valuesManager.dart';

class CustomeFormFailed extends StatefulWidget {
  CustomeFormFailed(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.keyBordType,
      required this.errorText,
      required this.validation});
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyBordType;
  final String errorText;
  final String validation;

  @override
  State<CustomeFormFailed> createState() => _CustomeFormFailedState();
}

class _CustomeFormFailedState extends State<CustomeFormFailed> {
  final _formKey = GlobalKey<FormState>();
  List _list = [];
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogincubitCubit>(
      create: (context) => LogincubitCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.s20, vertical: AppSize.s14),
        child: TextFormField(
          onChanged: (value) {
            if (value.isEmpty == true) {
              BlocProvider.of<LogincubitCubit>(context).buttonIsActive(false);
            } else {
              BlocProvider.of<LogincubitCubit>(context).buttonIsActive(true);
            }
          },
          controller: widget.controller,
          key: _formKey,
          validator: (value) {
            if (value!.isEmpty) {
              return widget.validation == 'userName'
                  ? AppStrings.userNameInvalid
                  : AppStrings.passwordInvalid;
            }
          },
          keyboardType: widget.keyBordType,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorManager.formDicoration,
                  ),
                  borderRadius: BorderRadius.circular(18)),
              hintText: widget.hintText,
              label: Text(widget.hintText),
              hintStyle: FonstStyle.regular14),
        ),
      ),
    );
  }
}
