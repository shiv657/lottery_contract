pragma solidity ^0.8.0;

contract SimpleLottery {
    address[] public participants;
    address public winner;

    function enterLottery() public {
        participants.push(msg.sender);
    }

    function pickWinner() public {
        require(participants.length > 0, "No participants");
        uint randomIndex = uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % participants.length;
        winner = participants[randomIndex];
    }
}
