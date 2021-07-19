import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/core/utils/responsive.dart';
import 'package:app_find_home/app/global_widgets/input_text.dart';
import 'package:app_find_home/app/global_widgets/primary_button.dart';
import 'package:app_find_home/app/modules/login/login_controller.dart';
import 'package:app_find_home/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => LayoutBuilder(
        builder: (context, constraint) {
          return Padding(
            padding: EdgeInsets.only(bottom: constraint.maxHeight * .1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: AppTheme.blue, fontWeight: FontWeight.w900),
                ),
                Text(
                  "Login form enjoy findhome",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.black38, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                    height: Responsive.getScreenSize(context).height * .05),
                InputText(
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
                SizedBox(
                    height: Responsive.getScreenSize(context).height * .02),
                Obx(
                  () => InputText(
                    iconPrefix: Icons.lock,
                    iconColor: AppTheme.light,
                    border: InputBorder.none,
                    keyboardType: TextInputType.text,
                    obscureText: _.isOscure.value,
                    maxLines: 1,
                    validator: null,
                    labelText: "Password",
                    filled: false,
                    enabledBorderColor: Colors.black26,
                    focusedBorderColor: AppTheme.cyan,
                    fontSize: 14.0,
                    fontColor: Colors.black45,
                    suffixIcon: GestureDetector(
                      onTap: _.showPassword,
                      child: Icon(
                        _.isOscure.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppTheme.light,
                      ),
                    ),
                    onChanged: _.onChangedPassword,
                  ),
                ),
                SizedBox(
                    height: Responsive.getScreenSize(context).height * .03),
                PrimaryButton(
                  texto: "Sign In",
                  onPressed: _.auth,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Forgot password",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.SIGNUP),
                      child: Text(
                        "Create new account",
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: AppTheme.blueDark,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
