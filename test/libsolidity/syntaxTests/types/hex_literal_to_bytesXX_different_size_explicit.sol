contract C {
   function f() public pure {
     bytes1 b1 = bytes1(0x100);
     bytes2 b2 = bytes2(0xFF);
     bytes2 b3 = bytes2(0x10000);
     bytes3 b4 = bytes3(0xFFFF);
     bytes3 b5 = bytes3(0x1000000);
     bytes4 b6 = bytes4(0xFFFFFF);
     bytes4 b7 = bytes4(0x100000000);
     bytes16 b8 = bytes16(0x1);
     bytes32 b9 = bytes32(0x1);
   }
}
// ----
// TypeError: (60-73): Explicit type conversion not allowed from "int_const 256" to "bytes1".
// TypeError: (92-104): Explicit type conversion not allowed from "int_const 255" to "bytes2".
// TypeError: (123-138): Explicit type conversion not allowed from "int_const 65536" to "bytes2".
// TypeError: (157-171): Explicit type conversion not allowed from "int_const 65535" to "bytes3".
// TypeError: (190-207): Explicit type conversion not allowed from "int_const 16777216" to "bytes3".
// TypeError: (226-242): Explicit type conversion not allowed from "int_const 16777215" to "bytes4".
// TypeError: (261-280): Explicit type conversion not allowed from "int_const 4294967296" to "bytes4".
// TypeError: (300-312): Explicit type conversion not allowed from "int_const 1" to "bytes16".
// TypeError: (332-344): Explicit type conversion not allowed from "int_const 1" to "bytes32".
