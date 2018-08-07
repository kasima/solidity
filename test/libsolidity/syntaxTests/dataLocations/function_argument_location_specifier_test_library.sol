library test {
    function f(bytes calldata) public;
}
// ----
// TypeError: (30-35): Data location must be "storage" or "memory" for parameter in function, but "calldata" was given.
