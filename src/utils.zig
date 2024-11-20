pub fn pow(
    comptime Base: type,
    base: Base,
    expo: usize,
) Base {
    var prod = base;
    for (0..expo) |_| {
        prod *= base;
    }

    return prod;
}
