import 'package:flutter/material.dart';

enum BG{
  month,
  year,
}
class PackageProMembership extends StatelessWidget {
  final String packageTitle;
  final BG packageType;


//  final int packageTitleNum;
  final Function() function;

  const PackageProMembership({
    Key? key,
    required this.packageTitle,
    required this.packageType,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8.0),
      child: InkWell(
        onTap: function,
        child: Stack(
          children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: Text(
                  'package',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: packageType == BG.month
                    ? Colors.deepPurple
                    : Colors.deepPurpleAccent.shade100,
                borderRadius: BorderRadius.circular(20.0),
//            boxShadow: const [
//              BoxShadow(
//                color: Colors.white,
//                blurRadius: 2.0,
//                offset: Offset(4.0, 4.0),
//              )
//            ],
              ),
            ),
            Positioned(
              bottom: 0.5,
              left: 0.5,
              right: 0.5,
              child: Container(
                height: 160.0,
//                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.99),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          packageTitle,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        color: packageType == BG.month
                            ? Colors.green.shade200
                            : Colors.red.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            packageType == BG.month
                                ? 'Most Popular'
                                : '+20 photos free',
                            style: const TextStyle(
                              fontSize: 16,
//                            backgroundColor: Colors.greenAccent,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [

                          const Text(
                            'The package alows you to',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
//                            backgroundColor: Colors.greenAccent,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            packageType == BG.month
                                ? 'detect up to 10 photo'
                                : 'detect up to 100 photo',
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 16,
//                            backgroundColor: Colors.greenAccent,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
