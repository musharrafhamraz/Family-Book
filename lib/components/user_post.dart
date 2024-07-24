import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class UserPostWidget extends StatelessWidget {
  final String name;
  final String email;
  final String? imageUrl;
  final DateTime? timestamp;

  const UserPostWidget({
    super.key,
    required this.name,
    required this.email,
    this.imageUrl,
    this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    String timeAgo = '';
    if (timestamp != null) {
      timeAgo = timeago.format(timestamp!);
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: imageUrl != null
                    ? NetworkImage(imageUrl!)
                    : const AssetImage('assets/default_user.png')
                        as ImageProvider,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    timeAgo,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (imageUrl != null) // Check if there's an image URL
            Container(
              width: double.infinity,
              height: 200, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up_alt_outlined),
                onPressed: () {
                  // Add your logic for the Like button
                  print('Like button pressed');
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment_outlined),
                onPressed: () {
                  // Add your logic for the Comment button
                  print('Comment button pressed');
                },
              ),
              IconButton(
                icon: const Icon(Icons.share_outlined),
                onPressed: () {
                  // Add your logic for the Share button
                  print('Share button pressed');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
