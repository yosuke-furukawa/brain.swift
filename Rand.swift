public struct RandGenerator : RandomNumberGenerator {
  private var rnd: UInt64
  init(seed:Int) {
    rnd = UInt64(seed)
    for _ in 0..<10 { _ = self.next() }
  }
  public mutating func next() -> UInt64 {
    rnd = (rnd &* 10777) &+ 13577
    return rnd
  }
}
