import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "100 Questions"),
    );
  }
}

extension RandomListItem<T> on List<T> {
  T? randomItem() => isEmpty
      ? null
      : length == 1
          ? first
          : this[Random().nextInt(length)];
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _currentQuestion;
  final List<String> _questions = [
    "Who is your hero?",
    "If you could live anywhere, where would it be?",
    "What is your biggest fear?",
    "What is your favorite family vacation?",
    "What would you change about yourself if you could?",
    "What really makes you angry?",
    "What motivates you to work hard?",
    "What is your favorite thing about your career?",
    "What is your biggest complaint about your job?",
    "What is your proudest accomplishment?",
    "What is your child's proudest accomplishment?",
    "What is your favorite book to read?",
    "What makes you laugh the most?",
    "What was the last movie you went to? What did you think?",
    "What did you want to be when you were small?",
    "What does your child want to be when he/she grows up?",
    "If you could choose to do anything for a day, what would it be?",
    "What is your favorite game or sport to watch and play?",
    "Would you rather ride a bike, ride a horse, or drive a car?",
    "What would you sing at Karaoke night?",
    "What two radio stations do you listen to in the car the most?",
    "Which would you rather do: wash dishes, mow the lawn, clean the bathroom, or vacuum the house?",
    "If you could hire someone to help you, would it be with cleaning, cooking, or yard work?",
    "If you could only eat one meal for the rest of your life, what would it be?",
    "Who is your favorite author?",
    "Have you ever had a nickname? What is it?",
    "Do you like or dislike surprises? Why or why not?",
    "In the evening, would you rather play a game, visit a relative, watch a movie, or read?",
    "Would you rather vacation in Hawaii or Alaska, and why?",
    "Would you rather win the lottery or work at the perfect job? And why?",
    "Who would you want to be stranded with on a deserted island?",
    "If money was no object, what would you do all day?",
    "If you could go back in time, what year would you travel to?",
    "How would your friends describe you?",
    "What are your hobbies?",
    "What is the best gift you have been given?",
    "What is the worst gift you have received?",
    "Aside from necessities, what one thing could you not go a day without?",
    "List two pet peeves.",
    "Where do you see yourself in five years?",
    "How many pairs of shoes do you own?",
    "If you were a super-hero, what powers would you have?",
    "What would you do if you won the lottery?",
    "What form of public transportation do you prefer? (air, boat, train, bus, car, etc.)",
    "What's your favorite zoo animal?",
    "If you could go back in time to change one thing, what would it be?",
    "If you could share a meal with any 4 individuals, living or dead, who would they be?",
    "How many pillows do you sleep with?",
    "What's the longest you've gone without sleep (and why)?",
    "What's the tallest building you've been to the top in?",
    "Would you rather trade intelligence for looks or looks for intelligence?",
    "How often do you buy clothes?",
    "Have you ever had a secret admirer?",
    "What's your favorite holiday?",
    "What's the most daring thing you've ever done?",
    "What was the last thing you recorded on TV?",
    "What was the last book you read?",
    "What's your favorite type of foreign food?",
    "Are you a clean or messy person?",
    "Who would you want to play you in a movie of your life?",
    "How long does it take you to get ready in the morning?",
    "What kitchen appliance do you use every day?",
    "What's your favorite fast food chain?",
    "What's your favorite family recipe?",
    "Do you love or hate rollercoasters?",
    "What's your favorite family tradition?",
    "What is your favorite childhood memory?",
    "What's your favorite movie?",
    "How old were you when you learned Santa wasn't real? How did you find out?",
    "Is your glass half full or half empty?",
    "What's the craziest thing you've done in the name of love?",
    "What three items would you take with you on a deserted island?",
    "What was your favorite subject in school?",
    "What's the most unusual thing you've ever eaten?",
    "Do you collect anything?",
    "Is there anything you wished would come back into fashion?",
    "Are you an introvert or an extrovert?",
    "Which of the five senses would you say is your strongest?",
    "Have you ever had a surprise party? (that was an actual surprise)",
    "Are you related or distantly related to anyone famous?",
    "What do you do to keep fit?",
    "Does your family have a “motto” - spoken or unspoken?",
    "If you were ruler of your own country what would be the first law you would introduce?",
    "Who was your favorite teacher in school and why?",
    "What three things do you think of the most each day?",
    "If you had a warning label, what would yours say?",
    "What song would you say best sums you up?",
    "What celebrity would you like to meet at Starbucks for a cup of coffee?",
    "Who was your first crush?",
    "What's the most interesting thing you can see out of your office or kitchen window?",
    "On a scale of 1-10 how funny would you say you are?",
    "Where do you see yourself in 10 years?",
    "What was your first job?",
    "If you could join any past or current music group which would you want to join?",
    "How many languages do you speak?",
    "What is your favorite family holiday tradition?",
    "Who is the most intelligent person you know?",
    "If you had to describe yourself as an animal, which one would it be?",
    "What is one thing you will never do again?",
    "Who knows you the best?",
  ];

  @override
  void initState() {
    super.initState();
    _selectQuestion();
  }

  void _selectQuestion() {
    setState(() {
      _currentQuestion = _questions.randomItem();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _selectQuestion,
        child: Center(
          child: Text(
            _currentQuestion ?? "",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
