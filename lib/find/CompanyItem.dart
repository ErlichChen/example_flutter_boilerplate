import 'package:flutter/material.dart';
import 'package:example_flutter_boilerplate/find/Company.dart';

class CompanyItem extends StatelessWidget {
  final Company model;
  CompanyItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    top: 10.0,
                  ),
                  child: Image.network(
                    model.logo,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 0.0,
                    right: 5.0,
                    bottom: 5.0,
                  ),
                  child: Text(
                    model.location.substring(0,
                        model.location.length > 6 ? 6 : model.location.length),
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                    right: 10.0,
                    bottom: 5.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '|' + model.type,
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                      Text(
                        '|' + model.size,
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                      Text(
                        '|' + model.employee,
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 10.0,
                    right: 5.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    // '热招：' + model.hot + '等' + model.count + '个职位',
                    '热招：${model.hot}等${model.count}个职位',
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
