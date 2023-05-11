import 'package:airventure/utills/app_layout.dart';
import 'package:airventure/utills/app_styles.dart';
import 'package:airventure/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatefulWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  _TicketViewState createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            Showing the orange section
            Tashrif
             */
            Container(
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children:[
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints contraints ) {
                                print("The width is ${contraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate((contraints.constrainWidth()/6).floor(), (index) =>SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                  )),

                                );
                              },

                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded,color: Colors.white,),)),
                        ]

                      )),

                      ThickContainer(),
                      const Spacer(),
                      Text("DHA", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                   const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text('New-York', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("18H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100, child: Text('Dhaka', textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /* showing the red section*/
            Container(
              color: Styles.blueGrey,//const Color(0xE2076D9A),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                         topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints contraints ) {
                       return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((contraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.black
                              ),
                            ),
                          )),

                        );
                      },

                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            /*bottom section of red card*/
            Container(
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("April 13th",
                          style: Styles.headLineStyle3.copyWith(color: Colors.white ),),
                          const Gap(5),
                          Text("DATE",
                          style: Styles.headLineStyle4.copyWith(color: Colors.white),)

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00AM",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white ),),
                          const Gap(5),
                          Text("Departure Time",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("April 14th",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white ),),
                          const Gap(5),
                          Text("DATE",
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),)

                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
