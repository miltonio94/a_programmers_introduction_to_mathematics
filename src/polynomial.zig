const std = @import("std");
const utils = @import("utils.zig");
const math = std.math;

pub const Polynomial = struct {
    coefficients: []f32,

    pub fn init(coefficients: []f32) Polynomial {
        return .{ .coefficients = coefficients };
    }

    pub fn operate(self: *Polynomial, x: f32) f32 {
        var ret: f32 = self.coefficients[0];

        for (self.coefficients, 1..) |coef, deg| {
            ret += coef * utils.pow(f32, x, deg);
        }

        return ret;
    }
};
