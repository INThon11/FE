import 'package:flutter/material.dart';
import 'questionList.dart';
import 'writeQuestion.dart';
import 'showLetter.dart';
import 'writeLetter.dart';


class todayQuestionWidget extends StatefulWidget {
  const todayQuestionWidget({super.key});

  @override
  State<todayQuestionWidget> createState() => _todayQuestionWidgetState();
}

class _todayQuestionWidgetState extends State<todayQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFF2E7),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF2E7),
        iconTheme: IconThemeData(color: Color(0XFF7B7066)),
        actions: [
        IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>showLetter()));
        },
        icon: Icon(
          Icons. mark_email_unread,
          color: Color(0xFF7B7066),
        ),
        )
      ]
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFF5E0CF),
        child: ListView(
          children: [
            Container(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.menu,
                color: Color(0XFF7B7066),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>todayQuestionWidget()));
              },
            ),
            Divider(
              thickness: 1,
              color: Color(0xFF7B7066),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color(0XFF7B7066),
              ),
              title: Text(
                '홈',
                style: TextStyle(
                  color: Color(0xFF7B7066),
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'NanumMyeongjo',
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>todayQuestionWidget()));
              },
            ),
            Divider(
              thickness: 1,
              color: Color(0xFF7B7066),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Color(0xFF7B7066),
              ),
              title: Text(
                '질문목록',
                style: TextStyle(
                  color: Color(0xFF7B7066),
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'NanumMyeongjo',
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>questionListWidget()));
              },
            ),
            Divider(
              thickness: 1,
              color: Color(0xFF7B7066),
            ),
            ListTile(
              leading: Icon(
                Icons.create,
                color: Color(0xFF7B7066),
              ),
              title: Text(
                '편지 쓰기',
                style: TextStyle(
                  color: Color(0xFF7B7066),
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'NanumMyeongjo',
                ),
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>writeLetter()));
              },
            ),
            Divider(
              thickness: 1,
              color: Color(0xFF7B7066),
            ),
        ]
      ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:Image.asset('assets/images/main.png',
              fit: BoxFit.cover
          ).image,
          ),
        ),
        child:Column(
          children: [
            Divider(
              thickness: 1,
              color: Color(0xff7b7066),
            ),
            SizedBox(height: 110),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 45.0), // Add right margin
                  child: Text(
                    '매일',
                    style: TextStyle(
                      fontFamily: 'NanumMyeongjo',
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 45.0), // Add right margin
                  child: Text(
                    '그대와',
                    style: TextStyle(
                      fontFamily: 'NanumMyeongjo',
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Color(0xFF7B7066),
            ),
            SizedBox(
              height: 15
            ),
            Text(
              '오늘의 질문',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w500,
                fontSize: 28,
                fontFamily: 'NanumMyeongjo',
              ),
            ),
            SizedBox(
              height: 15
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45), // Set margin
              child: Text(
                '당신의 어릴 적 장래희망은 무엇이었나요?',
                style: TextStyle(
                  fontFamily: 'NanumMyeongjo',
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center, // Center-align the text
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Color(0xFF7B7066),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: ()async{
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>writeQuestionWidget(questionId:4)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF5E0CF),
                ),
                child: Text(
                      '답변하기',
                  style: TextStyle(
                    fontFamily: 'NanumMyeongjo',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
          ],
        )
      )
    );
  }
}
