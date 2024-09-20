const std = @import("std");
pub fn eggCount(number: usize) usize {
    // _ = number;
    // @compileError("please implement the eggCount function");
    // The operation of counting the number of ones in a binary word consisting of n bits is also known as sideways addition, bit count, or population count 
    // It is a remarkable fact that in two’s complement representation for x != 0 the right-most one of x can be deleted by the operation x & (x−1), where & denotes the bit-wise AND of two value
    // 17   => 10001
    // 17-1 => 10001 - 00001 = 10000
    // 17&(17-1) = 10001 & 10000 = 10000 ==> right most 1 deleted.
    
    // isolating bits
    var count : usize = 0;
    var n = number;
    while (n>0){
        count += n & 1;
        n = n>>1;
    }
    return count;
}

