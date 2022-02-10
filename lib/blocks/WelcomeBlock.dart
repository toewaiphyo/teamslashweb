import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:slash_website/utils/Constants.dart';
import 'package:slash_website/controllers/HoverController.dart';

class WelcomeBlock extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            FittedBox(
              child: Column(
                children: [
                  Container(
                    padding:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  EdgeInsets.all(20): EdgeInsets.symmetric(horizontal: 50,vertical: 100),
                    child: ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? ResponsiveRowColumnType.COLUMN :ResponsiveRowColumnType.ROW ,
                      children: [
                        ResponsiveRowColumnItem(
                          columnOrder: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "We design & develop",
                                style: Constants.titleStyle,
                              ),
                              Text(
                                "Digital Experiences",
                                style: Constants.specialTitleStyle,
                              ),
                              Text(
                                "for businesses",
                                style: Constants.titleStyle,
                              ),
                              Container(
                                height: 6,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    gradient: Constants.underlineGradient),
                              ),
                              SizedBox(height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  40 :60,),
                              Text("Digitalize your business with remarkable web design,\nCustom Mobile application, and other software",
                                style: Constants.normalStyle.merge(TextStyle(fontSize:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 25 :20)),softWrap: false,),
                              SizedBox(height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  40 :60,),
                          GetBuilder<HoverController>(
                            init: HoverController(),
                            builder: (hover) {
                              return Container(
                                width: 290,
                                height: 90,
                                child: Stack(
                                  children: [
                                    AnimatedPositioned(
                                      duration: Duration(milliseconds: 100),

                                      top: hover.isHover ? 10 : 0,
                                      right: hover.isHover ? 10 :0,
                                      child: Container(
                                        width: 280,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            gradient: Constants.buttonHoverGradient,
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: SizedBox(),
                                      ),
                                    ),
                                    Positioned(
                                      top:  0,
                                      right: 0,
                                      child: ElevatedButton(
                                        onHover:(v){
                                          hover.onHoverGotoService(v);
                                        },
                                        onPressed: () {

                                        },
                                        style: ElevatedButton.styleFrom(
                                          elevation: 10,
                                            padding: EdgeInsets.zero,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(100))),
                                        child: Ink(
                                          decoration: BoxDecoration(
                                              gradient: Constants.buttonGradient,
                                              borderRadius: BorderRadius.circular(100)),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            width: 280,
                                            height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 80:70,
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Our Services',
                                                  style:Constants.buttonTextStyle
                                                ),
                                                Image.asset("assets/icons/next.png",width: 40,)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          )

                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                            columnOrder: 1,
                            child: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ?SizedBox(height: 60.0,):SizedBox()),
                        ResponsiveRowColumnItem(
                            columnOrder: 0,
                            child: Image.asset("assets/img/home_image.png",width: 700,))
                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                      Image.asset("assets/icons/partner.png",width: 150,),
                      SizedBox(height: 30,),
                      Text("Our Clients & Partners",style: Constants().subTitleStyle,),
                    SizedBox(height: 50,),
                    ResponsiveRowColumn(
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.COLUMN :ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(
                          columnOrder: 0,
                            child: Row(
                              children: [
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child:Container(
                                    padding: EdgeInsets.all(30),
                                    child: Column(
                                      children: [
                                        Image.asset("assets/img/uni_pharma.png",height: 160,),
                                        Text("Uni Pharmacy",style: Constants.normalStyle,)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox( width:ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? 20: 100,),
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child:Container(
                                    padding: EdgeInsets.all(30),
                                    child: Column(
                                      children: [
                                        Image.asset("assets/img/vital_tech.png",height: 160,),
                                        Text("Vital Tech",style: Constants.normalStyle,)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                        ResponsiveRowColumnItem(
                          columnOrder: 1,
                            child:SizedBox( width: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?20: 100, height: 20,)),
                        ResponsiveRowColumnItem(
                          columnOrder: 2,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child:Container(
                                padding: EdgeInsets.all(30),
                                child: Column(
                                  children: [
                                    Image.asset("assets/img/taw_win.png",height: 160,),
                                    Text("Taw Win Pharmacy",style: Constants.normalStyle,)
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),

                      SizedBox(height: 100,),

                      Image.asset("assets/img/how_we_work.png",width: 150,),
                      SizedBox(height: 30,),
                      Text("How we Work",style: Constants().subTitleStyle,),
                      SizedBox(height: 50,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: ResponsiveRowColumn(

                          columnCrossAxisAlignment: CrossAxisAlignment.center,
                          layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.COLUMN :ResponsiveRowColumnType.ROW,
                          children: [
                            ResponsiveRowColumnItem(
                              rowOrder: 0,
                                columnOrder: 0,
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.ROW :ResponsiveRowColumnType.COLUMN,
                                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(child: Text("1",style: Constants.titleStyle.merge(TextStyle(color: HexColor("#A770EF"),fontSize: 30)),)),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),
                                    ResponsiveRowColumnItem(child: SizedBox(height: 10,)),
                                    ResponsiveRowColumnItem(child: Container(height: 120,child: Image.asset("assets/img/howWeWork/work1.png",width: 100,))),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),

                                    ResponsiveRowColumnItem(child: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?Text("Discover &\nfind the\n problem",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,): Container(height: 120,child: Text("Discover &\nfind the\n problem",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,)))
                                  ],
                                )
                            ),
                            ResponsiveRowColumnItem(
                                rowOrder: 1,
                                columnOrder: 1,
                                child: Container(margin:ResponsiveWrapper.of(context).isSmallerThan(TABLET)?EdgeInsets.all(10): EdgeInsets.only(bottom: 40), child:ResponsiveWrapper.of(context).isSmallerThan(TABLET)? Image.asset("assets/img/howWeWork/arrow1M.png"):Image.asset("assets/img/howWeWork/arrow1D.png"))),
                            ResponsiveRowColumnItem(
                              rowOrder: 2,
                                columnOrder: 2,
                                child: ResponsiveRowColumn(
                                 layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.ROW :ResponsiveRowColumnType.COLUMN,
                                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(child: Text("2",style: Constants.titleStyle.merge(TextStyle(color: HexColor("#FDB99B"),fontSize: 30)),)),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),
                                    ResponsiveRowColumnItem(child: SizedBox(height: 10,)),
                                    ResponsiveRowColumnItem(child: Container(height: 120,child: Image.asset("assets/img/howWeWork/work2.png",width: 100,))),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),

    ResponsiveRowColumnItem(child: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?Text("Create Visuals",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,): Container(height: 120,child: Text("Create Visuals",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,)))
                                  ],
                                )
                            ),
                            ResponsiveRowColumnItem(
                              rowOrder: 3,
                                columnOrder: 3,
                                child: Container(margin:ResponsiveWrapper.of(context).isSmallerThan(TABLET)?EdgeInsets.all(10): EdgeInsets.only(bottom: 40), child:ResponsiveWrapper.of(context).isSmallerThan(TABLET)? Image.asset("assets/img/howWeWork/arrow2M.png"): Image.asset("assets/img/howWeWork/arrow2D.png"))),

                            ResponsiveRowColumnItem(
                              rowOrder: 4,
                                columnOrder: 4,
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.ROW :ResponsiveRowColumnType.COLUMN,
                                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(child: Text("3",style: Constants.titleStyle.merge(TextStyle(color: HexColor("#A8C0FF"),fontSize: 30)),)),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),
                                    ResponsiveRowColumnItem(child: SizedBox(height: 10,)),
                                    ResponsiveRowColumnItem(child: Container(height: 120,child: Image.asset("assets/img/howWeWork/work3.png",width: 100,))),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),

                                    ResponsiveRowColumnItem(child: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?Text("Develop and\nConstruct",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,): Container(height: 120,child: Text("Develop and\nConstruct",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,)))
                                  ],
                                )
                            ),
                            ResponsiveRowColumnItem(
                                rowOrder: 5,
                                columnOrder: 5,
                                child: Container(margin:ResponsiveWrapper.of(context).isSmallerThan(TABLET)?EdgeInsets.all(10): EdgeInsets.only(bottom: 40), child: ResponsiveWrapper.of(context).isSmallerThan(TABLET)? Image.asset("assets/img/howWeWork/arrow3M.png") : Image.asset("assets/img/howWeWork/arrow3D.png"))),
                            ResponsiveRowColumnItem(
                                rowOrder: 6,
                                columnOrder: 6,
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.ROW :ResponsiveRowColumnType.COLUMN,
                                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(child: Text("4",style: Constants.titleStyle.merge(TextStyle(color: HexColor("#74EBD5"),fontSize: 30)),)),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),
                                    ResponsiveRowColumnItem(child: SizedBox(height: 10,)),
                                    ResponsiveRowColumnItem(child: Container(height: 120,child: Image.asset("assets/img/howWeWork/work4.png",width: 100,))),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),

                                    ResponsiveRowColumnItem(child: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?Text("Test & Train",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,): Container(height: 120,child: Text("Test & Train",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,)))
                                  ],
                                )
                            ),
                            ResponsiveRowColumnItem(
                                rowOrder: 7,
                                columnOrder: 7,
                                child: Container(margin: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?EdgeInsets.all(10): EdgeInsets.only(bottom: 40), child:ResponsiveWrapper.of(context).isSmallerThan(TABLET)? Image.asset("assets/img/howWeWork/arrow4M.png") : Image.asset("assets/img/howWeWork/arrow4D.png"))),
                            ResponsiveRowColumnItem(
                                rowOrder: 8,
                                columnOrder: 8,
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.ROW :ResponsiveRowColumnType.COLUMN,
                                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowCrossAxisAlignment: CrossAxisAlignment.center,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(child: Text("5",style: Constants.titleStyle.merge(TextStyle(color: HexColor("#F98AFD"),fontSize: 30)),)),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),
                                    ResponsiveRowColumnItem(child: SizedBox(height: 10,)),
                                    ResponsiveRowColumnItem(child: Container(height: 120,child: Image.asset("assets/img/howWeWork/work5.png",width: 100,))),
                                    ResponsiveRowColumnItem(child: SizedBox(width: 40,)),

                                    ResponsiveRowColumnItem(child: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?Text("Optimize &\nGo Live",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,): Container(height: 120,child: Text("Optimize &\nGo Live",style: Constants.normalStyle,softWrap: true,textAlign: TextAlign.center,)))
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 100,),

                      Image.asset("assets/img/recommend.png",width: 150,),
                      SizedBox(height: 30,),
                      Text("What Our Clients Say",style: Constants().subTitleStyle,),
                      SizedBox(height: 50,),
                      Container(
                        child: ResponsiveRowColumn(
                          layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.COLUMN :ResponsiveRowColumnType.ROW,
                          children: [
                            ResponsiveRowColumnItem(
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child:Container(
                                  padding:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)? EdgeInsets.all(20) :EdgeInsets.all(30),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                            height: 120.0,
                                            child:  Align(
                                                alignment: Alignment.topCenter,
                                                child: Icon(Icons.format_quote,size: 60,color: Constants.primaryColor,))
                                        ),
                                      )
                                      ,
                                      Text("Their team is very responsive,\ncommunicating to help with\nnew requests.", style: Constants.normalStyle,softWrap: true,),
                                      Center(
                                        child: Container(
                                            height: 120.0,
                                            child:  Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Icon(Icons.format_quote,size: 60,color: Constants.primaryColor,))
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),),
                            ResponsiveRowColumnItem(child: SizedBox(width: 30,height: 30,)),
                            ResponsiveRowColumnItem(
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child:Container(
                                  padding:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)? EdgeInsets.all(20) :EdgeInsets.all(30),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 120.0,
                                          child:  Align(
                                              alignment: Alignment.topCenter,
                                              child: Icon(Icons.format_quote,size: 60,color: Constants.primaryColor,))
                                        ),
                                      )
                                     ,
                                      Text("They’re very knowledgeable\nand they provide expert\nadvice on how to tackle\nvarious challenges.", style: Constants.normalStyle,softWrap: true,),
                                      Center(
                                        child: Container(
                                            height: 120.0,
                                            child:  Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Icon(Icons.format_quote,size: 60,color: Constants.primaryColor,))
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),)
                          ],
                        ),
                      ),

                      SizedBox(height: 100,),
                  Container(
                    width: MediaQuery.of(context).size.width/0.9,
                    padding: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  EdgeInsets.all(0): EdgeInsets.symmetric(horizontal: 80,vertical: 100),
                    child: Column(
                      crossAxisAlignment:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)? CrossAxisAlignment.center:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product Goals?",
                          style: Constants.titleStyle.merge(TextStyle(
                              fontSize: Constants.subTitleSize
                          )),
                        ),
                        Text(
                          "Let's make it happen.",
                          style: Constants.specialTitleStyle.merge(TextStyle(
                              fontSize: Constants.subTitleSize
                          )),
                        ),

                        SizedBox(height:50,),
                        Text("Best Digital Solution for your business.",softWrap: true,style: Constants.normalStyle,),
                        SizedBox(height: 50,),
                        ResponsiveRowColumn(
                            rowCrossAxisAlignment: CrossAxisAlignment.start,
                            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                            columnCrossAxisAlignment: CrossAxisAlignment.start,
                            columnMainAxisAlignment: MainAxisAlignment.start,
                            layout:  ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ?  ResponsiveRowColumnType.COLUMN :ResponsiveRowColumnType.ROW,
                          children:[
                            ResponsiveRowColumnItem(
                                child:
                                Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text("Contact Us",style: Constants.normalStyle.merge(
                                        TextStyle(fontWeight: FontWeight.bold)),),
                                    SizedBox(height: 30,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.location_on_outlined,size: 30,),
                                        SizedBox(width: 15,),
                                        Text("No-52, Nyaung Phyu Sakham Quat,\nBogyoke Aung San Road,\nTaunggyi, Myanmar", style: Constants.normalStyle,),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.mail_outline,size: 30,),
                                        SizedBox(width: 15,),
                                        Text("mail@slashmm.tech", style: Constants.normalStyle,),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.phone,size: 30,),
                                        SizedBox(width: 15,),
                                        Text("09 979 099271 \n 09899494795", style: Constants.normalStyle,),
                                      ],
                                    ),
                                  ],
                                )),
                            ResponsiveRowColumnItem(child: SizedBox(width: 50,)),
                            ResponsiveRowColumnItem(

                                child:
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text("Menu",style: Constants.normalStyle.merge(
                                    TextStyle(fontWeight: FontWeight.bold)),),
                                SizedBox(height: 30,),
                                Text("Services", style: Constants.normalStyle,),
                                SizedBox(height: 10,),
                                Text("Our Work", style: Constants.normalStyle,),
                                SizedBox(height: 10,),
                                Text("About Us", style: Constants.normalStyle,),
                              ],
                            )),
                            ResponsiveRowColumnItem(child: SizedBox(width: 50,)),
                            ResponsiveRowColumnItem(
                                child:
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text("Services",style: Constants.normalStyle.merge(
                                    TextStyle(fontWeight: FontWeight.bold)),),
                                SizedBox(height: 30,),
                                Text("Mobile Application", style: Constants.normalStyle,),
                                SizedBox(height: 10,),
                                Text("Websites", style: Constants.normalStyle,),
                                SizedBox(height: 10,),
                                Text("Desktop Application", style: Constants.normalStyle,),
                                SizedBox(height: 10,),
                                Text("Other Services", style: Constants.normalStyle,),
                              ],
                            )),
                            ResponsiveRowColumnItem(child: SizedBox(width: 50,))
                          ]
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
