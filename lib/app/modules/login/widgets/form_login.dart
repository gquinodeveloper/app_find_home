import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/core/utils/responsive.dart';
import 'package:app_find_home/app/global_widgets/input_text.dart';
import 'package:app_find_home/app/global_widgets/primary_button.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
              SizedBox(height: Responsive.getScreenSize(context).height * .05),
              InputText(
                iconPrefix: Icons.email,
                iconColor: AppTheme.light,
                border: InputBorder.none,
                keyboardType: TextInputType.emailAddress,
                validator: null,
                labelText: "Correo electrónico",
                filled: false,
                enabledBorderColor: Colors.black26,
                focusedBorderColor: AppTheme.cyan,
                fontSize: 14.0,
                fontColor: Colors.black45,
                //onChanged: _.onChangedEmail,
              ),
              SizedBox(height: Responsive.getScreenSize(context).height * .02),
              InputText(
                iconPrefix: Icons.lock,
                iconColor: AppTheme.light,
                border: InputBorder.none,
                keyboardType: TextInputType.text,
                obscureText: true,
                maxLines: 1,
                validator: null,
                labelText: "Contraseña",
                filled: false,
                enabledBorderColor: Colors.black26,
                focusedBorderColor: AppTheme.cyan,
                fontSize: 14.0,
                fontColor: Colors.black45,
                suffixIcon: Icon(
                  Icons.visibility,
                  color: AppTheme.light,
                ),
                //onChanged: _.onChangedpassword,
              ),
              SizedBox(height: Responsive.getScreenSize(context).height * .03),
              PrimaryButton(texto: "Login"),
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
                  Text(
                    "Create new account",
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: AppTheme.blueDark, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
    /* return Container(
      height: 400.0,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          PrimaryButton(),
        ],
      ),
    ); */
  }
}
