//
//  main.swift
//  Swift.BTVN7
//
//  Created by Ngô Minh Tuấn on 01/06/2021.
//

import Foundation

//1.Tạo đối tượng có tên SoHoc gồm có các thuộc tính và phương thức sau:
//+ Thuộc tính: number1, number2
//+ Phương thức:
//- Các hàm tạo không đối số, đầy đủ đối số
//- printInfo(): dùng để hiển thị number1, number2
//- addition(): dùng để cộng number1, number2
//- subtract(): trừ number1 cho number2
//- multi(): dùng để nhân number1, number2
//- division(): dùng để chia number1 cho number2.

class soHoc {
    var number1 : Int
    var number2 : Int

    init(_ number1: Int,_ number2: Int) {
        self.number1 = number1
        self.number2 = number2
    }

    func printInfo() {
        print("number1 là: \(number1)")
        print("number2 là: \(number2)")
    }

    func addition() {
        print("\(number1) + \(number2) = \(self.number1 + self.number2)")
    }

    func subtract() {
        print("\(number1) - \(number2) = \(self.number1 - self.number2)")
    }

    func multi() {
        print("\(number1) * \(number2) = \(self.number1 * self.number2)")
    }

    func division() {
        print("\(number1) / \(number2) = \(self.number1 / self.number2)")
    }

}

func part1() {
    let number = soHoc(10, 5)
    number.printInfo()
    number.addition()
    number.subtract()
    number.multi()
    number.division()

}
part1()


//2.
//Viết class NhanVien gồm các thuộc tính:
//+ Tên
//+ Tuổi
//+ Địa chỉ
//+ Tiền lương (kiểu Double)
//+ Tổng số giờ làm (kiểu Int)
//Constructor không tham số. Constructor đầy đủ tham số.
//Và các phương thức:
//- printInfo() : in ra tất cả các thông tin của nhân viên
//- tinhThuong(): Tính toán và trả về số tiền thưởng của nhân viên theo công thức sau:
//Nếu tổng số giờ làm của nhân viên >=200 thì thưởng = lương * 20%
//Nếu tổng số giờ làm của nhân viên <200 và >=100 thì thưởng = lương * 10%
//Nếu tổng số giờ làm của nhân viên <100 thì thưởng = 0

class NhanVien {
    var name : String
    var age : Int
    var address : String
    var salary : Double
    var workTime : Int
    var thuong: Double?

    init(_ name:String, _ age:Int, _ address:String, _ salary:Double, _ workTime:Int) {
        self.name = name
        self.age = age
        self.address = address
        self.salary = salary
        self.workTime = workTime
    }

    func printInfo() {
        print("\(name), \(age) tuổi, địa chỉ: \(address), tiền lương: \(salary), tổng số giờ làm: \(workTime)")
    }

    func tinhThuong() {
        if self.workTime < 0 {
            print("Không hợp lệ")
        } else if self.workTime >= 200 {
            self.thuong = self.salary * 0.2
        } else if self.workTime >= 100 {
            self.thuong = self.salary * 0.1
        } else {
            self.thuong = 0
        }
        print((thuong == nil ? "không có" : thuong!))


    }

}
func part2() {
    let person = NhanVien("Tuan", 20, "Ha noi", 9000, 300)
    person.printInfo()
    person.tinhThuong()
}
part2()

//3. Xây dựng tam giác (Triangle) có các thuộc tính và method như sau:
//Thuộc tính: 3 cạnh  của một tam giác
//Phương thức:
//- Hàm khởi tạo truyền vào 3 cạnh
//- Xác định kiểu tam giác: tam giác cân, tam giác đều, tam giác vuông, tam giác thường
//- Tính chu vi tam giác
//- Tính diện tích tam giác

class Triangle {
    var a: Int
    var b: Int
    var c: Int
    
    init(_ a: Int, _ b: Int, _ c: Int) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func check() -> String {
        if a + b < c || a + c < b || b + c < a {
            return "Tam giác không hợp lệ"
        } else if a == b && b == c && c == a {
            return "Tam giác đều"
        } else if a == b || b == c || c == a {
            return "Tam giác cân"
        } else if (a*a + b*b) == c*c || (c*c + b*b) == a*a || (a*a + c*c) == b*b {
            return "Tam giác vuông"
        } else {
            return "Tam giác thường"
        }
    }
    
    func perimeter() -> String {
        if a + b < c || a + c < b || b + c < a {
            return "Tam giác không hợp lệ"
        } else {
            return "Chu vi tam giác là: \(a + b + c)"
        }
    }
    
    func area() -> String {
        if a + b < c || a + c < b || b + c < a {
            return "Tam giác không hợp lệ"
        } else {
            let p: Float = Float(a + b + c) / 2
            let dienTich: Float = sqrtf(p * (p - Float(a)) * (p - Float(b)) * (p - Float(c)))
            return "Diện tích tam giác là: \(dienTich)"
        }
    }
}

func part3() {
    let number = Triangle(3, 4, 5)
    print(number.check())
    print(number.perimeter())
    print(number.area())
}
part3()
