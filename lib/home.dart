import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  double result = 0;
  void convertcurrency() {
    setState(() {
      result = double.tryParse(entered.text)! * 83.02;
    });
  }

  void check() {
    formKey.currentState?.validate();
    setState(() {
      convertcurrency();
    });
    FocusScope.of(context).unfocus();
  }

  final entered = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            
            'INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(1)}',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: entered,
                validator: (value) {
                  if (value!.isEmpty || double.tryParse(value)! < 0) {
                    return "Enter a vaild amount ";
                  }

                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  prefix: Text('\$'),
                  labelText: "Enter amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: check,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 39, 0, 93)),
            child: const Text(
              'Convert',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
