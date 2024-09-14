import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Model/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 180.w,
                height: 160.h,
                child: Image.network(product.image),
              ),
              Positioned(
                top: 10.h,
                right: 10.w,
                child: CircleAvatar(
                  radius: 14.r,
                  backgroundColor: Colors.black45,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 16.sp,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      "EGP ${product.price.toString()}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      '1000',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Review(${product.rating['rate'].toString()})'),
                    Icon(Icons.star, color: Colors.yellow, size: 16.sp),
                    const Spacer(),
                    const CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          (Icons.add),
                          color: Colors.white,
                          size: 20,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
