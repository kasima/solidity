library L {
    struct Nested { uint y; }
    // data location specifier in function signature should be optional even if there are multiple choices
    function b(function(Nested calldata) external returns (uint)[] storage) external pure {}
    function c(function(Nested memory) external returns (uint)[] storage) external pure {}
    function d(function(Nested storage) external returns (uint)[] storage) external pure {}
}

// ----
// TypeError: (173-179): Data location must be "memory" for parameter in function, but "calldata" was given.
// TypeError: (357-363): Data location must be "memory" for parameter in function, but "storage" was given.
