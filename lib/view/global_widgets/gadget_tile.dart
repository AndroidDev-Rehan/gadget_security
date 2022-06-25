import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/product.dart';
import 'global_rating.dart';


class EquipmentTile extends StatelessWidget {
  final bool addOn;
  final Product product;

  const EquipmentTile({Key? key, required this.product, required this.addOn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(() => ProductDetail(product: product, addOn: addOn));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Container(
          color: Colors.grey.withOpacity(0.3),
          child: IntrinsicHeight(
            child: Row(
              children: [
                (product.photoUrl.isEmpty)
                    ? Image.asset(
                  "assets/images/shoes.jpeg",
                  height: 140,
                  width: 120,
                  fit: BoxFit.cover,
                )
                    : Image.network(
                  product.photoUrl[0],
                  height: 140,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
// mainAxisSize: MainAxisSize.min,
                    children: [
                      // (true)?
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Provided by ",
                            style: TextStyle(color: Colors.grey),
                          ),
                  const Text(
                    "uname",
                    style: TextStyle(color: Colors.red),
                  ),],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Expanded(child: Text(product.title)),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RatingBar(
                              value: 5,
                              count: 5,
                              onPressed: () {}),
                          const SizedBox(width: 4,),
                          Text( "0")
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${5}\$/hr",
                        style: const TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      Text(true ? "Delivery/Set Up" : "Must be picked up",
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
