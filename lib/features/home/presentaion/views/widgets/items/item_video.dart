import 'package:comatecs/core/utils/widgets/custom_back_button.dart';
import 'package:comatecs/core/utils/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class ItemVideo extends StatefulWidget {
  const ItemVideo({super.key});

  @override
  State<ItemVideo> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Padding(
            padding: EdgeInsets.only(
              bottom: isVisible == false ? 44.0 : 16.0,
              top: isVisible == false ? 30.0 : 0.0,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: VideoPlayer(_controller),
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                      padding: EdgeInsetsDirectional.only(
                        top: MediaQuery.sizeOf(context).height * 0.03,
                        start: MediaQuery.sizeOf(context).width * 0.02,
                      ),
                      alignment: AlignmentDirectional.topStart,
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      child: CustomBackButton(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    child: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          },
                        );
                      },
                      icon: _controller.value.isPlaying
                          ? SvgPicture.asset(
                              ImageAssets.play,
                              height: 48,
                              width: 48,
                            )
                          : SvgPicture.asset(
                              ImageAssets.play,
                              height: 48,
                              width: 48,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
