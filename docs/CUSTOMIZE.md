# How to make this portfolio yours

You do **not** need to know Flutter. Almost everything is a text value in one file, plus a few pictures.

## 1. Your text and links: `lib/personal_data/portfolio_content.dart`

Open it and replace each `[placeholder]`. The file is split into labelled blocks:

| Block in the file | What it controls |
| --- | --- |
| `SiteBranding` | Your name in the top navigation bar (`[N].` is the short form, `[Name].` the full one) |
| `HeroContent` | The big home section: badge, title, rotating role texts, pitch, tool chips |
| `AboutContent` | The About section text and which photo is used |
| `AppData.skills` | The skills grid (name + icon) |
| `AppData.projects` | Project cards: title, description, logo, glow colour, tech tags, GitHub and live links |
| `AppData.certificates` | Certificate cards: title, picture, issuer, date |
| `AppData.socialLinks` | Social icons in the Contact section |
| `AppData.resumeAsset` | Which PDF opens from the Resume button |
| `ContactContent`, `PortfolioContentText`, `SkillsContent` | Small headings and intro lines |
| `SplashContent` | The text on the opening splash screen |

Tips:
- Keep the quote marks and the comma at the end of each line.
- To add a project, copy one `Project(...)` block and paste it under the last one. Remove a block to remove a project.
- To add a skill, copy one `Skill(...)` line. Icons come from Font Awesome: https://fontawesome.com/search?o=r&m=free (use the name in `FontAwesomeIcons.name`).

## 2. Your pictures and files: `assets/`

Replace the files, keeping the same names (or change the path in `portfolio_content.dart`).

| Folder or file | Size and format |
| --- | --- |
| `assets/profile.png` | Square photo, about 600 x 600 |
| `assets/projects/` | Square logos, PNG or SVG, about 256 x 256 |
| `assets/certificates/` | Landscape pictures, PNG or JPG, about 1200 x 850 |
| `assets/resume/Resume.pdf` | Your resume as a PDF |
| `assets/case_studies/` | Optional PDF for a project (set `caseStudyAsset` on that project) |

After adding a new file, make sure its folder is listed under `assets:` in `pubspec.yaml` (the existing folders already are).

## 3. Colours and look: `lib/utils/constants.dart`

`AppColors` holds the colour palette (background, primary, accent, text). Change a colour code there and the whole site follows.

## 4. Page title and icon: `web/`

- `web/index.html`: the browser tab title and description.
- `web/manifest.json`: the app name.
- `web/favicon.png` and `web/icons/`: the tab icon (replace with your own pictures of the same sizes).

## 5. Check your work

```bash
flutter run -d chrome
```

The page reloads as you save. When happy, publish it (see the README).

## What not to change

`lib/widgets/footer_section.dart` is the template credit and is protected. Leave it as it is, and keep this file and `LICENSE` in your project.

## Troubleshooting

- **A picture does not show:** check the file name and that it is inside `assets/` and listed in `pubspec.yaml`.
- **Red error after editing:** you probably removed a quote or comma in `portfolio_content.dart`. Undo your last change and try again.
- **Site looks broken after publishing:** build with `--base-href /YOUR-REPO-NAME/` (with the slashes).
