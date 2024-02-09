import 'package:flutter/material.dart';
import 'package:my_project/services/user_api.dart';
import 'package:my_project/style/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    fetchusers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call Log Acess App'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name.first),
            subtitle: Text(user.cell),
          );
        },
      ),
    );
  }

  Future<void> fetchusers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
  

  /*Future<void> fetchUsers() async {
    print('fetchUsers called');
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e) {
      final name = UserName(
        title: e['name']['title'],
        first: e['name']['first'],
        last: e['name']['last'],
      );
      return User(
        gender: e['gender'],
        email: e['email'],
        phone: e['phone'],
        cell: e['cell'],
        nat: e['nat'],
        name: name,
      );
    }).toList();
    setState(() {
      users = transformed;
    });
    print('fetchUsers completed');
  }
}
}*/
