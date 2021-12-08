import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listOfContacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  myContact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "${myContacts[index]["image"]} ${index + 29}"),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfContacts = [
  {
    "name": "Esther Smith",
    "location": "Ullo",
    "email": "babaremakurong@gmail.com",
    "phone": "+233249975413",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Dery Songnouma",
    "location": "Tampoe",
    "email": "mary@gmail.com",
    "phone": "+233249975434",
    "Group": "National Mobile App Dev",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Wiribare Emmanuel",
    "location": "Tuopare",
    "email": "wiribare@gmail.com",
    "phone": "+233249975169",
    "Group": "Pax platform",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Alice Aasoma",
    "location": "Kpare",
    "email": "aliceaasoma@gmail.com",
    "phone": "+233248575417",
    "Group": " IT Department",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Donzie Modestar",
    "location": "Karni",
    "email": "modesta@gmail.com",
    "phone": "+233241115410",
    "Group": "Karni Community",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Tibgoro Max",
    "location": "Jirapa",
    "email": "max@gmail.com",
    "phone": "+233249900419",
    "Group": "Developers",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Tengbee Moses",
    "location": "Kogri",
    "email": "tenbee@gmail.com",
    "phone": "+233249975418",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Dery Max",
    "location": "Vivin",
    "email": "dery@gmail.com",
    "phone": "+233249975409",
    "Group": "CCR",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Ngmennapoe Jere",
    "location": "Gyanvuuri",
    "email": "ngmennapoe@gmail.com",
    "phone": "+233249975431",
    "Group": "Girls child education",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Kelvin Dorzie",
    "location": "Ul_Kpong",
    "email": "dorzie@gmail.com",
    "phone": "+233249975420",
    "Group": "Farmers",
    "image": "https://picsum.photos/200/300?random="
  },
  {
    "name": "Kpokpore Janet",
    "location": "Kogri No.2",
    "email": "kpokpore@gmail.com",
    "phone": "+233249975418",
    "Group": "Market women",
    "image": "https://picsum.photos/200/300?random="
  },
];
