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
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            label: Text('Настройки',style: TextStyle(fontSize: 20, color: Colors.black),),
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
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  print('click');
                },
                child: RowWidgets(
                    icon: Icons.change_history, text: 'Изменить тариф')),
            InkWell(
                onTap: () {},
                child: RowWidgets(icon: Icons.person, text: 'Данные аккаунта')),
            InkWell(
                onTap: () {},
                child: RowWidgets(icon: Icons.settings, text: 'Основные')),
            InkWell(
                onTap: () {},
                child: RowWidgets(
                    icon: Icons.list_alt_sharp, text: 'Настройки виджета')),
            InkWell(
                onTap: () {},
                child: RowWidgets(icon: Icons.alarm, text: 'Напоминания')),
            InkWell(
                onTap: () {},
                child:
                    RowWidgets(icon: Icons.notifications, text: 'Уведомления')),
            InkWell(
              onTap: () {},
              child: RowWidgets(
                icon: Icons.exit_to_app,
                text: 'Выйти из аккаунта',
                mail: 'xxx@mail.ru',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowWidgets extends StatelessWidget {
  final IconData icon;
  final String text;
  final String mail;

  const RowWidgets(
      {Key? key, required this.icon, required this.text, this.mail = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Text(
            mail,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
