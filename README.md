# Noxblog

Noxblog is a mobile blogging application inspired by Reddit, developed during a mobile development internship under Zidio Development. This app allows users to interact with a variety of blog posts, create communities, and engage with other users in a social setting. 

## Features

### Authentication
- **Google Sign-In**: Users can log in to the app using their Google accounts.

### Home Screen
- **View Posts**: Displays a feed of posts from various communities.
- **Upvote/Downvote**: Users can upvote or downvote posts.
- **Search Bar**: Quickly search for posts, communities, or users.
- **Commenting**: Users can comment on posts to engage with other users.
- **Dark/Light Mode**: User can toggle between dark and light mode.

### Community Management
- **Create Community**: Users can create new communities around specific topics.
- **Add Moderators**: Community creators can assign moderators to help manage the community.
  
### User Profile
- **Edit Profile**: Users can update their profile details, such as username, bio, and profile picture.
- **Logout**: Users can log out from the side menu bar.

### Post Creation
- **Create New Post**: 
  - **Image Post**: Create a post with an image and a title.
  - **Link Post**: Create a post by sharing a link with a title.
  - **Text Post**: Create a post with text content and a title.
  - **Community Selection**: Users can select a community to post in.

## Screenshots
- [Login Screen](assets/snapshots/login_screen1.png)
- [Home Screen](assets/snapshots/home_screen1.png), [light mode](assets/snapshots/home_screen2.png).
- [Community Screen](assets/snapshots/community_screen1.png), [2](assets/snapshots/community_screen2.png).
- [create post](assets/snapshots/text_post.png), [post type](assets/snapshots/create_post.png).
- [toggle theme](assets/snapshots/lightmode_toggle.png).

## Installation

To run the Noxblog app locally, follow these steps:

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.
- [Firebase CLI](https://firebase.google.com/docs/cli) set up with a Firebase project.
- An Android/iOS emulator or a physical device.

### Setup

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/noxblog.git
    cd noxblog
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Firebase Setup:**
    - Ensure your Firebase project is configured with the Google sign-in method enabled.
    - Update the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) files in their respective directories (`android/app/` and `ios/Runner/`).

4. **Run the app:**

    ```bash
    flutter run
    ```

## Folder Structure

Here’s an overview of the folder structure used in this project:

```bash
## Folder Structure

Here’s an overview of the folder structure used in this project:

```bash
noxblog/
├── android/
├── assets/
├── build/
├── ios/
├── lib/
│   ├── core/
│   │   ├── common/
│   │   ├── constants/
│   │   ├── enums/
│   │   ├── providers/
│   │   ├── failure.dart
│   │   ├── type_defs.dart
│   │   └── utils.dart
│   ├── features/
│   │   ├── auth/
│   │   ├── community/
│   │   ├── feed/
│   │   ├── home/
│   │   ├── post/
│   │   └── user_profile/
│   ├── models/
│   ├── responsive/
│   ├── theme/
│   ├── firebase_options.dart
│   ├── main.dart
│   └── router.dart
├── linux/
├── macos/
├── web/
├── .dart_tool/
├── .idea/
├── .flutter-plugins
├── .flutter-plugins-dependencies
└── test/
```

### Contributing
If you'd like to contribute to Noxblog, please fork the repository and use a feature branch. Pull requests are warmly welcome.

### Acknowledgments
Inspired by Reddit.
Developed during an internship with Zidio Development.

#### Our team

Vishal Singh
chaudharyvisha0457@gmail.com

Nabhonil Bhattacharjee
nabhonilbhattacharjee@gmail.com

Jagadeesh S
sjagadeesh2803@gmail.com

Jeevamani K
jeevakrish479@gmail.com

Vasudevan S
s.vasudevan003@gmail.com

### For any inquiries, please contact the project maintainers at email id given above.
