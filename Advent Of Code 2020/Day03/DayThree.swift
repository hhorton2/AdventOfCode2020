//
// Created by Hunter Horton on 12/6/20.
//

import Foundation

class DayThree {
    class func Solve(map: [[String]], rowsPerStep: Int, columnsPerStep: Int) -> Int {
        let mapWidth = map[0].count;
        let mapHeight = map.count;
        var currentRow = 0;
        var currentColumn = 0;
        var treeCount = 0;
        while currentRow < map.count {
            if (map[currentRow][currentColumn] == "#") {
                treeCount += 1;
            }
            currentColumn = (currentColumn + columnsPerStep) % mapWidth;
            currentRow += rowsPerStep;
        }
        return treeCount;
    }
}
