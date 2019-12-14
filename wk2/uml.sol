pragma solidity ^0.4.16;

contract UML {
 
	mapping( string => address ) authorize ;

	function register ( string module ) public {
		require( bytes( module ).length > 0 ) ;
		require( authorize[ module ] == address( 0 ) ) ;
		authorize[ module ] = msg.sender ;
	}

	function add ( string module , string who ) public view returns ( address ) {
		require( bytes( module ).length > 0 && bytes( who ).length > 0 ) ;
		require( authorize[ module ] == msg.sender ) ;
		return authorize[ module ] ; // returns the authorized signer address
	}

}
