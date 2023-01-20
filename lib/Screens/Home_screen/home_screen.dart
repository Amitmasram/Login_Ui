import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Hello',
            style: TextStyle(
                fontSize: 24, fontFamily: 'RobotoSla', color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepPurpleAccent,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.groups_rounded),
              ),
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 14,
            ),
            const Icon(Icons.person),
            const SizedBox(
              width: 11,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => const [
                      PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('Setting')),
                      PopupMenuItem(value: '3', child: Text('Logout')),
                    ]),
          ],
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: Card(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: Text('New Community'),
                    subtitle: Text('What time do you come tomorrow?'),
                    trailing: Text('6:09 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Amit Masram'),
                    subtitle: Text('What time do you come tomorrow?'),
                    trailing: Text('6:09 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Row(children: const [
                              Text(
                                'New updates',
                              )
                            ]),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: const Text('Amit Masram'),
                            subtitle: const Text('35m ago'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Row(children: const [
                              Text(
                                'New updates',
                              )
                            ]),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: const Text('Amit Masram'),
                            subtitle: const Text('35m ago'),
                          ),
                        ],
                      ),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1759531/pexels-photo-1759531.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: const Text('Amit Masram'),
                    subtitle: Text(index / 2 == 0
                        ? 'you missed audio call'
                        : 'December 18,12:57'),
                    trailing: Icon(index / 2 == 0
                        ? Icons.phone
                        : Icons.video_call_rounded),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
