//
// Created by Hunter Horton on 12/6/20.
//

import Foundation
import XCTest
@testable import Advent_Of_Code_2020

class DayThreeTest: XCTestCase {
    let exampleMap = [
        [".", ".", "#", "#", ".", ".", ".", ".", ".", ".", "."],
        ["#", ".", ".", ".", "#", ".", ".", ".", "#", ".", "."],
        [".", "#", ".", ".", ".", ".", "#", ".", ".", "#", "."],
        [".", ".", "#", ".", "#", ".", ".", ".", "#", ".", "#"],
        [".", "#", ".", ".", ".", "#", "#", ".", ".", "#", "."],
        [".", ".", "#", ".", "#", "#", ".", ".", ".", ".", "."],
        [".", "#", ".", "#", ".", "#", ".", ".", ".", ".", "#"],
        [".", "#", ".", ".", ".", ".", ".", ".", ".", ".", "#"],
        ["#", ".", "#", "#", ".", ".", ".", "#", ".", ".", "."],
        ["#", ".", ".", ".", "#", "#", ".", ".", ".", ".", "#"],
        [".", "#", ".", ".", "#", ".", ".", ".", "#", ".", "#"]
    ];
    let partTwoSlopes = [
        [1, 1],
        [1, 3],
        [1, 5],
        [1, 7],
        [2, 1],
    ]

    func testPartOneExample() throws {
        let result = DayThree.Solve(map: exampleMap, rowsPerStep: 1, columnsPerStep: 3);

        XCTAssertEqual(7, result);
    }

    func testPartOne() throws {
        let map = getInputFromFile();
        let result = DayThree.Solve(map: exampleMap, rowsPerStep: 1, columnsPerStep: 3);

        XCTAssertNotEqual(0, result);
        print(result);
    }

    func testPartTwoExample() throws {
        let result = partTwoSlopes.map { slope -> Int in
            DayThree.Solve(map: exampleMap, rowsPerStep: slope[0], columnsPerStep: slope[1]);
        }.reduce(1, { x, y in
            x * y
        });

        XCTAssertEqual(336, result);
    }

    func testPartTwo() throws {
        let map = getInputFromFile();
        let result = partTwoSlopes.map { slope -> Int in
            DayThree.Solve(map: map, rowsPerStep: slope[0], columnsPerStep: slope[1]);
        }.reduce(1, { x, y in
            x * y
        });

        XCTAssertNotEqual(0, result);
        print(result);
    }

    private func getInputFromFile() -> [[String]] {
        FileUtil.getLinesFromFile(fileName: "dayThreeInputPartOne").filter { (s: String) -> Bool in
            s.count > 0
        }.map { rowString -> [String] in
            rowString.map { character -> String in
                String(character)
            }
        };
    }
}
