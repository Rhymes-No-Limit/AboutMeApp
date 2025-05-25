struct Description {
    static let name = "Андрей"
    static let surname = "Терентьев"
    static let age = 29
    static let placeOfWork = "Т-Банк"
    static let post = "РГ"
    
    static func description() -> String {
        "Привет. меня зовут \(name) \(surname). Мне \(age) лет. Я родом из МО Сергиев посад, мечтаю стать IOS разработчиком, в будущем работать на удаленке, развиваться в IT сфере, изучать допом дизайн, для понимания как создавать реально крутые проекты и в дальнейшем подключиться к изучение дополненной реальности. Сейчас я работаю в \(placeOfWork), на должности \(post) "
    }
}
