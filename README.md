# BuildMyRig 🖥️

**BuildMyRig** is a mobile application designed to assist users in building their own custom personal computers. With the growing demand for tailor-made PC configurations, BuildMyRig provides a step-by-step component selection experience, ensuring compatibility and offering guided explanations for each hardware part.

---

## 📱 Project Overview

BuildMyRig simplifies the complex process of configuring a PC by helping users choose compatible hardware components such as:

- Processors (CPU)
- Graphics Cards (GPU)
- RAM
- Storage (SSD/HDD)
- Power Supply (PSU)
- Motherboards and more

Each step in the selection process is accompanied by a user-friendly explanation to guide even non-tech-savvy users through the process of creating a powerful, personalized setup.

---

## 🛠 Technologies Used

- **Flutter** – Frontend mobile application
- **ASP.NET Core** – Backend API and logic layer
- **Firebase** – User authentication and real-time features
- **MySQL** – Database for storing component data

---

## 🚀 Installation & Setup

To set up and run the project locally, follow these steps:

1. **Clone the project and set up both the Flutter frontend and ASP.NET Core backend:**
   - Clone the repository:
     ```bash
     git clone https://github.com/qamarbek0120/BuildMyRig_frontend.git
     ```
   - Navigate to the Flutter app directory and install dependencies:
     ```bash
     cd BuildMyRig/flutter_app
     flutter pub get
     ```
   - Add your Firebase configuration file (`google-services.json`) to `android/app`.
   - Make sure you have Flutter SDK and Android Studio or Visual Studio Code properly configured.
   - Open the ASP.NET backend project in Visual Studio (or VS Code) and configure the MySQL connection string in `appsettings.json`.
   - Run the backend project and ensure it's connected to your MySQL database.
   - Finally, run the Flutter app:
     ```bash
     flutter run
     ```

---

## 🔧 Features

- ✅ Step-by-step PC component selection
- ✅ Compatibility checks between selected parts
- ✅ Educational explanations for each component
- ✅ Firebase authentication
- ✅ Clean and responsive mobile interface
- ✅ ASP.NET Core backend connected with MySQL

---

