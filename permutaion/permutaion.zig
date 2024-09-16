// *****************sorting and difference calculation for Minimum Operations to Form a Permutation**************
const std = @import("std");

// slices are pointer to the first element of the sequence and a length
// slices are used to represent data structures that are contiguous in memory 
// slices have type of []T, where T is the type of elements.

fn count_to_make_permute(arr : []i8) !u8 {
    const arr_len = arr.len;
    _ = arr_len;
    // usize is the the natural unsized integer for the platform.
    // operation should be u8 because @abs return as u8 in line 21
    var operations : u8 = 0;
    std.log.info("type of array, {any} ", .{@TypeOf(arr)});
    // std.mem.sort function in Zig sorts the array in place and does not return a new sorted array
    std.mem.sort(i8, arr, {}, comptime std.sort.asc(i8));
    std.log.info("sorted arr : {any}", .{arr});
    for (arr, 0..) |val, i|{
        // index i has type of usize(platform's size), thus need to converted to i8
        const j : i8 = @intCast(i);
        operations += @abs(val-(j+1));
    }
    // _ = arr_sorted;
    std.log.info("operations required for permutation: {d}", .{operations});

    return operations;
}
        // std.log.info("type of array, {any} ", .{@TypeOf(val)});
        // std.log.info("type of array, {any} ", .{@TypeOf(i)});
        // std.log.info("val is, index is, {}, {} ", .{v, i});
pub fn main() !void {
    
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();
    // Declaration of array to  store the input from the user
    var buf: [1000]u8 = undefined;
    // Declaration of array to hold the each user input
    var temp_arr : [1000]i8 = undefined;
    // Variable determine the max charecter entered by user
    var arr_len : usize = 0;

    std.debug.print("Numbers please: ", .{});
    // readUntilDelimiterOrEof takes input from stdin as u8, thus earlier buf array is defined as u8
    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        for (user_input) |char|{
            // since stdin is taken as u8, need to subtract 0 ascii value from ascii integer entered to get actual integer 
            const digit = char - '0';
            if (digit > 9){
                try stdout.print("Invalid Input. Only Acccepts digits. \n",.{});
                return;
            }
        // insert to the array as intCast cating to array type i8
        temp_arr[arr_len] = @intCast(digit);
        arr_len += 1;
        }
    }
    const slice_arr = temp_arr[0..arr_len];

    // try stdout.print("Array: ", .{});
    // for (slice_arr[0..arr_len]) |digit| {
    //     try stdout.print("{d}, ", .{digit});
    //     }
    // try stdout.print("\n", .{});

    const operations = try count_to_make_permute(slice_arr);
    // _ = operations;
    std.log.info("Minimum operations required {d}", .{operations});
}

// The term "greedy" reflects the algorithm's strategy of taking what seems best at the moment (the local optimum) 
// without considering whether this choice will lead to a better overall solution later. This approach can yield 
// efficient solutions for many problems but may not always guarantee the best possible outcome in every scenario.