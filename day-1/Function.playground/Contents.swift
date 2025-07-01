import Cocoa

// function -> kumpulan kode yang bertujuan untuk mengerjakan task tertentu(tergantu kegunaan yang kita mau)


// func -> menunjukan kalau dia adalah function
// tampilAngka1Sampai100 -> nama function
// didalam { } itu adalah tempat blok kode yang di eksekusi dari function
func tampilAngka1Sampai100() {
    
    for index in 1...10 {
        print(index)
    }
    
}


//tampilAngka1Sampai100()
//
//tampilAngka1Sampai100()

func sayHello() {
    print("Hello guys!, aku nessa")
    print("Hari ini kalian sehat ga?")
}

//sayHello()
//sayHello()

// luar segitiga
func luasSegitiga(alas: Double, tinggi: Double) {
    
    let luas: Double = (1/2) * alas * tinggi
    print("Luas segitga adalah: \(luas)")
    
}

luasSegitiga(alas: 10, tinggi: 12)
luasSegitiga(alas: 12, tinggi: 18)

var dikaliDua = luasSegitiga(alas: 10, tinggi: 12)


// function with return
// stacy mau hasil dari luas bisa dikalikan
func luasSegitigaWithReturn(alas: Double, tinggi: Double) -> Double {
    
    let luas: Double = (1/2) * alas * tinggi
    return luas
    // return adalah value dari function yang dikeluarkan, sehingga value tersebut bisa digunakan oleh kode lain
    
}


var diKaliTiga = luasSegitigaWithReturn(alas: 10, tinggi: 12) * 3
print(diKaliTiga)

print(luasSegitigaWithReturn(alas: 12, tinggi: 18) * 2)
