import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/user_post.dart';

class UserDataListScreen extends StatelessWidget {
  UserDataListScreen({super.key});
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore
            .collection('users')
            .orderBy('timestamp', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text('No data available'),
            );
          }

          final users = snapshot.data!.docs;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return UserPostWidget(
                name: user['name'] ?? 'No Name',
                email: user['email'] ?? 'No Email',
                imageUrl: user['imageUrl'],
                timestamp: user['timestamp'] != null
                    ? (user['timestamp'] as Timestamp).toDate()
                    : null,
              );
            },
          );
        },
      ),
    );
  }
}
