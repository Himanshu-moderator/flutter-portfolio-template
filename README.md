# Flutter Portfolio Template

A clean, animated **personal portfolio website** you can make your own in minutes. Built with Flutter (web), with a splash screen, animated hero, About, Skills, Portfolio (projects and certificates), a resume viewer and a contact section.

**Live demo:** https://himanshu-moderator.github.io/flutter-portfolio-template/

Everything you see is placeholder content in `[square brackets]`. Replace it with your own and you are done.

## Quick start (5 steps)

1. **Install Flutter:** follow https://docs.flutter.dev/get-started/install (you only need the web setup).
2. **Get the code:** click **Use this template** (or **Fork**) on GitHub, then clone your copy.
3. **Install packages:** run `flutter pub get` in the project folder.
4. **Run it:** `flutter run -d chrome`
5. **Make it yours:** open `lib/personal_data/portfolio_content.dart` and replace every `[placeholder]`. See the full guide in [`docs/CUSTOMIZE.md`](docs/CUSTOMIZE.md).

## Where things live

```
lib/
  personal_data/
    portfolio_content.dart   <- EDIT THIS: all your text, links, projects, skills
  hero/                      the animated home section
  screens/                   About, Skills, Portfolio, Contact, Splash, Home page
  widgets/                   shared pieces (navbar, resume viewer, animations...)
  utils/constants.dart       colours, fonts and spacing (EDIT to change the look)
  main.dart                  app entry point
assets/
  profile.png                your photo
  projects/                  project logos
  certificates/              certificate pictures
  resume/Resume.pdf          your resume
  case_studies/              optional PDFs for a project
web/                         page title, favicon, app icons
docs/CUSTOMIZE.md            step-by-step customisation guide
```

You normally only touch **`portfolio_content.dart`**, the **`assets/`** folder and **`utils/constants.dart`** (colours). The rest of the code can stay as it is.

## Publish it for free (GitHub Pages)

```bash
flutter build web --release --base-href /YOUR-REPO-NAME/
```

Copy the contents of `build/web` to a branch called `gh-pages`, add an empty file named `.nojekyll`, copy `index.html` to `404.html`, and in **Settings > Pages** choose the `gh-pages` branch. Your site appears at `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`.

## The footer credit

The small line at the bottom, "Built with Flutter by ... GitHub", is the template credit. It lives in `lib/widgets/footer_section.dart` and must stay in place as a condition of the [licence](LICENSE). A GitHub Action in this repo fails if that file is changed, so please leave it as it is. Everything else is yours to change.

## Tech

Flutter / Dart (web), `google_fonts`, `font_awesome_flutter`, `url_launcher`, `rive`.

## Licence

MIT with one extra condition: keep the credit footer. See [LICENSE](LICENSE).
