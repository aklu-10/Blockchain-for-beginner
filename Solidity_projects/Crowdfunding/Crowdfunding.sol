// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract CrowdFunding{
    
    mapping(address=>uint) public contributors;
    address public manager;
    uint public deadline;
    uint public target;
    uint public minContributionAmount;
    uint public raisedAmount;
    uint public numOfContributors; 

    struct Request{
        string description;
        address payable recipient;
        uint value;
        bool completed;
        uint noOfVoters;
        mapping (address=>bool) voters; 
    }
    
    mapping (uint=>Request) public requests;
    
    uint public numRequests;

    constructor(uint _target, uint _deadline){
        target=_target;
        deadline=block.timestamp+_deadline;
        minContributionAmount=0.1 ether;
        manager=msg.sender;
    }

    function contributeEther() public payable{
        require(block.timestamp<deadline, 'Deadline has passed');
        require(msg.value >= minContributionAmount, 'Minimum amount is not met');

        if(contributors[msg.sender]==0){
            numOfContributors++;
        }

        contributors[msg.sender]+=msg.value;
        raisedAmount+=msg.value;
    }

    function getTotalContributionAmount() public view returns (uint){
        return address(this).balance;
    }

    function refund() public{
        require(block.timestamp>deadline && ((raisedAmount/10**18)<target), 'Refund not applicable');
        require(contributors[msg.sender]>0, 'You did not contributed');
        address payable user = payable (msg.sender);
        user.transfer(contributors[msg.sender]);
        contributors[msg.sender]=0;
    }

    modifier onlyManager{
        require(msg.sender==manager, 'Only manager can create request.');
        _;
    }

    function createRequest(string memory _desciption, address payable _recipient, uint _value) public onlyManager{
        Request storage newRequest=requests[numRequests];
        numRequests++;
        newRequest.description=_desciption;
        newRequest.recipient=_recipient;
        newRequest.value=_value;
        newRequest.completed=false;
    }

    function voteRequest(uint _request_no) public {
        require(contributors[msg.sender]>0, 'You must be a contributor');
        Request storage thisRequest=requests[_request_no];
        require(thisRequest.voters[msg.sender]==false, 'You already voted');
        thisRequest.voters[msg.sender]=true;
        thisRequest.noOfVoters++;
    }

    function makePayment(uint _request_no) public {
        require(raisedAmount>=target);
        Request storage thisRequest=requests[_request_no];
        require(thisRequest.completed == false, 'The request has been completed');
        require(thisRequest.noOfVoters > (numOfContributors/2), 'Majority does not support');
        thisRequest.recipient.transfer(thisRequest.value);
        thisRequest.completed=true;
    }
}

































































