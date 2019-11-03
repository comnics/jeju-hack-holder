pragma solidity >=0.4.24 <=0.5.6;

contract DIDCouncil {
    address public owner;

    enum NodeStatus { NOTWORKING, WORKING, IDLE }

    struct Issuer {
        string name;
        address addr;
        string url;
        NodeStatus status;
    }

    struct VerifyList {
        address issuer;
        string verikey;
        string opt1;
        string opt2;
        string opt3;
        string opt4;
    }

    Issuer[] public IssuerList;

    constructor() public {
        owner = msg.sender;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function deposit() public payable {  
        require(msg.sender == owner);
    }   

    function transfer(uint _value) public returns (bool) {
        require(getBalance() >= _value);
        msg.sender.transfer(_value);
        return true;
    }

    function registerIssuer(string memory name, string memory url) public returns (bool) {
        Issuer memory issuer;
        issuer.name = name;
        issuer.addr = msg.sender;
        issuer.url = url;
        issuer.status = NodeStatus.WORKING;
        
        IssuerList.push(issuer);
        
        return true;
    }
    
    function getIssuerInfo(string memory name) public view returns (string memory) {
        //Issuer memory issuer;
        uint arrayLength = IssuerList.length;
        for(uint i = 0; i < arrayLength ; i++){
            if(keccak256(bytes(IssuerList[i].name)) == keccak256(bytes(name))){
                return IssuerList[i].url;
            }
        }
        return "-1";
    }

    // function issueCredencial(string memory content) public returns (bool) {

    //     return true;
    // }
}
