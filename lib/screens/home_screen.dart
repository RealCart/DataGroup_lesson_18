import 'package:flutter/material.dart';
import 'package:lesson_18/device_type_util.dart';
import 'package:lesson_18/inheritated_app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (context) {
            if (DeviceTypeUtil.isTablet(context)) {
              return Text(
                "Это планшет",
                style: Theme.of(context).textTheme.bodyMedium,
              );
            }

            return SizedBox.shrink();
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  "Hello",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20.0),
                Switch.adaptive(
                  value:
                      InheritatedAppTheme.of(context).theme.value ==
                      ThemeMode.dark,
                  onChanged: (value) {
                    InheritatedAppTheme.of(context).theme.toggleMode();
                  },
                ),
                ...List.generate(
                  40,
                  (int index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Card(
                        child: Center(
                          child: Text("Card number #${index + 1}"),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
