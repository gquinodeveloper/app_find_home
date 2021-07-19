import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/core/utils/responsive.dart';
import 'package:app_find_home/app/global_widgets/input_text.dart';
import 'package:app_find_home/app/global_widgets/primary_button.dart';
import 'package:app_find_home/app/modules/signup/signup_controller.dart';
import 'package:app_find_home/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi!",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: AppTheme.blue, fontWeight: FontWeight.w900),
          ),
          Text(
            "Create a new account",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Colors.black38, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: Responsive.getScreenSize(context).height * .025),
          InputText(
            iconPrefix: Icons.person_outline,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.emailAddress,
            validator: null,
            labelText: "Name",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangedName,
            //onChanged: (value) => _.onChangedEmail(value),
          ),
          SizedBox(height: Responsive.getScreenSize(context).height * .02),
          InputText(
            iconPrefix: Icons.bubble_chart_outlined,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.emailAddress,
            validator: null,
            labelText: "Last Name",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangedLastName,
            //onChanged: (value) => _.onChangedEmail(value),
          ),
          SizedBox(height: Responsive.getScreenSize(context).height * .02),
          InputText(
            iconPrefix: Icons.directions_outlined,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.emailAddress,
            validator: null,
            labelText: "Adress",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangedadress,
            //onChanged: (value) => _.onChangedEmail(value),
          ),
          SizedBox(height: Responsive.getScreenSize(context).height * .02),
          InputText(
            initialValue: "Hola",
            iconPrefix: Icons.email_outlined,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.emailAddress,
            validator: null,
            labelText: "Email",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            onChanged: _.onChangedEmail,
            //onChanged: (value) => _.onChangedEmail(value),
          ),
          SizedBox(height: Responsive.getScreenSize(context).height * .02),
          InputText(
            //controller: _.controllerName,
            iconPrefix: Icons.lock_outline,
            iconColor: AppTheme.light,
            border: InputBorder.none,
            keyboardType: TextInputType.text,
            obscureText: true,
            maxLines: 1,
            validator: null,
            labelText: "Password",
            filled: false,
            enabledBorderColor: Colors.black26,
            focusedBorderColor: AppTheme.cyan,
            fontSize: 14.0,
            fontColor: Colors.black45,
            //onChanged: _.onChangedPassword,
          ),
          SizedBox(height: Responsive.getScreenSize(context).height * .03),
          PrimaryButton(
            texto: "Sign Up",
            onPressed: _.onClickInsertUser,
            //onPressed: ()=> _.onClickInsertUser(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Center(
            child: Text(
              "Already have an account",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.black38, fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () => Get.offNamed(AppRoutes.LOGIN),
              child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                    color: AppTheme.blueDark, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
