library L {
    function g(uint[]) internal pure returns (uint[2]) {}
}
// ----
// TypeError: (27-33): Data location must be "storage" or "memory" for parameter in function, but none was given.
// TypeError: (58-65): Data location must be "storage" or "memory" for return parameter in function, but none was given.
