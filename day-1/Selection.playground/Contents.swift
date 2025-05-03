import Cocoa

// selection
// if else

//if (kondisi) {
//    // block kode ini akan jalan kalau kondisi benar
//} else {
//    // blok kode ini akan jalan kalau kondisi salah
//}

//var isTodayRainy = false
//
//if(isTodayRainy){
//    
//    print("Aku akan bawa payung")
//    
//}else{
//    
//    print("Aku akan makan eskrip sepuasnya")
//    
//}

//var nilai = 90
//
//if (nilai >= 90) {
//    print("Nilai kamu A+")
//    print("Kamu pintar")
//} else {
//    print("Nilai kamu C-")
//    print("Rajin belajar yaa...")
//}

//var name = "joed" // = memasukan nilai ke dalam variabel
//
//if (name != "joed") {
//    // == membandingkan nilai kiri dan kanan apakah sama
//    // != membandingkan nilai kiri dan kanan apakah tidak sama
//    
//    print("Benar sekali variable name isinya adalah 'joed'")
////    print("Variabel tidak sama..")
//    
//} else {
//    
//    print("Kamu salah variable name isinya \(name)")
//    
//}


// IF ELSE lebih dari 1 kondisi
//var nilaiUjian = 80
//var hasilAkhir = ""
//
//if (nilaiUjian >= 50) {
//    
//    hasilAkhir = "C"
//    
//} else if (nilaiUjian >= 75){
//    
//    hasilAkhir = "B"
//    
//} else if(nilaiUjian >= 90) {
//    hasilAkhir = "A"
//} else {
//    hasilAkhir = "D"
//}
//
//print("Hasil akhirmu adalah \(hasilAkhir)")

// NOT -> !
// AND -> &&
// OR -> ||

var nilaiUjian = 74
var nilaiKehadiran = 75
var hasilAkhir = ""

if (( 90...100 ~= nilaiUjian ) && nilaiKehadiran >= 75) {
    // false            // TRUE
    hasilAkhir = "A"
    
} else if (( 70...89 ~= nilaiUjian ) && nilaiKehadiran >= 60){
    // TRUE                     // FALSE
    hasilAkhir = "B"
    
} else if(( 55...69 ~= nilaiUjian ) && nilaiKehadiran >= 40) {
    // TRUE                     // TRUE
    
    hasilAkhir = "C"
} else {
    hasilAkhir = "D"
}

print("Hasil akhirmu adalah \(hasilAkhir)")
