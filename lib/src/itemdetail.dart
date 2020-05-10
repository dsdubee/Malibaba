import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {

  final String directory = '/itemdetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            // Image
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/product1.jpg'),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                ),

                Positioned(
                  top: 25,
                  child: RaisedButton(
                    shape: CircleBorder(),
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                ),

                Positioned(
                  top: 25,
                  right: 1,
                  child: RaisedButton(
                    shape: CircleBorder(),
                    child: Icon(Icons.more_vert, color: Colors.white,),
                  ),
                ),

                Positioned(
                  top: 25,
                  right: 50,
                  child: RaisedButton(
                    shape: CircleBorder(),
                    child: Icon(Icons.favorite_border, color: Colors.white,),
                  ),
                ),

                Positioned(
                  top: 25,
                  right: 100,
                  child: RaisedButton(
                    shape: CircleBorder(),
                    child: Icon(Icons.file_upload, color: Colors.white,),
                  ),
                ),

              ],
            ),

            // Description
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
              ),
            ),

            SizedBox(height: 10,),

            // Rating and Buyers
            Row(
              children: <Widget>[

                SizedBox(width: 5,),

                Text('4.5'),

                Icon(Icons.star, color: Colors.orange,),
                Icon(Icons.star, color: Colors.orange,),
                Icon(Icons.star, color: Colors.orange,),
                Icon(Icons.star, color: Colors.orange,),
                Icon(Icons.star_half, color: Colors.orange,),

                SizedBox(width: 20,),

                Text('3 buyers'),
              ],
            ),

            SizedBox(height: 10,),

            // Product Name
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text('Onyx Ocean - Sailer Collection', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            ),

            // Detail
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Minimum Order: 1 Piece',
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
              ),
            ),

            SizedBox(height: 10,),

            // Warning message
            Container(
              margin: EdgeInsets.only(left: 8.0, right: 8.0),

              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(3, 6), // changes position of shadow
                  ),
                ],
              ),

              child: Row(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Icon(Icons.lightbulb_outline, color: Colors.orange,),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Stack(
                          children: <Widget>[
                            Text('Note: ', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                            Text('           Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0,),
                    child: Icon(Icons.close, size: 30, color: Colors.grey[600],),
                  )
                ],
              ),
            ),

            SizedBox(height: 5,),

            // Latest price button
            FlatButton(
              color: Colors.grey,
              child: Row(
                children: <Widget>[
                  Text('Get Latest Price'),
                  Expanded(child: Container(),),
                  Icon(Icons.more_vert),
                ],
              ),
            ),

            // Buttons
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.orange[50],

                      borderRadius: BorderRadius.circular(30.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 6), // changes position of shadow
                        ),
                      ],
                    ),

                    child: FlatButton(child: Text('CHAT NOW', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.orange),),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.orange,

                      borderRadius: BorderRadius.circular(30.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 6), // changes position of shadow
                        ),
                      ],
                    ),

                    child: FlatButton(child: Text('SEND INQUIRY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.orange,

                      borderRadius: BorderRadius.circular(30.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 6), // changes position of shadow
                        ),
                      ],
                    ),

                    child: FlatButton(child: Text('START ORDER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.white),),),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
