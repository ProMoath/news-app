import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/features/home/models/top_headlines_api_response.dart';

import '../../../../core/utils/theme/app_colors.dart';

class RecommendationListWidget extends StatelessWidget {
  final List<Article> articles;
  const RecommendationListWidget({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: articles.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (_, index) {
        final article = articles[index];
        final parseData = DateTime.parse(article.publishedAt ?? DateTime.now().toString());
        final publishedDate = DateFormat.yMMMMd().format(parseData);
        return Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: CachedNetworkImage(
                imageUrl:
                    article.urlToImage ??
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdQogZKb-T6BI-dJRKvEXik0uD8bapenlK3xYUqQU6wA&s=10',
                width: 190,
                height: 180,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    publishedDate,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    article.title ?? '',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text('${article.author ?? ''}. $publishedDate'),
                  SizedBox(width: 180,
                    child: Text(
                      article.source?.name ?? '',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
        )
        ],
        );
      },
    );
  }
}