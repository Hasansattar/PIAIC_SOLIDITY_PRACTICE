pragma solidity ^0.8.0;

contract  enrollStudentClass{
    
    
    enum Gender{
        male,
        female
    }
    enum Register{
        online,
        onsite
    }
     
    
     struct StudentData{
         string studId;
         string name;
         uint8  age;
         Gender gender;
         Register register;
     }
     
     
     
     mapping (string=> mapping(uint => string))studentCourses;
    
         
         
          
    function getContractAddress()public view returns(address)
   { return address(this);}
     
    
    function addCourse(string memory rollNo, uint  counter, string memory course)public  
    {    studentCourses[rollNo][counter]=course; }
    
    function getCourse(string memory rollNo, uint counter)public view returns(string memory)
    {      return studentCourses[rollNo][counter]; }
    
    
    
    
    bool public degree=true;
    
    function AddDegree(string memory degree) public view returns(string memory){
         
        
        return degree;
        
    }
     
     uint public  student=0;
     function AddStudent(string memory _id,string memory _name,uint8 _age,Gender _gender,Register _register)public   returns(StudentData memory)
     
     {  
    
        student= student + 1;
         StudentData memory em1=StudentData(_id,_name,_age,_gender,_register);
         
         return em1;
         
     }
     
     
       function TotalStudent()public  view returns(uint)
       {
           return student;
       }
     

      
      
      uint public balance=0;
      
      function admissionPayment()public  payable returns(string memory){
          balance+=msg.value;
         if( balance==2000000000000000000 wei ){
              return  "student enroll";
          }
       
    }
    
   
     
    
    function checkBalanceAccount() public view returns(uint) 
    {    return address(this).balance; }
      
      
     
}

 