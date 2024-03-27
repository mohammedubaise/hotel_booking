import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/color_page.dart';
import 'package:hotel_booking/icon.dart';
import 'package:hotel_booking/name_reservation.dart';
import 'package:intl/intl.dart';

import 'main.dart';

class selectDate extends StatefulWidget {
  const selectDate({super.key});

  @override
  State<selectDate> createState() => _selectDateState();
}

class _selectDateState extends State<selectDate> {
  List <DateTime?>
  date =[];
 int count=1;
 int total=0;
  @override
  Widget build(BuildContext context) {
    total=date.isEmpty ? 0 : date.last!.difference(date.first!).inDays;
    return Scaffold(
      backgroundColor: colorPage.firstColor,
      bottomNavigationBar:  Container(
        height: w*0.23,
        width: w*0.9,
        child: Column(
          children: [
            Container(
              height: w*0.15,
              width: w*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*0.15),
                color: colorPage.secondaryColor,

              ),
              child: InkWell(
                onTap:
                    () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => reservation(),));
                },
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: colorPage.firstColor,
                      fontWeight: FontWeight.w600,
                      fontSize: w*0.045,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPage.firstColor,
        leading: InkWell(
            onTap:() {
              Navigator.pop(context);
            },
            child: Center(child: SvgPicture.asset(icon.arrow,height: w*0.09,width: 0.09,))),
        title: Text("Select Date",
          style: TextStyle(
              fontSize: w*0.06,
              fontWeight: FontWeight.w700,
              color: colorPage.thirdColor
          ),),

      ),
body: Padding(
  padding: EdgeInsets.all(w*0.03),
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: w*0.8,
        width: w*1,
        decoration: BoxDecoration(
          color: colorPage.tenthColor,
          borderRadius: BorderRadius.circular(w*0.03)
        ),
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.range,
            firstDayOfWeek:1 ,
            selectedDayTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            selectedDayHighlightColor:colorPage.secondaryColor,


            // centerAlignModePicker: true,
            customModePickerIcon: SizedBox(),

          ),
          value: date,
          onValueChanged: (dates) {
             date = dates;
             setState(() {

             });
            }
            ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Check in",
            style: TextStyle(
            fontSize: w*0.055,
            fontWeight: FontWeight.w700,
            ),),
            Container(
            height: w*0.11,
            width: w*0.39,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(w*0.03),
            color:colorPage.thirteen,
            ),
            child: Padding(
              padding: EdgeInsets.all(w*0.03),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        date.isEmpty ? "" :  DateFormat.MMMd().format(date.first!).toString(),
                        style: TextStyle(
                          fontSize: w*0.04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: w*0.08,
                          height: w*0.05,
                          child: SvgPicture.asset(icon.calender)),
                    ],
                  ),
            ),
              ),
            ],
          ),

        Container(
          margin: EdgeInsets.only(top: w*0.06),
            child: SvgPicture.asset(icon.rightangle)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Check out",
              style: TextStyle(
                fontSize: w*0.055,
                fontWeight: FontWeight.w700,
              ),),
              Container(
                height: w*0.11,
                width: w*0.39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.03),
                  color:colorPage.thirteen,
                ),
                child: Padding(
                  padding: EdgeInsets.all(w*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        date.isEmpty || date.length==1 ? "" : DateFormat.MMMd().format(date.last!).toString(),
                        style: TextStyle(
                          fontSize: w*0.04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                          width: w*0.08,
                          height: w*0.05,
                          child: SvgPicture.asset(icon.calender)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Guest",
          style: TextStyle(
            fontSize: w*0.04,
            fontWeight: FontWeight.w700
          ),),
        ],
      ),
      Container(
        height: w*0.18,
        width: w*1,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.03),
        border: Border.all(color: colorPage.fourteen)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  count++;
                  setState(() {});
                },
                child:Container(
                  height: w*0.13,
                  width: w*0.13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w*0.03),
                        color: colorPage.tenthColor
                    ),
                  child: Padding(
                    padding:  EdgeInsets.all(w*0.05),
                    child: SvgPicture.asset(icon.plus),
                  )
                ),
            ),
            Text(count.toString()),
            InkWell(
                onTap: () {
                  count <= 1 ? 1 : count--;
                  setState(() {});


                },
                child:Container(
                  // margin: EdgeInsets.only(bottom: w*0.03),
                  height: w*0.13,
                  width: w*0.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.03),
                    color: colorPage.tenthColor
                  ),
                  child: Padding(
                    padding:EdgeInsets.all(w*0.05),
                    child: SvgPicture.asset(icon.minise),
                  ),
                ),
            ),
          ],
        ),
      ),
      SizedBox(height: w*0.15,),
      Text("Total: \$""${total*205}",
        style:TextStyle(
          fontSize: w*0.045,
          fontWeight: FontWeight.w700,
        ),),

  ],
  ),
),
    );
  }
}
