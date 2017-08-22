
import Foundation

var input: [UInt8] = [0x0b,0xad,0xf0,0x0d]
var other: [UInt8] = [0x0d]

var d = Data(bytes: input)
var e = d

d.append(contentsOf: other)
d
e
