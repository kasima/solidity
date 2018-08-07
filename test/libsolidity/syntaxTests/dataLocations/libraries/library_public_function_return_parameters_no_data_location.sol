library L {
    function h(uint[]) public pure returns (uint[]) {}
}
// ----
// TypeError: (27-33): Data location must be "storage" or "memory" for parameter in function, but none was given.
// TypeError: (56-62): Data location must be "storage" or "memory" for return parameter in function, but none was given.
