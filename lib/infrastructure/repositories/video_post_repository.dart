import 'package:tok_tik_app/domain/datasources/video_post_datasource.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';

import '../../domain/repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosPostDatasource;

  VideoPostRepositoryImpl({required this.videosPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosPostDatasource.getTrendingVideosByPage(page);
  }
}
