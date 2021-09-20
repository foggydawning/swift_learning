// homework08
// created by Chub Ilia
// start date of execution: 20.09.2021

// task №1: create getAgeComparingString func
// task №2: create getInfo func
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
    
    func getInfo() -> String{
        "\(self.name) \(self.age) \(checkRussianWordYear())"
    }
    
    private func checkRussianWordYear() -> String{
        
        var result: String
        let lastNumber: Int = self.age % 10
        
        if (11...20).contains(self.age){
            result = "лет"
        } else {
            switch lastNumber {
            case 1:
                result = "год"
            
            case 2...4:
                result = "года"
            default:
                result = "лет"
            }
        }
        return result
    }
}

// task №3: create class Hero with lifeCount property and hit() method
class Hero {
    var lifeCount: Int
    init(lifeCount: Int) {
        self.lifeCount = lifeCount
    }
    func hint(){
        self.lifeCount -= 1
    }
}
