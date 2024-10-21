import 'package:flutter/material.dart';

class Bantuan extends StatefulWidget {
  const Bantuan({super.key});

  @override
  State<Bantuan> createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  List<String> faqList = [
    'Bagaimana cara melakukan reservasi di aplikasi ini?',
    'Apakah saya perlu membuat akun untuk melakukan reservasi?',
    'Apakah reservasi saya dapat diakses oleh teman atau keluarga saya?',
    'Apakah saya bisa memesan meja untuk acara khusus atau kelompok besar?',
    'Bagaimana saya bisa mendapatkan informasi tentang menu dan harga restoran sebelum melakukan reservasi?',
    'Apakah saya dapat meminta meja dengan preferensi tertentu, seperti di dekat jendela atau di ruang merokok?',
    'Apakah aplikasi ini menyediakan informasi tentang fasilitas aksesibilitas di restoran, seperti akses kursi roda atau fasilitas ramah disabilitas?',
    'Apakah aplikasi ini menyediakan notifikasi untuk mengingatkan saya tentang reservasi yang telah saya buat?'
  ];
  List<String> AnsFAQ = [
    'Untuk melakukan reservasi, buka aplikasi kami, pilih menu yang diinginkan, tentukan meja, lalu tekan tombol "Buat Pesanan".',
    'Ya, pembuatan akun diperlukan untuk melakukan reservasi. Ini membantu kami menyimpan detail reservasi Anda dan memberikan pengalaman yang lebih personal.',
    'Reservasi Anda bersifat pribadi dan hanya dapat diakses oleh Anda. Informasi ini tidak akan dibagikan dengan pengguna lain.',
    'Ya, untuk reservasi acara khusus atau kelompok besar, hubungi layanan pelanggan kami atau lihat opsi khusus di aplikasi kami.',
    'Informasi tentang menu dan harga dapat ditemukan di halaman detail setiap restoran di aplikasi kami. Beberapa restoran juga menyediakan tautan ke menu mereka.',
    'Ya, dalam sebagian besar kasus, Anda dapat mencantumkan preferensi meja khusus Anda saat melakukan reservasi. Namun, ini tergantung pada kebijakan setiap restoran.',
    'Ya, kami berusaha menyediakan informasi tentang fasilitas aksesibilitas di halaman detail setiap restoran. Jika Anda memiliki kebutuhan khusus, hubungi layanan pelanggan kami.',
    'Ya, Anda akan menerima notifikasi melalui aplikasi untuk mengingatkan tentang reservasi Anda.'
  ];
  List<String> filteredFaqList = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    filteredFaqList = faqList;
    super.initState();
  }

  void filterFaqs(String query) {
    List<String> filteredFaqs = [];
    for (var faq in faqList) {
      if (faq.toLowerCase().contains(query.toLowerCase())) {
        filteredFaqs.add(faq);
      }
    }
    setState(() {
      filteredFaqList = filteredFaqs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bantuan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: searchController,
                onChanged: (value) {
                  filterFaqs(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cari',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredFaqList.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(filteredFaqList[index]),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(AnsFAQ[index]),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'Hubungi Kami',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('cs@bahagiaresto.com'),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('Nomor Telepon'),
                subtitle: Text('08983673677'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
