import 'package:flutter/material.dart';

class CoffeeDetailsDetailsSectionOverPhoto extends StatelessWidget {
  const CoffeeDetailsDetailsSectionOverPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 276,
      child: Container(
        width: MediaQuery.of(context).size.width - 34,
        height: 160.99,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Color(0xAA1D0D00),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cappuccino',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5.31,
                ),
                Text(
                  'With Oat Milk',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5099999904632568),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFB77651),
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 36,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 46,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF010101)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.coffee,
                            color: Color(0xffB87651),
                          ),
                          Text(
                            'Coffee',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.3400000035762787),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Container(
                      width: 46,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF010101)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Icon(
                        Icons.water_drop,
                        color: Color(0xffB87651),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 117,
                  height: 32.76,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF010101)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Medium roasted',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.3400000035762787),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
