pragma solidity ^0.8.0;


contract Certification{
    
    
    function getContractAddress()public view returns(address)
   { return address(this);}
   
    function getContractBalance()public view returns(uint)
   { return address(this).balance;}
   
   
   
    
   uint public balance = 0;
   
   function receivepayment() public payable   {
     balance += msg.value;
     
      
     
   }
   

   
   function destroyContract()public{
       
       if(balance==	10000000000000000000 wei )
       { address payable addr = payable(address(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB ));
       
      
       selfdestruct(addr);}
   
       
       
   }
   

    
}