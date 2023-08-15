import 'package:flutter/material.dart';
import 'package:test_/screens/home_screen.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  // Starting value of DropdownButton
  String currentValue = '  Available | Hey Let Us Connect ';

  // DropdownButton items
  var items = [
    '  Available | Hey Let Us Connect ',
    '  Away | Stay Discreet And Watch ',
    '  Busy | Do Not Disturb | Will Catch Up Later ',
    '  SOS | Emergency | Need Assistance! HELP '
  ];

  //
  int totalCharacter = 0;

  double currentSliderValue = 1.0;

  // // Controller
  // final String txt = 'Hello';

  // Chip Buttons
  bool isChip1Selected = false;
  Color chip1SelectedColor = Colors.black;

  bool isChip2Selected = false;
  Color chip2SelectedColor = Colors.black;

  bool isChip3Selected = false;
  Color chip3SelectedColor = Colors.black;

  bool isChip4Selected = false;
  Color chip4SelectedColor = Colors.black;

  bool isChip5Selected = false;
  Color chip5SelectedColor = Colors.black;

  bool isChip6Selected = false;
  Color chip6SelectedColor = Colors.black;

  bool isChip7Selected = false;
  Color chip7SelectedColor = Colors.black;

  bool isChip8Selected = false;
  Color chip8SelectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 46, 51),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color.fromARGB(255, 6, 46, 51)),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("Refine"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Select Your Availability',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 6, 46, 51),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    value: currentValue,
                    isExpanded: true,
                    items: items.map((e) {
                      return DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        currentValue = value!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Add Your Status',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 6, 46, 51),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            'Hi community! I am open to new connections 🙂'),
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 3,
                    // autofillHints: <String>[AutofillHints.],
                    onChanged: (value) {
                      setState(() {
                        totalCharacter = value.length;
                      });
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text('$totalCharacter/250'),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Select Hyper local Distance',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 46, 51)),
                    ),
                  ),
                ],
              ),
              // Slider
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Slider(
                  label: currentSliderValue.round().toString(),
                  min: 1,
                  divisions: 100,
                  max: 100,
                  value: currentSliderValue,
                  activeColor: const Color.fromARGB(255, 6, 46, 51),
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      currentSliderValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('1 Km'),
                    Text('100 Km'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Select Purpose',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 46, 51)),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceChip(
                        selected: isChip1Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip1Selected = value;
                            if (chip1SelectedColor == Colors.black) {
                              chip1SelectedColor = Colors.white;
                            } else {
                              chip1SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Coffee',
                          style: TextStyle(color: chip1SelectedColor),
                        ),
                      ),
                      // const SizedBox(width: 2),
                      ChoiceChip(
                        selected: isChip2Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip2Selected = value;
                            if (chip2SelectedColor == Colors.black) {
                              chip2SelectedColor = Colors.white;
                            } else {
                              chip2SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Bussiness',
                          style: TextStyle(color: chip2SelectedColor),
                        ),
                      ),
                      // const SizedBox(width: 2),
                      ChoiceChip(
                        selected: isChip3Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip3Selected = value;
                            if (chip3SelectedColor == Colors.black) {
                              chip3SelectedColor = Colors.white;
                            } else {
                              chip3SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Hobbies',
                          style: TextStyle(color: chip3SelectedColor),
                        ),
                      ),
                      // const SizedBox(width: 2),
                      ChoiceChip(
                        selected: isChip4Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip4Selected = value;
                            if (chip4SelectedColor == Colors.black) {
                              chip4SelectedColor = Colors.white;
                            } else {
                              chip4SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Friendship',
                          style: TextStyle(color: chip4SelectedColor),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceChip(
                        selected: isChip5Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip5Selected = value;
                            if (chip5SelectedColor == Colors.black) {
                              chip5SelectedColor = Colors.white;
                            } else {
                              chip5SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Movies',
                          style: TextStyle(color: chip5SelectedColor),
                        ),
                      ),
                      ChoiceChip(
                        selected: isChip6Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip6Selected = value;
                            if (chip6SelectedColor == Colors.black) {
                              chip6SelectedColor = Colors.white;
                            } else {
                              chip6SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Dinning',
                          style: TextStyle(color: chip6SelectedColor),
                        ),
                      ),
                      ChoiceChip(
                        selected: isChip7Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip7Selected = value;
                            if (chip7SelectedColor == Colors.black) {
                              chip7SelectedColor = Colors.white;
                            } else {
                              chip7SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Dating',
                          style: TextStyle(color: chip7SelectedColor),
                        ),
                      ),
                      ChoiceChip(
                        selected: isChip8Selected,
                        onSelected: (value) {
                          setState(() {
                            isChip8Selected = value;
                            if (chip8SelectedColor == Colors.black) {
                              chip8SelectedColor = Colors.white;
                            } else {
                              chip8SelectedColor = Colors.black;
                            }
                          });
                        },
                        selectedColor: const Color.fromARGB(255, 6, 46, 51),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelStyle: const TextStyle(),
                        label: Text(
                          'Matrimony',
                          style: TextStyle(color: chip8SelectedColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color.fromARGB(255, 6, 46, 51),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Save & Explore',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
