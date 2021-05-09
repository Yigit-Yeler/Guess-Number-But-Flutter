import 'package:flutter/material.dart';

class CommonWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.42,
      width: width * 0.816,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF2C2929),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.7,
                  child: ListTile(
                    title: Text(
                      'Ailem',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Toplam Harcama:',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF848589),
                            ),
                          ),
                          Text(
                            '900 TL',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Color(0xFFEBEFF6),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildRowCircleAvatar(),
                buildPaddingBottomCircleAvatar(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingBottomCircleAvatar() {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: CircleAvatar(
              radius: 38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: CircleAvatar(
              radius: 38,
            ),
          ),
        ],
      ),
    );
  }

  Row buildRowCircleAvatar() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: CircleAvatar(
            radius: 38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: CircleAvatar(
            radius: 38,
          ),
        ),
      ],
    );
  }
}
