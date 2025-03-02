#!/bin/bash

# Root folder
mkdir -p src

# Subfolders and files
mkdir -p src/assets/{images,icons,fonts,styles}
touch src/assets/styles/global.scss

mkdir -p src/components/{common,learn,vocabulary,stories,profile,chat}
touch src/components/common/{NavBar.tsx,Sidebar.tsx,Toast.tsx,Modal.tsx}
touch src/components/learn/{ChapterCard.tsx,LessonCard.tsx,QuizCard.tsx}
touch src/components/vocabulary/{TopicCard.tsx,Flashcard.tsx}
touch src/components/stories/{StoryList.tsx,StoryDetail.tsx}
touch src/components/profile/{ProfileCard.tsx,EditForm.tsx}
touch src/components/chat/{ChatBox.tsx,ChatMessage.tsx}

mkdir -p src/contexts
touch src/contexts/{AuthContext.tsx,ThemeContext.tsx,UserContext.tsx}

mkdir -p src/hooks
touch src/hooks/{useAuth.ts,useNotification.ts,useFetch.ts}

mkdir -p src/layouts
touch src/layouts/{AdminLayout.tsx,UserLayout.tsx,AuthLayout.tsx}

mkdir -p src/pages/{Admin,Auth,Learn,Vocabulary,Stories,Profile,Friends,Chat,Settings}
touch src/pages/Admin/{Dashboard.tsx,ManageLessons.tsx,ManageUsers.tsx,ManageStories.tsx,Stats.tsx}
touch src/pages/Auth/{Login.tsx,Register.tsx,ForgotPassword.tsx}
touch src/pages/Learn/{Chapter.tsx,Lesson.tsx,QuizFill.tsx,QuizMultipleChoice.tsx,ListeningExercise.tsx,ListeningQuiz.tsx,QuizResult.tsx}
touch src/pages/Vocabulary/{Topics.tsx,Flashcards.tsx}
touch src/pages/Stories/{StoryList.tsx,StoryDetail.tsx}
touch src/pages/Profile/{Profile.tsx,EditProfile.tsx}
touch src/pages/Friends/{FriendList.tsx,PublicProfile.tsx}
touch src/pages/Chat/{ChatList.tsx,ChatDetail.tsx}
touch src/pages/Settings/Settings.tsx

mkdir -p src/services
touch src/services/{api.ts,authService.ts,lessonService.ts,chatService.ts}

mkdir -p src/utils
touch src/utils/{formatDate.ts,validateForm.ts,constants.ts}

# Root files
touch src/{App.tsx,main.tsx}
mkdir -p src/routes
touch src/routes/{AdminRoutes.tsx,PrivateRoutes.tsx,PublicRoutes.tsx}
