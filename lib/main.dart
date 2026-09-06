import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  static const Color mintBg = Color(0xFFF2FBF7);       // Soft light minty green background
  static const Color primaryMint = Color(0xFF1B6B50);   // Deep elegant mint/emerald
  static const Color accentMint = Color(0xFFE3F7EE);    // Pale mint highlight

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venigalla Sai Teja | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mintBg,
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryMint,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryMint,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/projects': (context) => const ProjectsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Portfolio')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 54,
                backgroundColor: Color(0xFFD3F2E3),
                child: Icon(Icons.person, size: 54, color: Color(0xFF1B6B50)),
              ),
              const SizedBox(height: 20),
              const Text(
                'VENIGALLA SAI TEJA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF104634),
                  letterSpacing: 0.8,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '3rd Year Undergraduate • CSE & Applied Mathematics',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 6),
              const Text(
                'Quantum Computing • Numerical Optimization',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1B6B50),
                ),
              ),
              const SizedBox(height: 28),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/about'),
                  child: const Text('About Me'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/projects'),
                  child: const Text('Projects'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 36),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFD6EFE3)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x12000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.memory, size: 64, color: Color(0xFF1B6B50)),
                  const SizedBox(height: 20),
                  const Text(
                    "Hello! I'm Venigalla Sai Teja, a 3rd year Computer Science and Applied Mathematics undergraduate. "
                    "My core academic and technical interests lie in Quantum Computing and Convex Optimization, "
                    "bridging rigorous mathematical theory with high-performance computational systems.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
                  ),
                  const SizedBox(height: 24),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      SkillChip(label: 'Quantum Computing'),
                      SkillChip(label: 'Optimization Theory'),
                      SkillChip(label: 'Post-Quantum Cryptography'),
                      SkillChip(label: 'Python'),
                      SkillChip(label: 'Applied Mathematics'),
                      SkillChip(label: 'Monte Carlo Simulation'),
                      SkillChip(label: 'Blockchain'),
                    ],
                  ),
                  const SizedBox(height: 28),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Back to Home'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFE4F7ED),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFC7EBD7)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 12.5,
          color: Color(0xFF104634),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProjectCard(
                  title: 'QBallot: PQC & Blockchain-Based Voting System',
                  description:
                      'A secure, tamper-proof decentralized voting platform integrated with Post-Quantum Cryptography (PQC) standards and blockchain ledger architecture to ensure long-term verifiability against quantum attacks.',
                ),
                const SizedBox(height: 16),
                const ProjectCard(
                  title: 'Nifty Portfolio Optimization (Monte Carlo Simulation)',
                  description:
                      'A financial portfolio optimization framework using Monte Carlo simulations on historical returns for Nifty 50, Gold, and TCS. Models efficient frontiers and generates optimal risk-adjusted asset allocations.',
                ),
                const SizedBox(height: 16),
                const ProjectCard(
                  title: 'SemVid: Semantic Video to Audio Conversion',
                  description:
                      'An intelligent pipeline providing semantic scene comprehension and multimodal translation, extracting rich contextual signals from video data to generate synchronized descriptive audio representations.',
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD6EFE3)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x10000000),
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.bold,
              color: Color(0xFF104634),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
