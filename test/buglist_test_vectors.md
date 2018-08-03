# NestedArrayFunctionCallDecoder

## buggy

function f() returns (uint[2][2]) { }

--

function f() returns (uint[2][2] a) { }

--

function f() returns (uint x, uint[200][2] a) { }

--

function f() returns (uint[200][2] a, uint x) { }

--

function f() returns (uint[200][2] a, uint x);

## fine

function f() returns (uint[2]) { }

--

function f() returns (uint[2][] a) { }

--

function f() returns (uint x, uint[]] a) { }

--

function f(uint[2][2]) { }

--

function f() modifier(uint[2][2](x)) { }
