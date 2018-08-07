contract C {
    // Warning for no data location provided can be silenced with storage or memory.
    function f(uint[] memory, uint[] storage) private pure {}
    function g(uint[] memory, uint[] storage) internal pure {}
    function h(uint[] memory) public pure {}
    function i(uint[] calldata) external pure {}
    // No warning for events.
    event e(uint[]);
}
