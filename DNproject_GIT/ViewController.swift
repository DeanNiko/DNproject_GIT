//
//  ViewController.swift
//  DNproject_GIT
//
//  Created by Dean Nikolov on 8/20/17.
//  Copyright © 2017 Dean Nikolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print("Blok STRING_EASY_TASK2")
        let name = "Dean"
        let count = receivingName(name: name)
        print("Count characters in my name \(name) is \(count)")
        print("================================")

        print("Blok SRING_EASY_TASK3")
        print(userName(firstName: "Dean", lastName: "Nikolov"))
        print("================================")

        print("Blok SRING_EASY_TASK3")
        let patronymicNameUser = "Дін ІвановИЧ"
        patronymicOfUser(nameAndPatronymic: patronymicNameUser)
        print("================================")

    }

    //Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль.

    func receivingName(name: String) -> Int {
        return name.characters.count
    }

    //Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом "_"

    func userName(firstName: String, lastName: String) -> String {
        return firstName + "_" + lastName
    }

    //Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд. Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его.

    func patronymicOfUser (nameAndPatronymic: String) {
        let lowerCaseName = nameAndPatronymic.lowercased()

        if lowerCaseName.hasSuffix("ич") {
            print("M")
        } else if lowerCaseName.hasSuffix("на") {
            print("Ж")
        } else {
            print("WOW! wrong string")

        }
    }




}



