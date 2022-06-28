import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String img, notify, time;
  final Function() function;

  const NotificationItem(
      {Key? key,
      required this.img,
      required this.notify,
      required this.time,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: function,
        child: Container(
          height: 80.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(.2),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 2.0,
                offset: Offset(4.0, 4.0),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    notify,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Image.asset('assets/profile_icon.png'),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: Center(
                    child: Text(
                      '$time m ago',
                      style: const TextStyle(
                           overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
