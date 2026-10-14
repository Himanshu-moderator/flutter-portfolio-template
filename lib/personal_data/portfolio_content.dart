// lib/personal_data/portfolio_content.dart
//
// START HERE. This is the ONE file you edit to make the portfolio yours.
// Every value below is a placeholder in [square brackets]: replace it with your own.
// Keep the quote marks and the commas. See docs/CUSTOMIZE.md for the full guide.
//
// What is in this file, top to bottom:
//   1. Data shapes (Project, Certificate, SocialLink, Skill)  - leave these alone
//   2. AppData        - projects, certificates, skills, social links, resume path
//   3. SiteBranding   - the name shown in the top navigation bar
//   4. HeroContent    - the big home section
//   5. AboutContent   - the About section
//   6. Other headings - skills, portfolio, contact and splash screen text
//
// Pictures and PDFs these values point to live in the assets/ folder.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// --- Project Model ---
class Project {
  final String title;
  final String description;
  // The project's logo (a PNG or SVG in assets/projects) and the colour of its glow.
  final String logoAsset;
  final Color glow;
  // Optional light backing for logos that are dark and would vanish on the dark card.
  final Color? logoBackground;
  // Optional PDF case study shown in the full-screen viewer (a path in assets/case_studies).
  final String? caseStudyAsset;
  final List<String> technologies;
  final String? githubUrl;
  final String? liveUrl;

  Project({
    required this.title,
    required this.description,
    required this.logoAsset,
    required this.glow,
    this.logoBackground,
    this.caseStudyAsset,
    required this.technologies,
    this.githubUrl,
    this.liveUrl,
  });
}

// --- Certificate Model ---
class Certificate {
  final String title;
  final String imageAsset; // Local asset path to the certificate image
  final String issuer;
  final String issueDate;

  Certificate({
    required this.title,
    required this.imageAsset,
    required this.issuer,
    required this.issueDate,
  });
}

// --- Social Link Model ---
class SocialLink {
  final IconData icon;
  final String url;

  SocialLink({required this.icon, required this.url});
}

// --- Skill Model ---
class Skill {
  final String name;
  final IconData? icon;

  Skill({required this.name, this.icon});
}

// --- AppData (contains all static data for the portfolio) ---
class AppData {
  // The downloadable resume (a PDF bundled in assets/resume).
  static const String resumeAsset = 'assets/resume/Resume.pdf';

  static final List<String> navItems = [
    'Home',
    'About',
    'Skills',
    'Portfolio',
    'Contact',
  ];

  // Project logos live in assets/projects (PNG or SVG).
  static final List<Project> projects = [
    Project(
      title: '[Project One]',
      description: '[One or two lines about what this project does and who it is for.]',
      logoAsset: 'assets/projects/project1.png',
      glow: Color(0xFF4F46E5),
      caseStudyAsset: 'assets/case_studies/Case_Study.pdf',
      technologies: ['[Tech 1]', '[Tech 2]', '[Tech 3]'],
      githubUrl: 'https://github.com/',
      liveUrl: 'https://example.com/',
    ),
    Project(
      title: '[Project Two]',
      description: '[One or two lines about what this project does and who it is for.]',
      logoAsset: 'assets/projects/project2.png',
      glow: Color(0xFF0EA5E9),
      technologies: ['[Tech 1]', '[Tech 2]', '[Tech 3]'],
      githubUrl: 'https://github.com/',
      liveUrl: 'https://example.com/',
    ),
    Project(
      title: '[Project Three]',
      description: '[One or two lines about what this project does and who it is for.]',
      logoAsset: 'assets/projects/project3.png',
      glow: Color(0xFF10B981),
      technologies: ['[Tech 1]', '[Tech 2]', '[Tech 3]'],
      githubUrl: 'https://github.com/',
      liveUrl: 'https://example.com/',
    ),
    Project(
      title: '[Project Four]',
      description: '[One or two lines about what this project does and who it is for.]',
      logoAsset: 'assets/projects/project4.png',
      glow: Color(0xFFF59E0B),
      technologies: ['[Tech 1]', '[Tech 2]', '[Tech 3]'],
      githubUrl: 'https://github.com/',
      liveUrl: 'https://example.com/',
    ),
  ];

