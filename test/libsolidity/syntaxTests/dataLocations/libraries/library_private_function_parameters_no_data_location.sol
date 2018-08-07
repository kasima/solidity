library L {
    function h(uint[]) private pure returns (uint[]) {}
}
// ----
// TypeError: (27-33): Data location must be "storage" or "memory" for parameter in function, but none was given.
// TypeError: (57-63): Data location must be "storage" or "memory" for return parameter in function, but none was given.
