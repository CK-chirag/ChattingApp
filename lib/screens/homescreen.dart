import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 47, 56),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        title: Text(
          'Welcome',
          style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white) ??
              const TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 46, 47, 56),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 80, 16, 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image-removebg-preview.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Chat with random people',
                    style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white) ??
                        const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 43, 73),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, -5)
                      )
                    ]
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your interest (On)',
                            style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: Colors.white) ??
                                const TextStyle(color: Colors.white),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Manage',
                              style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: Colors.white) ??
                                  const TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
              
                      //interest
                      DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 1,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(16),
                        dashPattern: const [6, 4],
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Tehcnology',
                                      style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(color: Colors.white) ??
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Science',
                                      style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(color: Colors.white) ??
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Books',
                                      style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(color: Colors.white) ??
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "You haven't selected any interest yet",
                                style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(color: Colors.white) ??
                                    const TextStyle(color: Colors.white),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
              
                      // gender filter
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Gender",
                            style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: Colors.white) ??
                                const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.boy,
                                          size: 28,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Male',
                                          style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Colors.black) ??
                                              const TextStyle(
                                                  color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.girl,
                                          size: 28,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Female',
                                          style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                      color: Colors.black) ??
                                              const TextStyle(
                                                  color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
              
                      // Start Chatting button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade400,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Start Chat",
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
              
                      Text(
                        'You will be connected to a random person',
                        style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: Colors.white) ??
                            const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
