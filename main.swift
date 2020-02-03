print("あなたの名前: ", terminator: "")

if let name = readLine() {
  let chars = name.filter{ !$0.isWhitespace }
  let v = chars.unicodeScalars.reduce(0){ $0 &+ $1.value }
  print("\(name)さんのプログラムは、")
  for (elm, val) in analyzer(Int(v)) {
    print("  \(elm):\(val)%", terminator: "")
  }
  print("  でできています。")
}
