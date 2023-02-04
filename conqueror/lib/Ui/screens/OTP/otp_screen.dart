import 'package:conqueror/Ui/widgets/common/button.dart';
import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/const/const.dart';
import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/navigation/paths.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 120,
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Constance.appName, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
                  Text("Online & offline shopping", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Heading(title: 'Phone', padding: EdgeInsets.only(left: 20, top: 10), fontSize: 40, subtile: "Enter your mobile number."),
              const SizedBox(height: 20),
              // Phone number input felid
              // With mac allowed number length of 10.
              // Only can enter indian number.
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  maxLength: 10,
                  maxLines: 1,
                  minLines: 1,
                  autocorrect: false,
                  keyboardType: TextInputType.phone,
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                    counterText: "",
                    contentPadding: EdgeInsets.all(20),
                    labelText: 'Mobile number (+91)',
                  ),
                ),
              ),
              // Spacing between
              const SizedBox(height: 10),
              // Spacing between
              ValueListenableBuilder(
                valueListenable: phoneNumberController,
                builder: (context, snapshot, child) {
                  return Button(
                    onTap: () => NavigationHelper.navigate(path: Paths.register),
                    text: "Send OTP",
                    interWidth: displayWidth(context) / 1.1,
                    interHeight: 50,
                  );
                },
              ),
              // Spacing between
              const SizedBox(height: 20),
              // Spacing between
              // Explains your for why we are asking phone number (Part of UX)
              Text('We will send you a verification code to verify your mobile number. ', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
