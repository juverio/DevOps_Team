import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Kami"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/logo(1).jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Selamat Datang di Santai Resto!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Santai Resto menawarkan pengalaman kuliner yang tak terlupakan. Dengan suasana yang hangat dan layanan terbaik, kami siap menyambut Anda dengan sajian yang memanjakan selera.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Dapur kami dipimpin oleh koki profesional yang selalu berinovasi untuk menyajikan hidangan terbaik bagi Anda. Kami percaya bahwa kualitas bahan dan cinta dalam memasak adalah kunci utama kepuasan pelanggan.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Dengan aplikasi reservasi kami, Anda dapat menikmati kenyamanan memesan meja dari mana saja. Lihat menu terbaru kami dan buat reservasi dalam hitungan detik.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Santai Resto adalah tempat di mana kelezatan makanan dan kehangatan layanan bersatu. Kami berkomitmen untuk memberikan pengalaman makan yang menyenangkan dan berkesan bagi setiap pengunjung.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                const Text(
                  "Kami tunggu kehadiran Anda di Santai Resto, di mana setiap hidangan adalah karya seni dan setiap tamu adalah bagian dari keluarga besar kami.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
