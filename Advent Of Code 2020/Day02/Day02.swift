class DayTwo {
    class func SolvePartOne(passwords: [ElfPassword]) -> Int {
        var validCount = 0;
        for elfPassword in passwords {
            let letterCount = elfPassword.password.filter { (character: Character) -> Bool in
                character == elfPassword.letterPolicy
            }.count;
            if (letterCount >= elfPassword.minCountPolicy && letterCount <= elfPassword.maxCountPolicy) {
                validCount += 1;
            }
        }
        return validCount;
    }

    class func SolvePartTwo(passwords: [ElfPassword]) -> Int {
        return passwords.map { elfPassword -> Bool in
            let firstLetter = elfPassword.password[elfPassword.minCountPolicy - 1];
            let secondLetter = elfPassword.password[elfPassword.maxCountPolicy - 1];
            if (firstLetter == secondLetter && secondLetter == elfPassword.letterPolicy) {
                return false;
            }
            return (firstLetter == elfPassword.letterPolicy) ||
                    (secondLetter == elfPassword.letterPolicy)
        }.filter { (b: Bool) in
            b
        }.count;
    }
}
