contract C {
   function f() public pure {
     bytes1 b1 = 0x100;
     bytes2 b2 = 0xFF;
     bytes2 b3 = 0x10000;
     bytes3 b4 = 0xFFFF;
     bytes3 b5 = 0x1000000;
     bytes4 b6 = 0xFFFFFF;
     bytes4 b7 = 0x100000000;
     bytes16 b8 = 0x1;
     bytes32 b9 = 0x1;
   }
}
// ----
// TypeError: (48-65): Type int_const 256 is not implicitly convertible to expected type bytes1.
// TypeError: (72-88): Type int_const 255 is not implicitly convertible to expected type bytes2.
// TypeError: (95-114): Type int_const 65536 is not implicitly convertible to expected type bytes2.
// TypeError: (121-139): Type int_const 65535 is not implicitly convertible to expected type bytes3.
// TypeError: (146-167): Type int_const 16777216 is not implicitly convertible to expected type bytes3.
// TypeError: (174-194): Type int_const 16777215 is not implicitly convertible to expected type bytes4.
// TypeError: (201-224): Type int_const 4294967296 is not implicitly convertible to expected type bytes4.
// TypeError: (231-247): Type int_const 1 is not implicitly convertible to expected type bytes16.
// TypeError: (254-270): Type int_const 1 is not implicitly convertible to expected type bytes32.
