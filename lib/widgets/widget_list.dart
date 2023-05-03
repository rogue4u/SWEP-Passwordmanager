// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:passwordmanager/logic/data.dart';
import 'package:flutter/services.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.99,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Scaffold(
            body: ListView.builder(
                itemCount: passwordList.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: ListTile(
                      title: Text(passwordList[index].title),
                      subtitle: Text(passwordList[index].email),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            //Dialog
                            return AlertDialog(
                              title: Text(passwordList[index].title),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text('Title'),
                                  TextField(
                                    onChanged: (value) {
                                      var titleInputValue = value;
                                      print(titleInputValue);
                                    },
                                    decoration: InputDecoration(
                                      hintText: passwordList[index].title,
                                    ),
                                  ),
                                  const Spacer(flex: 2),
                                  const Text('Username'),
                                  TextField(
                                    onChanged: (value) {
                                      var usernameInputValue = value;
                                      print(usernameInputValue);
                                    },
                                    decoration: InputDecoration(
                                      hintText: passwordList[index].username,
                                    ),
                                  ),
                                  const Spacer(flex: 2),
                                  const Text('EMail'),
                                  TextField(
                                    onChanged: (value) {
                                      var eMailInputValue = value;
                                      print(eMailInputValue);
                                    },
                                    decoration: InputDecoration(
                                      hintText: passwordList[index].email,
                                    ),
                                  ),
                                  const Text('Password'),
                                  const Spacer(flex: 2),
                                  TextField(
                                    onChanged: (value) {
                                      var passwordInputValue = value;
                                      print(passwordInputValue);
                                    },
                                    decoration: InputDecoration(
                                      hintText: passwordList[index].password,
                                    ),
                                  ),
                                  const Text('Notes'),
                                  const Spacer(flex: 2),
                                  TextField(
                                    onChanged: (value) {
                                      var notesInputValue = value;
                                      print(notesInputValue);
                                    },
                                    decoration: InputDecoration(
                                      hintText: passwordList[index].notes,
                                    ),
                                  ),
                                  const Text('Tags'),
                                  const Spacer(flex: 2),
                                  TextField(
                                    onChanged: (value) {
                                      var tagsInputValue = value;
                                      print(tagsInputValue);
                                    },
                                    decoration: InputDecoration(
                                      hintText:
                                          passwordList[index].tags.toString(),
                                    ),
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  child: const Text('Cancel'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                ElevatedButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    // ignore: unused_element
                                    void updatePasswordData(
                                        PasswordData passwordData,
                                        String titleInputValue,
                                        String usernameInputvalue,
                                        String eMailInputValue,
                                        String notesInputValue) {
                                      passwordData.setTitle(titleInputValue);
                                      passwordData
                                          .setUsername(usernameInputvalue);
                                      passwordData.setEmail(eMailInputValue);
                                      passwordData.setNotes(notesInputValue);
                                    }

                                    // Do something
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      leading: Icon(passwordList[index].icon),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.copy,
                        ),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(
                              text: passwordList[index].password));
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Copied to clipboard"),
                          ));
                          print('Copy Password');
                        },
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
