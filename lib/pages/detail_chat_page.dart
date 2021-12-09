import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/logo_chat_online.png',
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor4,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type Message...?',
                      hintStyle: subtitleTextStyle,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/button_send.png',
              width: 45,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
    );
  }
}
