func analyzer(_ t: Int) -> [(String, Int)] {
  let elems = ["努力", "怠惰", "信念", "徹夜", "幸運", "偶然", "自信", "根性", "誤謬", "打算", "天啓", "不安"]
  var rnd = RandGenerator(seed: t)
  var rates = [Double]()

  for _ in 0..<5 {
    rates.append(Double.random(in: 0.0..<1.0, using: &rnd))
  }
  let total = rates.reduce(0.0, +)
  return [(String, Int)](zip(elems.shuffled(using:&rnd),
    rates.sorted(by:>).map { Int(Double($0 * 100) / total + 0.5 ) }))
}
