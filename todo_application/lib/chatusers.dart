import 'package:flutter/material.dart';
import 'package:todo_application/chatbox.dart';

class Chatuser extends StatefulWidget {
  const Chatuser({Key? key}) : super(key: key);

  @override
  State<Chatuser> createState() => _ChatuserState();
}

class _ChatuserState extends State<Chatuser> {
  final TextEditingController _searchController = TextEditingController();
  List convoList = [
    {
      "name": "jamin",
      "class": "1",
      "message": "hi",
      "cast": "rai",
      "code": "coder"
    },
    {
      "name": "sahan",
      "class": "1",
      "message": "k",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "bikal",
      "class": "1",
      "message": "nae",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "sanzip",
      "class": "1",
      "message": "kina?",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "anil",
      "class": "1",
      "message": "hoss la",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "roshan ",
      "class": "1",
      "message": "kata jane ra",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "vae ",
      "class": "1",
      "message": "haha",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "dae ",
      "class": "1",
      "message": ".....",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "ss ",
      "class": "1",
      "message": "dsbfd",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "hoo ",
      "class": "1",
      "message": ".d",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "o ",
      "class": "1",
      "message": "sbds",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "dae1 ",
      "class": "1",
      "message": "gdysb",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "roshan tamang ",
      "class": "1",
      "message": "lera aauchu",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    },
    {
      "name": "saroj ",
      "class": "1",
      "message": "hudaena",
      "cast": "rai",
      "code": "coder",
      "dsfh": "dsbfhds"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  const Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xFFe9eaec),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  cursorColor: const Color(0xFF000000),
                  controller: _searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: const Color(0xFF000000).withOpacity(0.5),
                      ),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 14,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Chatbox())),
                                  child: const CircleAvatar(
                                    radius: 36,
                                    backgroundImage: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                  ),
                                ),
                                Text(
                                  convoList[index]['name'],
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 13,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Chatbox())),
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage('https://source.unsplash.com/random'),
                      ),
                      title: Text(
                        convoList[index]['name'],
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                      subtitle: Text(convoList[index]['message']),
                      trailing: const Text('3 min ago'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
