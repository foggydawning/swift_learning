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

        enum textVariants: String{
            case older = "старше меня"
            case younger = "моложе меня"
            case equal = "такого же возраста, как и я"
        }

        var result: String
        
        if p.age > self.age{
            result = textVariants.older.rawValue
        } else if p.age == self.age{
            result = textVariants.equal.rawValue
        } else{
            result = textVariants.younger.rawValue
        }
        
        return "\(p.name) \(result)"
    }
    
    func getInfo() -> String{
        "\(self.name) \(self.age) \(checkRussianWordYear())"
    }
    
    private func checkRussianWordYear() -> String{
        
        var result: String
        let lastNumber: Int = self.age % 10
        
        switch lastNumber {
        case 0,
             5...9 where self.age > 20 || self.age < 11,
             0...9 where 11 <= self.age && self.age <= 19:
            result = "лет"
        case 1:
            result = "год"
        default:
            result = "года"
        }
        return result
    }
}

// task №3: to create class Hero with lifeCount property and hit() method
// task №4: to add to the Hero Class isAlive() property
// task №5: convert the var lifeCount to the private var
class Hero {
    private var lifeCount: Int
    var isAlive: Bool {
        if lifeCount > 0{
            return true
        } else{
            return false
        }
    }
    
    init(lifeCount: Int) {
        self.lifeCount = lifeCount
    }
    
    func hit(){
        self.lifeCount -= 1
    }
}

// task №6: create the class SuperHero from the class Hero
class SuperHero: Hero {
    override init(lifeCount: Int) {
        super.init(lifeCount: lifeCount)
    }
    override func hit() {
    }
}
