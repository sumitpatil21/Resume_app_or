import 'package:flutter/material.dart';
import 'Hobbies_Page.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

TextEditingController skill = TextEditingController();

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 35,
                      )),
                  Text(
                    "Skills ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade900,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Image(
                          image: AssetImage("Assest/image/accepted.png"),
                          color: Colors.blue.shade300,
                          height: 25,
                        ),
                        Text(
                          " Premium",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage("Assest/image/gear.png"),
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20,bottom: 30),
              child: Row(
                children: [
                  Text(
                    "Skills (optional)",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            ...List.generate(
                skillslist.length,
                (index) => ListTile(
                      title: textfeildatare4(hint: "    CPP"),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              skillslist.removeAt(index);
                            });
                          },
                          icon: Icon(
                            Icons.delete_outlined,
                            size: 30,
                          )),
                    )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                TextEditingController skill = TextEditingController();
                setState(() {
                  skillslist.add(skill.text);
                for(int i=0;i<skillslist.length;i++)
                  {
                    skilltext.add(skillslist[i]);
                    print(skilltext[i]);
                  }
                });
              },
              child: Text(
                "   Add Skills  ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    height: 3,
                    letterSpacing: 1.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 250, bottom: 20),
              child: InkWell(
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Hobbies_Page(),
                  ));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next Step  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List skillslist = [skill.text];
List skilltext=[];
Column textfeildatare4({String? hint, TextEditingController? edit}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
        child: TextFormField(
          controller: edit,
          style: TextStyle(
            fontSize: 20,
          ),
          decoration: InputDecoration(
              hintText: hint,
              fillColor: Colors.indigo.shade50,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(75),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(75),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(75),
              )),
        ),
      ),
    ],
  );
}