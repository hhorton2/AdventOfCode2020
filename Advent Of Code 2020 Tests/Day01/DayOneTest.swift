import XCTest
@testable import Advent_Of_Code_2020

class DayOneTest: XCTestCase {
    let exampleExpenses = [1721, 979, 366, 299, 675, 1456];

    func testPartOneExample() throws {
        let result = DayOne.SolvePartOne(expenses: exampleExpenses);

        XCTAssertEqual(514579, result);
    }

    func testPartOne() throws {
        let expenses = getInputFromFile();
        let result = DayOne.SolvePartOne(expenses: expenses);

        XCTAssertNotEqual(0, result);
        print(result);
    }

    func testPartTwoExample() throws {
        let result = DayOne.SolvePartTwo(expenses: exampleExpenses);

        XCTAssertEqual(241861950, result);
    }

    func testPartTwo() throws {
        let expenses = getInputFromFile();

        let result = DayOne.SolvePartTwo(expenses: expenses);

        XCTAssertNotEqual(0, result);
        print(result);
    }

    private func getInputFromFile() -> [Int]{
        FileUtil.getLinesFromFile(fileName: "dayOneInputPartOne").filter { (s: String) -> Bool in
            s.count > 0
        }.map { expenseString -> Int in
            Int(expenseString)!
        };
    }
}
