import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class CyclePage extends StatefulWidget {
  CyclePage({Key key}) : super(key: key);

  @override
  _CyclePageState createState() => _CyclePageState();
}

class _CyclePageState extends State<CyclePage> {
  DateTime _dateTime=DateTime.now();
  _showDatePicker(){
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('OK', style: TextStyle(color: Colors.red)),
        cancel: Text('Back', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse('2000-02-02'),
      maxDateTime: DateTime.parse('2090-03-02'),
      initialDateTime: DateTime.now(),
      dateFormat:'yyyy-MMMM-dd',
      locale: DateTimePickerLocale.en_us,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
}
  List<Map>listImage=[
  {
    "image":"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg",
  },
  {
    "image":"https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg",
  },
  {
    "image":"https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/slideshows/dog_breed_health_issues_slideshow/1800x1200_dog_breed_health_issues_slideshow.jpg",
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cycle")),
      body:Column(
        children: <Widget>[
          AspectRatio(aspectRatio: 1.5/1,
         child: Container(
            width: double.infinity,
            height:300,
            child:Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network(listImage[index]["image"],fit: BoxFit.fill,);
        },
        itemCount: listImage.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
        autoplay: true,
      ),
          )
          ),
        SizedBox(height:40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            InkWell(
              child:Row(children: <Widget>[
                Text(_dateTime.toString()),
                Icon(Icons.arrow_back),
              ],),
              onTap: _showDatePicker,
            )
        ],)

        ],
      )
    );
  }
}