  // Certificate pictures live in assets/certificates.
  static final List<Certificate> certificates = [
    Certificate(
      title: '[Certificate One]',
      imageAsset: 'assets/certificates/certificate1.png',
      issuer: '[Issuer]',
      issueDate: '[Date]',
    ),
    Certificate(
      title: '[Certificate Two]',
      imageAsset: 'assets/certificates/certificate2.png',
      issuer: '[Issuer]',
      issueDate: '[Date]',
    ),
    Certificate(
      title: '[Certificate Three]',
      imageAsset: 'assets/certificates/certificate3.png',
      issuer: '[Issuer]',
      issueDate: '[Date]',
    ),
    Certificate(
      title: '[Certificate Four]',
      imageAsset: 'assets/certificates/certificate4.png',
      issuer: '[Issuer]',
      issueDate: '[Date]',
    ),
  ];

  static final List<SocialLink> socialLinks = [
    SocialLink(icon: FontAwesomeIcons.linkedin, url: 'https://www.linkedin.com/'),
    SocialLink(icon: FontAwesomeIcons.github, url: 'https://github.com/'),
    SocialLink(icon: FontAwesomeIcons.xTwitter, url: 'https://x.com/'),
  ];

  static final List<Skill> skills = [
    Skill(name: '[Skill 1]', icon: FontAwesomeIcons.lightbulb),
    Skill(name: '[Skill 2]', icon: FontAwesomeIcons.chartLine),
    Skill(name: '[Skill 3]', icon: FontAwesomeIcons.database),
    Skill(name: '[Skill 4]', icon: FontAwesomeIcons.code),
    Skill(name: '[Skill 5]', icon: FontAwesomeIcons.penRuler),
    Skill(name: '[Skill 6]', icon: FontAwesomeIcons.brain),
    Skill(name: '[Skill 7]', icon: FontAwesomeIcons.arrowsSpin),
    Skill(name: '[Skill 8]', icon: FontAwesomeIcons.mobileScreen),
    Skill(name: '[Skill 9]', icon: FontAwesomeIcons.cloud),
    Skill(name: '[Skill 10]', icon: FontAwesomeIcons.flask),
    Skill(name: '[Skill 11]', icon: FontAwesomeIcons.users),
    Skill(name: '[Skill 12]', icon: FontAwesomeIcons.gears),
  ];
}

// --- Site branding: shown in the navbar ---
// (The footer credit lives in lib/widgets/footer_section.dart and is protected.)
class SiteBranding {
  // Short/stylized form - used for the desktop navbar brand
  static const String formalName = '[N].';
  // Full name - used for the mobile navbar brand
  static const String informalName = '[Name].';
}

// --- Hero section content ---
class HeroContent {
  static const String badgeText = '[Short badge text]';
  static const String titleLine1 = '[Your]';
  static const String titleLine2 = '[Role]';

  // Rotates in the typewriter animation under the title
  static const List<String> roleTexts = [
    '[Role one]',
    '[Role two]',
    '[Role three]',
    '[Role four]',
  ];

  static const String description =
      '[A one or two line pitch about what you do and what you care about.]';

  // Tool/skill chips shown under the description
  static const List<String> skillChips = [
    '[Tool 1]',
    '[Tool 2]',
    '[Tool 3]',
    '[Tool 4]',
    '[Tool 5]',
  ];
}

// --- About section content ---
class AboutContent {
  static const String sectionTitle = 'About Me';
  static const String cardHeading = 'A Little Bit About Me';
  static const String profileImageAsset = 'assets/profile.png';

  static const List<String> paragraphs = [
    '[Name] is a [role] with [X] years of experience in [field]. Replace this '
        'paragraph with a short introduction: who you are and what you do.',
    '[Second paragraph] Describe what you are interested in, the kind of '
        'problems you like to solve and the tools you use.',
    '[Third paragraph] Say how you work and what you want to learn next.',
    '[Fourth paragraph] Add a personal note: hobbies, interests, or an '
        'invitation to get in touch.',
  ];
}

// --- Skills section content ---
class SkillsContent {
  static const String sectionTitle = 'My Skills';
}

// --- Portfolio section content ---
class PortfolioContentText {
  static const String sectionTitle = 'Portfolio Showcase';
  static const String sectionSubtitle =
      '[A short line introducing your projects and certifications.]';
}

// --- Contact section content ---
class ContactContent {
  static const String sectionTitle = 'Get In Touch';
  static const String introText =
      'Have a project in mind or just want to chat? Feel free to reach out!';
  static const String sendButtonLabel = 'Send Message';
  static const String socialPromptText = 'Or connect with me on social media:';
}

// --- Splash screen content ---
class SplashContent {
  static const String welcomeLine1 = 'Welcome To My';
  static const String welcomeLine2 = 'Portfolio Website';
  static const String typedTitle = 'Personal Portfolio Website';
}
