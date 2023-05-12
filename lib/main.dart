import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik_app/presentation/screens/discover/discover_screen.dart';
import 'package:tok_tik_app/presentation/screens/discover/providers/discover_provider.dart';

import 'config/theme/app_theme.dart';
import 'infrastructure/datasources/local_video_datasource_impl.dart';
import 'infrastructure/repositories/video_post_repository.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImpl(
      videosPostDatasource: LocalVideoDatasourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) =>
              DiscoverProvider(videoPostRepository: videoPostRepository)
                ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TokTik',
        theme: AppTheme().getTheme(),
        home: const DiscovereScreen(),
      ),
    );
  }
}
