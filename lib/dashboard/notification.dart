import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/notificationcard.dart';
import 'package:jeecarnot/models/notificationmodel.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/providers/otherproviders.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
 bool _loading = true;

 List<NotificationModel> notify = List<NotificationModel>();

 @override 
 void initState(){
   super.initState();
   notify = getNotification();
 }

 getNotification() async {
    NotificationProvide noticlass = NotificationProvide();
    await noticlass.getNotification();
    notify = noticlass.notifylist;
    setState(() {
      _loading = false;
    });

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: Icon(
          Icons.arrow_back,
          color: whiteColor,
        ),
        backgroundColor: primaryColor,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
            child:Column(
              children: [
                  Container(
                    padding: EdgeInsets.only(top: 16),
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: notify.length,
                      itemBuilder: (context, index) {
                        return NotifyCard(title: notify[index].title,);
                      },
                    ),
                  )
              ],
            ) ,
    ),
    );
  }
}
