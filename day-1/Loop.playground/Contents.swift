import Cocoa



//print("Calvin")
//print("Edward")
//print("Iwak")
//print("Kai")
//print("Jennifer")
//print("Joed")
//print("Fred")
//print("Viky")
//print("Michiko")
//print("Stecu")


for index in 1...100 {
    // loop/perulangan fungsi mengulang kode yang dalam dalam kurung kurawal -> {  }
    
    // index adalah representasi dari angka dalam rentang 1 sampai 100
    
//    print("Selamat datang :D")
    print(index)
}


// Array -> bisa menyimpan banyak data dalam 1 variable
// aturan 1 -> pastikan semua value dalam array memiliki tipe data yang sama
var namaOrang = ["Calvin", "Edward", "Iwak", "Kai", "Jennifer", "Joed", "Fred", "Viky", "Michiko", "Stecu"]
var kumpulanAngka = [1, 2, 3, 4, 5, 6]

// masukin data di akhir array
namaOrang.append("Nessa")
namaOrang.append("Vindo")

// masukin data di tempat tertentu
kumpulanAngka.insert(contentsOf: 100...103, at: 3)

namaOrang.insert(contentsOf: ["Abe", "Budi", "Cici"], at: 0)

for angka in kumpulanAngka {
    print(angka)
}

// cara menampilkan semua data dalam arrray
for nama in namaOrang {
    // nama adalah representasi dari setiap value dalam array namaOrang
    
    print("Haloo, nama saya \(nama)")
}

print("Ini adalah \(namaOrang[9])")

// cara mengetahui jumlah data dalam array namaArray.count
print(namaOrang.count)

// cara tau index terakhir dari sebuah array
print(namaOrang.count - 1)



