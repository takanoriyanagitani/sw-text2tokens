import class NaturalLanguage.NLTokenizer

@main
struct TextToTokens {
  static func main() {
    let tokenizer: NLTokenizer = NLTokenizer(unit: .word)
    while let line = readLine() {
      tokenizer.string = line
      let start: String.Index = line.startIndex
      let end: String.Index = line.endIndex
      let range: Range<String.Index> = start..<end
      tokenizer.enumerateTokens(in: range) {
        let tr = $0
        _ = $1
        let txt: Substring = line[tr]
        print(txt)
        return true
      }
    }
  }
}
