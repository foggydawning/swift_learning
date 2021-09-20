// homework08
// created by Chub Ilia
// start date of execution: 20.09.2021

// task №1
struct Person {
    var name: String
    var age: Int

 
    func getAgeComparisonString(_ p: Person) -> String {
        // A function for comparing the age of two Person
        let variantsDict: [String : String] = [
                                            "older" : "старше меня",
                                            "younger": "моложе меня",
                                            "equal": "такого же возраста, как и я"
                                            ]
        var result: String
        
        if p.age > self.age{
            result = variantsDict["older"]!
        } else if p.age == self.age{
            result = variantsDict["equal"]!
        } else{
            result = variantsDict["younger"]!
        }
        
        return "\(p.name) \(result)"
    }
}
