const std = @import("std");
pub fn squareOfSum(number: usize) usize {
    // _ = number;
    // @compileError halts the compilation and displays specified message. preventing erroneous states from being 
    // reached in runtime. This makes your code more robust and self-documenting, as it clearly communicates 
    // constraints and requirements to anyone reading or using your code.
    // @compileError("compute the sum of i from 0 to n then square it");
    var sum : usize = 0;
    // for loop iteration not include target value in zig
    for (1..number+1) |i|{
        // std.log.info("{}", .{i});
        sum+=i;
    }
    return sum*sum;
}

pub fn sumOfSquares(number: usize) usize {
    // _ = number;
    var i : usize = 0;
    var cum_sum : usize = 0;
    while(i <= number){
        cum_sum += (i*i);
        i += 1;
    }
    // @compileError("compute the sum of i^2 from 0 to n");
    return cum_sum;
}

pub fn differenceOfSquares(number: usize) usize {
    // _ = number;
    const sumOfsq = sumOfSquares(number);
    const sqOfsum = squareOfSum(number);

    return sqOfsum-sumOfsq;
    // @compileError("compute the difference between the square of sum and sum of squares");
}

// pub fn main() !void{
//     const n : usize = 3;
//     // const result = squareOfSum(n);
//     std.log.info("{any}",.{differenceOfSquares(n)});
// }