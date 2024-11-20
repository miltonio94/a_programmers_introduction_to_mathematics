const std = @import("std");
const Polynomial = @import("polynomial.zig").Polynomial;

pub fn main() !void {
    var coefficients: [5]f32 = undefined;
    coefficients[0] = 34.8;
    coefficients[1] = 37.9;
    coefficients[2] = 2.0;
    coefficients[3] = 3.19;
    coefficients[4] = 7.0;
    var poly = Polynomial.init(coefficients[0..]);
    const x: f32 = 89.0;
    const prod = poly.operate(x);

    std.debug.print(
        "The polynomial of {} with the coefficient of {any} is {d:.10}",
        .{ x, coefficients, prod },
    );
}

test "simple test" {}
