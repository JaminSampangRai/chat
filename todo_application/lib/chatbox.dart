import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

class Chatbox extends StatefulWidget {
  const Chatbox({Key? key}) : super(key: key);

  @override
  State<Chatbox> createState() => _ChatboxState();
}

class _ChatboxState extends State<Chatbox> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  List messages = [];
  var myMessage = "";

  _send() async {
    var messageObject = {
      "id": Random(),
      "sender_id": 1,
      "reciever_id": 2,
      "date": DateTime.now(),
      "message": myMessage,
    };
    setState(() {
      messages.addAll({messageObject});
      messageController.text = "";
    });

    _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 100,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Jamin Sampang Rai",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          margin: const EdgeInsets.all(2),
          child: Column(
            children: [
              //chatt
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    itemCount: messages.length,
                    itemBuilder: ((context, index) {
                      return Align(
                        alignment: index % 2 == 0
                            ? Alignment.topLeft
                            : Alignment.topRight,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                            color: index % 2 == 0
                                ? Colors.grey.shade400
                                : Colors.blueAccent,
                            elevation: 2,
                            child: ListTile(
                              title: Text(messages[index]['message']),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Form(
                  key: _formkey,
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: messageController,
                          maxLines: null,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter message",
                          ),
                          onChanged: (value) {
                            setState(() {
                              myMessage = value;
                            });
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _send();
                        },
                        icon: Icon(Icons.send, color: Colors.blue[300]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
