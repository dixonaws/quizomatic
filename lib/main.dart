import 'package:flutter/material.dart';
import 'package:stateful_fun/components/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/quiz_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyStatefulHomePage(),
    );
  }
}

class MyStatefulHomePage extends StatefulWidget {
  MyStatefulHomePage({super.key});

  @override
  State<MyStatefulHomePage> createState() => _MyStatefulHomePageState();
}

class _MyStatefulHomePageState extends State<MyStatefulHomePage> {
  int _counter = 0; // counter is in the state

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final quiz = getQuiz();

    print(quiz[0].toString());

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Center(child: Text("Score: 96/100")),
        height: 46,
        color: Colors.grey[100],

      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 2,
        title: Text(
          "Quiz-o-matic",
          style: GoogleFonts.lobster(textStyle: TextStyle(letterSpacing: 2.5)),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SafeArea(
        // todo: loop through the quiz array to pull out the questions
        child: ListView.builder(
          itemCount: quiz.length,
          itemBuilder: (context, index) {
            return (QuizTile(
                totalQuestions: quiz.length,
                questionIndex: index,
                question: quiz[index]));
          },
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List getQuiz() {
    List quiz = <QuizQuestion>[];

    QuizQuestion quiz_question1 = QuizQuestion(
        imagePath: 'lib/images/img1.jpg',
        question:
            'Israel said this week that it would no longer automatically issue visas to representatives of which group, which has repeatedly called for a cease fire in the Gaza Strip?',
        imageCredit: 'Menahem Kahana/Agence France-Presse — Getty Images',
        responses: [
          "Doctors Without Borders",
          "The International Red Cross",
          "The Palestinian Authority",
          "The United Nations",
          "The Vatican"
        ],
        correctResponseIndex: 3,
        explainer:
            "It was the United Nations. U.N. officials and agencies have offered some of the strongest criticism of the war in Gaza, describing it as a graveyard for children. Instead of automatically approving visas, Israel will consider each visa “case by case,” a government spokesman said.");

    quiz.add(quiz_question1);

    QuizQuestion quiz_question2 = QuizQuestion(
        imagePath: 'lib/images/img2.jpg',
        question:
            'Minneapolis had its warmest Christmas Day on record. What was the high temperature?',
        imageCredit: 'Wikipedia',
        responses: ["44 F", "54 F", "64 F", "72 F", "80 F"],
        correctResponseIndex: 1,
        explainer:
            "It was 54 degrees. It is not unprecedented for Minnesota to have a warm or snowless Christmas. But such days are likely to become increasingly common because of climate change, a climate expert said.");

    quiz.add(quiz_question2);
    quiz.add(quiz_question1);
    quiz.add(quiz_question2);
    quiz.add(quiz_question2);

    return (quiz);
  }
}
