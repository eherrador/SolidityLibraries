pragma solidity >=0.4.25 <0.6.0;

/// @title A - Implementing the library for an example  for a Library Driven Development approach.
/// @author Edgar Herrador - <edgar.herrador@slock.it>
library C {

    /*
     * Public functions
     */

    /// @dev The library C can be seen as implicit base contracts of the contract A that use them.
    /// @return The address of the funtion in the contract A is returned and not the address of the library C.
    function a() public view returns (address) {
        return address(this);
    }
}