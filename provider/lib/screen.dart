import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/eligibilityscreen.dart';

class Voting extends StatefulWidget {
  const Voting({super.key});

  @override
  State<Voting> createState() => VotingState();
}

class VotingState extends State<Voting> {
  final votingAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibiltyScreenProvider>(
      create: (context) => EligibiltyScreenProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
            body: Container(
          padding: const EdgeInsets.all(16),
          child: Form(child: Consumer<EligibiltyScreenProvider>(
              builder: (context, provider, child) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (provider.isEligible == null)
                          ? Colors.grey
                          : provider.isEligible
                              ? Colors.green
                              : Colors.red,
                    ),
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: votingAge,
                    decoration:
                        const InputDecoration(hintText: "Enter your age"),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final int age = int.parse(votingAge.text.trim());
                        provider.checkElgibility(age);
                      },
                      child: const Text("Check if you can vote"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(provider.eligibilityMessage)
                ]);
          })),
        ));
      }),
    );
  }
}
