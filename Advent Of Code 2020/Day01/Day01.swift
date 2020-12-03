class DayOne {
    class func SolvePartOne(expenses: Array<Int>) -> Int {
        for expenseOne in expenses {
            for expenseTwo in expenses {
                if (expenseOne + expenseTwo == 2020) {
                    return expenseOne * expenseTwo;
                }
            }
        }
        return 0;
    }

    class func SolvePartTwo(expenses: Array<Int>) -> Int {
        for expenseOne in expenses {
            for expenseTwo in expenses {
                for expenseThree in expenses {
                    if (expenseOne + expenseTwo + expenseThree == 2020) {
                        return expenseOne * expenseTwo * expenseThree;
                    }
                }
            }
        }
        return 0;
    }
}
