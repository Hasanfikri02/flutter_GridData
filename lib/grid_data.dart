import 'package:flutter/material.dart';

class GridData extends StatelessWidget {
  GridData({super.key});
  final List<String> data = [
    'Jersey Futsal',
    'Jersey Timnas',
    'Jersey NBA',
    'Track Jacket',
    'Topi NY',
    'Tumbler',
    'Sepatu Bola',
    'Sepatu Running',
  ];
  final List<String> imageUrls = [
    'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/4/10/bafdaa3d-9ef2-4772-85ed-6143575f5ef8.jpg',
    'https://images.tokopedia.net/img/cache/700/VqbcmM/2024/4/26/0470b86c-0729-4678-928c-777ed50bbcd4.jpg',
    'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9855b057-72b1-430a-a796-990848799efb/LAL+MNK+DF+SWGMN+JSY+STM+22.png',
    'https://assets.adidas.com/images/w_600,f_auto,q_auto/3edced266ecc4ee1b269c3a0b20f526e_9366/Skateboarding_Firebird_Track_Jacket_Gender_Neutral_Blue_IY1631.jpg',
    'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/10/10/ee7b7071-2498-46b9-9dd0-84327d3672e0.jpg',
    'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/2/24/5a2cea0a-09a9-4ef9-ae22-51bef13a6bae.jpg',
    'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/7/3/e8883943-6799-4588-a86e-74829935a960.jpg',
    'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/12/28/567139d3-419c-44bd-bb9b-5013e7487886.jpg'
  ];
  final List<String> harga = [
    'Rp. 150.000',
    'Rp. 250.000',
    'Rp. 250.000',
    'Rp. 200.000',
    'Rp. 150.000',
    'Rp. 80.000',
    'Rp. 300.000',
    'Rp. 280.000',
  ];

  final List<String> diskripsi = [
    'Bahan nyaman, Jersey futsal terbuat dari bahan kain yang nyaman dikenakan di badan.',
    'Jersey baru timnas Indonesia dirancang untuk memberikan kenyamanan maksimal bagi pemain.',
    'Bahan yang digunakan: Jersey NBA dibuat dari berbagai bahan, seperti dryfit, hyget, dan lotto',
    'Bisa menjadi pilihan gaya yang stylish untuk berbagai kesempatan sekalipun saat olahraga.',
    'Topi dapat menjadi salah satu aksesoris pilihan untuk membuat signature untuk penampilan.',
    'Menjaga suhu minuman, Tumbler dilengkapi dengan fitur isolasi termal yang dapat menjaga suhu air di dalamnya.',
    'Sepatu bola yang terbuat dari kulit asli memiliki ketahanan yang baik dan bisa dipakai hingga lebih dari 2 tahun',
    'Sepatu lari yang nyaman akan membuat olahraga lari lebih menyenangkan.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Data"),
      backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: data.length, //menampilkan data berdasarkan jumlah data yang kita input (misal di ganti 2 maka data akan muncul cuma 2)
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigasi ke halaman detail dengan membawa data yang diperlukan
                Navigator.push( //navigator ketika di klik mengarah ke detailpage
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage( //mengarah ke DetailPage dengan membawa data di bawah ini
                      title: data[index],
                      harga: harga[index],
                      imageUrl: imageUrls[index],
                      diskripsi: diskripsi[index],
                    ),
                  ),
                );
              },
              child: Card(
                //menambahkan bayangan
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                imageUrls[index],
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: Column(
                          children: [
                            Text(data[index],
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            Text(harga[index])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


//detailpage
//yang diatas membawa data, yang di bawah inimenerima data apa aja yang di bawa

class DetailPage extends StatelessWidget {
  final String title;
  final String harga;
  final String imageUrl;
  final String diskripsi;

  DetailPage({
    required this.title,
    required this.harga,
    required this.imageUrl,
    required this.diskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.green, // Menambahkan warna latar belakang AppBar.
      ),
      body: SingleChildScrollView( // Membungkus konten dengan SingleChildScrollView agar bisa digulir jika konten terlalu panjang.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Membuat semua widget dalam column mengambil lebar penuh.
          children: [
            Image.network(
              imageUrl,
              height: 300.0, // Tinggi gambar ditentukan 300 px.
              width: double.infinity, // Gambar akan memenuhi lebar layar.
              fit: BoxFit.cover, // Gambar akan disesuaikan agar tidak terpotong.
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // Memberikan padding di sekitar judul.
              child: Text(
                title,
                textAlign: TextAlign.center, // Mengatur teks agar berada di tengah.
                style: TextStyle(
                  fontSize: 24.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            Text(
              harga,
              textAlign: TextAlign.center, // Harga ditampilkan di tengah.
              style: TextStyle(
                color: Colors.green, 
                fontSize: 20.0, 
                fontWeight: FontWeight.bold, 
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // Memberikan padding di sekitar deskripsi.
              child: Text(
                diskripsi,
                textAlign: TextAlign.center, // Deskripsi ditempatkan di tengah.
                style: TextStyle(
                  fontSize: 16.0, 
                  height: 1.5, // Memberikan spasi antar baris pada deskripsi.
                  color: Colors.black54, // Warna teks dibuat abu-abu agar nyaman dibaca.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
