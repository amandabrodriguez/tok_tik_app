import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik_app/presentation/screens/discover/providers/discover_provider.dart';
import 'package:tok_tik_app/presentation/widget/shared/video_scrollable_view.dart';

class DiscovereScreen extends StatelessWidget {
  const DiscovereScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DiscoverProvider discoverProvider = context.watch();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : VideoScrollableView(videos: discoverProvider.videos),
    );
  }
}
