contract Test {
    string s;
    bytes b;
    function h(string calldata _s) external { bytes(_s).length; }
    function i(string memory _s) internal { bytes(_s).length; }
    function j() internal { bytes(s).length; }
    function k(bytes calldata _b) external { string(_b); }
    function l(bytes memory _b) internal { string(_b); }
    function m() internal { string(b); }
}
// ----
// Warning: (47-108): Function state mutability can be restricted to pure
// Warning: (113-172): Function state mutability can be restricted to pure
// Warning: (177-219): Function state mutability can be restricted to view
// Warning: (224-278): Function state mutability can be restricted to pure
// Warning: (283-335): Function state mutability can be restricted to pure
// Warning: (340-376): Function state mutability can be restricted to view
