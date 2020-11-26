import 'package:flutter/material.dart';
import 'package:example_flutter_boilerplate/find/Company.dart';

//
class CompanyItem extends StatelessWidget {

  final Company model;

  CompanyItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:NetworkImage(model.logo),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Text(
                            model.location,
                            maxLines: 1,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "|" + model.type,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "|" + model.size,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "|" + model.employee,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 350,
                    child: Divider(height: 1, color: Colors.grey),
                  ),
                  Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "热招: ${model.hot} 等${model.count}个职位",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
