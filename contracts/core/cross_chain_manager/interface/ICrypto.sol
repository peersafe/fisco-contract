pragma solidity ^0.5.0;

interface ICrypto{
    function sm3(bytes calldata data) external pure returns(bytes32);
    function keccak256Hash(bytes calldata data) external pure returns(bytes32);
    function sm2Verify(bytes32 message, bytes calldata publicKey, bytes32 r, bytes32 s) external pure returns(bool, address);
    function curve25519VRFVerify(string calldata input, string calldata vrfPublicKey, string calldata vrfProof) external pure returns(bool,uint256);
}