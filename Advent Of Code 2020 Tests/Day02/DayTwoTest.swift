import XCTest
@testable import Advent_Of_Code_2020

class DayTwoTest: XCTestCase {
    let examplePasswords = [
        ElfPassword(minCountPolicy: 1, maxCountPolicy: 3, letterPolicy: "a", password: "abcde"),
        ElfPassword(minCountPolicy: 1, maxCountPolicy: 3, letterPolicy: "b", password: "cdefg"),
        ElfPassword(minCountPolicy: 2, maxCountPolicy: 9, letterPolicy: "c", password: "ccccccccc"),
    ];

    func testPartOneExample() throws {
        let result = DayTwo.SolvePartOne(passwords: examplePasswords);

        XCTAssertEqual(2, result);
    }

    func testPartOne() throws {
        let passwords = getInputFromFile();
        let result = DayTwo.SolvePartOne(passwords: passwords);

        XCTAssertNotEqual(0, result);
        print(result);
    }

    func testPartTwoExample() throws {
        let result = DayTwo.SolvePartTwo(passwords: examplePasswords);

        XCTAssertEqual(1, result);
    }

    func testPartTwo() throws {
        let passwords = getInputFromFile();

        let result = DayTwo.SolvePartTwo(passwords: passwords);

        XCTAssertNotEqual(0, result);
        print(result);
    }

    private func getInputFromFile() -> [ElfPassword] {
        FileUtil.getLinesFromFile(fileName: "dayTwoInputPartOne").filter { (s: String) -> Bool in
            s.count > 0
        }.map { passwordString -> ElfPassword in
            let splitPassword = passwordString.split(separator: " ");
            let numberPolicy = splitPassword[0];
            let letterPolicy = splitPassword[1].first!;
            let password = String(splitPassword[2]);
            let minCountPolicy = Int(numberPolicy.split(separator: "-")[0])!;
            let maxCountPolicy = Int(numberPolicy.split(separator: "-")[1])!;
            return ElfPassword(minCountPolicy: minCountPolicy, maxCountPolicy: maxCountPolicy, letterPolicy: letterPolicy, password: password)
        };
    }
}