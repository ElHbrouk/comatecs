import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
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
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      ),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
            ),
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
                Container(
                  
                  padding: const EdgeInsetsDirectional.only(
                    top: 30,
                    start: 16,
                  ),
                  alignment: AlignmentDirectional.topStart,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: CustomBackButton(
                    color: Colors.grey[400],
                  ),
                ),
                IconButton(
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
              ],
            ),
          )
        : Container();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
