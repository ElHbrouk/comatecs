import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {super.key, required this.statuesRequest, required this.widget});
  final StatuesRequest statuesRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statuesRequest == StatuesRequest.loading
        ? Center(
            child: Lottie.asset(
                height: 400,
                width: 400,
                frameRate: FrameRate.max,
                repeat: true,
                ImageAssets.loading),
          )
        : statuesRequest == StatuesRequest.connectionFailure
            ? Center(
                child: Lottie.asset(
                  height: 400,
                  width: 400,
                  frameRate: FrameRate.max,
                  repeat: true,
                  ImageAssets.images404,
                ),
              )
            : statuesRequest == StatuesRequest.serverFailure
                ? Center(
                    child: Lottie.asset(
                      height: 400,
                      width: 400,
                      frameRate: FrameRate.max,
                      repeat: true,
                      ImageAssets.images404,
                    ),
                  )
                : statuesRequest == StatuesRequest.failure
                    ? const Text(
                        'Failure',
                      )
                    : widget;
  }
}

class HandlingRequest extends StatelessWidget {
  const HandlingRequest(
      {super.key, required this.statuesRequest, required this.widget});
  final StatuesRequest statuesRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statuesRequest == StatuesRequest.loading
        ? Center(
            child: Lottie.asset(
                height: 400,
                width: 400,
                frameRate: FrameRate.max,
                repeat: true,
                ImageAssets.loading),
          )
        : statuesRequest == StatuesRequest.connectionFailure
            ? Center(
                child: Lottie.asset(
                  height: 400,
                  width: 400,
                  frameRate: FrameRate.max,
                  repeat: true,
                  ImageAssets.images404,
                ),
              )
            : statuesRequest == StatuesRequest.serverFailure
                ? Center(
                    child: Lottie.asset(
                      height: 400,
                      width: 400,
                      frameRate: FrameRate.max,
                      repeat: true,
                      ImageAssets.images404,
                    ),
                  )
                : widget;
  }
}
