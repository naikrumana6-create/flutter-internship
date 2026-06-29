# Flutter Internship — Week 1

## About
This repository is part of my IoT internship where I am learning Flutter as a frontend developer. 
This is my first time working with Flutter and this repo contains everything I learned and built during Week 1, organized day by day.

The overall project is an IoT Device Control System built as a team — a Python ESP32 simulator sends sensor data to a FastAPI backend which stores it in MySQL, and my Flutter app displays that live data on screen.

---

## How This Repo is Organized

Each day has 4 blocks:
- block1.dart — what I learned that day
- block2.dart — what I practiced that day
- block3.dart — what I applied that day
- main.dart — final build combining all 4 blocks of the day

---

## What I Learned This Week

**Dart Basics**
Started from scratch with Dart — variables, functions, lists, maps and then moved into OOP concepts like classes, inheritance, encapsulation and async/await.

**Flutter Widgets and Layouts**
Learned how Flutter renders UI using a widget tree. Built screens using Scaffold, AppBar, Text, Icon and practiced layouts using Row, Column, Container and ListView.

**State Management and Navigation**
Understood how setState updates the UI when data changes. Built multi screen apps using Navigator and passed data between screens.

**REST API and HTTP**
Learned how to make API calls using the http package, parse JSON responses into Dart model classes and handle loading and error states using FutureBuilder.

**Live Backend Integration**
Connected the Flutter app to the team's FastAPI backend. The app fetches live temperature and humidity readings and auto refreshes every 5 seconds using Timer.periodic.

---

