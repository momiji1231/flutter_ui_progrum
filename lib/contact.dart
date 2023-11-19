import 'package:flutter/material.dart';

class ContactModel {
  String email;
  String name;
  String content;
  ContactModel(this.email, this.name, this.content);
}

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final regex = RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b');
  var contact = ContactModel("", "", "");
  Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("メールアドレス"),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "メールアドレス",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'メールアドレスが未入力です';
                      }
                      if (!regex.hasMatch(value)) {
                        return 'メールアドレスの形式が不正です';
                      }
                      return null;
                    },
                    onSaved: (newValue) => contact.email = newValue ?? "",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("お名前"),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "お名前",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '名前が未入力です';
                      }
                      return null;
                    },
                    onSaved: (newValue) => contact.name = newValue ?? "",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("お問い合わせ内容"),
                  TextFormField(
                      minLines: 5,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        labelText: "お問い合わせ内容",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'お問い合わせ内容が未入力です';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          await showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  content: Text(
                                      "メールアドレス\n${contact.email}\nお名前: ${contact.name}\n問い合わせ内容: ${contact.content}"),
                                );
                              });
                        }
                      },
                      child: const Text('送信'),
                    ),
                  )
                ],
              ),
            ))));
  }
}
