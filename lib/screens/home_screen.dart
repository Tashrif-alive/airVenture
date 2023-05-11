import 'package:airventure/screens/ticket_veiw.dart';
import 'package:airventure/screens/top_bar.dart';
import 'package:airventure/utills/app_styles.dart';
import 'package:airventure/screens/login_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isClicked = false;
  void _navigateToLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void onTap(){
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      backgroundColor: Styles.background,
      body: ListView(
        children: [
          Container(
            decoration:
            BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[Color(988459), Color(635738)] )
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("WELCOME", style: Styles.headLineStyle3),
                      ],
                    ),

                    InkWell(
                      onTap: (){},
                      splashColor: Colors.deepOrange,
                      child:  Container(
                        height: 40,
                        width: 40,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/img_1.png"),
                          ),
                        ),
                      ),


                    ),
                  ],
                ),
                const Gap(25),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed:onTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isClicked ? Colors.white70:Colors.black12
                        , // Change the button color here
                      ),

                      child: Text('One Way',
                        style: Styles.headLineStyle7,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    TextButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:isClicked ? Colors.black12:Colors.white70
                        , // Change the button color here
                      ),
                      child: Text('Round Trip',
                        style: Styles.headLineStyle8,
                      ),
                    ),
                  ],
                ),

                const Gap(5),
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  Colors.black12,
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_my_location_regular,
                          color: Colors.white70),
                      Text(
                        " From",
                        style: Styles.headLineStyle6,
                      )
                    ],
                  ),
                ),
                const Gap(7),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  Colors.black12,
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_globe_location_regular,
                          color: Colors.white70),
                      Text(
                        " To",
                        style: Styles.headLineStyle6,
                      )
                    ],
                  ),
                ),
                const Gap(7),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_calendar_filled,
                          color: Colors.white70),
                      Text(
                        " Date",
                        style: Styles.headLineStyle6,
                      )
                    ],
                  ),
                ),
                const Gap(7),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                  child: Row(
                    children: [
                      const Icon(Icons.supervisor_account_sharp,
                          color: Colors.white70),
                      Text(
                        "  Traveller",
                        style: Styles.headLineStyle6,
                      )
                    ],
                  ),
                ),
                const Gap(5),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _navigateToLoginPage,
                  child: Text('Search'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade900, // Change the button color here
                  ),
                ),
              ),

              const Gap(10),


              ],
            ),
          ),
           //middle_bar by Tashrif jubaer
           //don't copy my code dude
           //this is a middle bar_code
          Container(
            height: 56.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const SizedBox(
                    width: 6.0, // width of the original text widget
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Flight Status',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Visa2fly',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.5
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Flights',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Hotels',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Trains',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
       const Gap(5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your function for the first button here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your function for the second button here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your function for the third button here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


          const Gap(25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TicketView(),
                TicketView(),
                TicketView()
              ],
            ),
          ),
          const Gap(40),
          DashCategoryWidget(textTheme: Typography.blackCupertino),
          ElevatedButton(
            onPressed: _navigateToLoginPage,
            child: Text('Test Button'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12, // Change the button color here
            ),
          ),

          const Gap(15),



    ],
      ),

    );
  }

  Widget _buildIconButton(IconData iconData, String title) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF4F6FD),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          const Gap(5),
          Text(title, style: Styles.headLineStyle5),
        ],
      ),
    );
  }
}
