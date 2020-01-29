pragma solidity >=0.4.25 <0.6.0;

import "./C.sol";

/// @title A - Implementing the contract for an example  for a Library Driven Development approach.
/// @author Edgar Herrador - <edgar.herrador@slock.it>
contract A {

    /*
     * Public functions
     */

    /// @dev When function a() of contract A is called, the contract will made a call (DELEGATECALL) to the function a() of the library and the calling context is passed to the library.
    /// @return The address of this funtion is returned and not the library's.
    function a() public view returns (address) {
        return C.a();
    }
}