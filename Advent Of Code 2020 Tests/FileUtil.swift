import Foundation

class FileUtil {
    class func getLinesFromFile(fileName: String, fileExtension: String = "txt") -> [String] {
        if let path: String = Bundle(for: self).path(forResource: fileName, ofType: fileExtension) {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let myStrings = data.components(separatedBy: .newlines)
                return myStrings;
            } catch {
                print(error)
            }
        }
        return [];
    }
}