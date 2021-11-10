import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            label: Text(
              'Настройки',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
        elevation: 6,
      ),
      body: MenuWidget(),
    );
  }
}


class MenuWidget extends StatelessWidget {
  final List<Data> data = [
    Data(icon: Icons.change_history, text: 'Изменить тариф'),
    Data(icon: Icons.person, text: 'Данные аккаунта'),
    Data(icon: Icons.settings, text: 'Основные'),
    Data(icon: Icons.list_alt_sharp, text: 'Настройки виджета'),
    Data(icon: Icons.alarm, text: 'Напоминания'),
    Data(icon: Icons.notifications, text: 'Уведомления'),
  ];

  MenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final rowWidgetsData = data.map((data) => RowWidgets(data: data)).toList();
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: rowWidgetsData,
      ),
    );
  }
}


class Data {
  final IconData icon;
  final String text;
  final String mail;
  Data({required this.icon, required this.text, this.mail = ''});
}


class RowWidgets extends StatelessWidget {
  final Data data;

  const RowWidgets({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      child: InkWell(
        onTap: (){},
        child: Row(
          children: [
            Icon(data.icon),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                data.text,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Text(
              data.mail,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
