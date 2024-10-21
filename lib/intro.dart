import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Selamat Datang!",
      body: "Temukan pengalaman kuliner terbaik di restoran kami.",
      image: Image.asset("assets/images/foto5.png"),
    ),
    PageViewModel(
      title: "Pesan dengan Mudah",
      body: "Nikmati kemudahan memesan meja tanpa repot.",
      image: Image.asset("assets/images/foto1.png"),
    ),
    PageViewModel(
      title: "Nikmati Pengalaman Unik",
      body: "Jelajahi menu kami yang lezat dan suasana yang menyenangkan.",
      image: Image.asset("assets/images/foto4.png"),
    ),
  ];

  Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        Navigator.pushNamed(context, '/login');
      },
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done"),
    );
  }
}