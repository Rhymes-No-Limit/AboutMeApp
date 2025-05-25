struct Login {
    let name: String
    let password: String
    
    static func getLoginDate() -> Login {
        return Login(name: "Rhymes", password: "123")
    }
}
