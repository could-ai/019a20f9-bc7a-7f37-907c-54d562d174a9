import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI for Problem Solving',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BlogHomePage(),
    );
  }
}

class BlogHomePage extends StatelessWidget {
  const BlogHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How AI Can Help Humans Solve Problems'),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Home')),
          TextButton(onPressed: () {}, child: const Text('Articles')),
          TextButton(onPressed: () {}, child: const Text('About')),
          TextButton(onPressed: () {}, child: const Text('Contact')),
        ],
      ),
      body: ListView(
        children: [
          _buildHeader(context),
          _buildArticleSection(context),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1531297484001-80022131f5a1?w=800'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The Future is Now: AI and Human Collaboration',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            'Exploring how artificial intelligence is augmenting human capabilities to solve complex global challenges.',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Read More'),
          ),
        ],
      ),
    );
  }

  Widget _buildArticleSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Featured Articles', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              _buildArticleCard(
                context,
                'AI in Healthcare',
                'From diagnosing diseases to personalizing treatments, AI is revolutionizing the medical field.',
                'https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=800',
              ),
              _buildArticleCard(
                context,
                'AI and Climate Change',
                'How AI models are helping scientists understand climate patterns and develop sustainable solutions.',
                'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?w=800',
              ),
              _buildArticleCard(
                context,
                'AI in Education',
                'Personalized learning experiences and automated administrative tasks are just the beginning.',
                'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=800',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, String title, String description, String imageUrl) {
    return SizedBox(
      width: 300,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, height: 150, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 10),
                  Text(description),
                  const SizedBox(height: 10),
                  TextButton(onPressed: () {}, child: const Text('Read More')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFooterLink('About Us'),
              _buildFooterLink('Privacy Policy'),
              _buildFooterLink('Terms of Service'),
            ],
          ),
          const SizedBox(height: 20),
          const Text('© 2024 AI for Problem Solving. All Rights Reserved.'),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(title, style: const TextStyle(color: Colors.black54)),
    );
  }
}
