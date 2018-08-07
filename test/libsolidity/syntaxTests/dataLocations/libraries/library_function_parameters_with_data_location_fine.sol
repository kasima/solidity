library L {
    function f(uint[] memory, uint[] storage) private pure {}
    function g(uint[] memory, uint[] storage) internal pure {}
    function h(uint[] memory, uint[] storage) public pure {}
    function i(uint[] calldata, uint[] storage) external pure {}
}
