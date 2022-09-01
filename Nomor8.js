var transaction = [
    { id:"1", totalPrice:"652000", day: "senin" },
    { id:"2", totalPrice:"245000", day: "selasa" },
    { id:"3", totalPrice:"214000", day: "rabu" },
    { id:"4", totalPrice:"664000", day: "kamis" },
    { id:"5", totalPrice:"144000", day: "minggu" },
    { id:"6", totalPrice:"422000", day: "sabtu" },
    { id:"7", totalPrice:"263000", day: "minggu" },
    { id:"8", totalPrice:"655000", day: "rabu" },
    { id:"9", totalPrice:"426000", day: "selasa" },
    { id:"10", totalPrice:"512000", day: "kamis" },
];

var foundValue = transaction.filter(obj=>obj.day==='senin');
var foundValue2 = transaction.filter(obj=>obj.day==='selasa');
var foundValue3 = transaction.filter(obj=>obj.day==='rabu');
var foundValue4 = transaction.filter(obj=>obj.day==='kamis');
var foundValue5 = transaction.filter(obj=>obj.day==='sabtu');
var foundValue6 = transaction.filter(obj=>obj.day==='minggu');

console.log(foundValue);
console.log(foundValue2);
console.log(foundValue3);
console.log(foundValue4);
console.log(foundValue5);
console.log(foundValue6);
