// Buatlah sebuah fungsi yang digunakan untuk menentukan berapa lembar uang
// kembalian yang diberikan kepada pelanggan setelah membayar. Fungsi ini memiliki 2
// parameter/masukan yaitu total_pembelian (number) dan uang (number) serta keluaran
// berupa sebuah object dengan properti pecahan uang yang diberikan (1000, 2000, 5000,
// 10000, 50000)!

function printMoney() {
    var v1 = 400000;
    var v2 = 262000;

    v3 = v1 - v2;
    t = v3 / 50000;
    if(t>0){
        v3 = v3 % 50000;
    } //Pecahan 50.000

    t1 = v3 / 10000;
    if(t1>0){
        v3 = v3 % 10000;
    } //Pecahan 10.000

    t2 = v3 / 5000;
    if(t2>0){
        v3 = v3 % 5000;
    } //Pecahan 5.000

    t3 = v3 / 2000;
    if(t3>0){
        v3 = v3 % 2000;
    } //Pecahan 2.000

    t4 = v3 / 1000;
    if(t4>0){
        v3 = v3 % 1000;
    } //Pecahan 1.000

    //console.log(v3+", "+t+", "+t1+", "+t2+", "+t3+", "+t4);
    console.log("Pecahan 50.000 = " + convT(t));
    console.log("Pecahan 10.000 = " + convT(t1));
    console.log("Pecahan 5.000 = " + convT(t2));
    console.log("Pecahan 2.000 = " + convT(t3));
    console.log("Pecahan 1.000 = " + convT(t4));
}

function convT(x) {
    i = Math.floor(x);
    var angka = new Array('0','1','2','3','4','5');
    var kata = new Array('0 lembar','1 Lembar','2 lembar','3 lembar','4 lembar','5 lembar');
    var bilang=kata[i];
    return bilang;
}

printMoney()
