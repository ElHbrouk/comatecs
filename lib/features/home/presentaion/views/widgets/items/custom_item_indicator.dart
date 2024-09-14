import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomItemIndicator extends StatelessWidget {
  const CustomItemIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey[300]!,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 16,
          crossAxisSpacing: 9,
        ),
        itemBuilder: (BuildContext context, int index) => Container(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey[200]!,
              width: 1,
              strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 92,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 20,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 20,
                      width: 100,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
