/**
 *Submitted for verification at thetatoken.org on 2022-06-04
 */
//SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // 0.8.12

contract SimpleStorage {

    // types: boolean, uint, int, address, bytes
    //bool hasFavoriteNumber = true;
    uint256 favoriteNumber;

    //People public person = People({favoriteNumber: 4, name: "Russ"});
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //uint256[] public favoriteNumbersList;
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    // 0: 2, Patrick

    //string favoriteNumberInText = "San-Kyu";
    //int256 favoriteInt = -39;
    //address myAddress = 0xdd4a4C645d01b196B5c8e3ef1902Be957a6a938d;
    //bytes32 favoriteBytes = "dog"; // typically like 0x________ (32 is max bits a bytes can be)

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        //uint256 testVar = 5;
        // favoriteNumber = favoriteNumber +1;
    }

    // view, pure don't spend gas!
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    // calldata, memory and storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
// 0xd9145CCE52D386f254917e481eB44e9943F39138
// _ is just to make it a different variable