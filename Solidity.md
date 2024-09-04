# Basic Solidity Documentation 

## Table of content 

-  Remix IDE
-  Bytecode and ABI
-  Mainnet vs Testnet
-  Metamask
-  Rinkeby Faucet
-  Contract Deployment Environment 
-  What is Solidity
-  Solidity Simple Program
-  State Variables
-  Local Variables
-  Functions
-  View vs Pure
- Constructor
- Integers
- Overflow
- Fixed Array
- Dynamic Array
- Byte Array
- Dynamic Byte Array
- Loops
- If-else
- Booleans
- Struct
- Enum
- Mapping
- Storage vs Memory
- Global Variable
- Payable function
- Public, Private, Internal and External


## Remix IDE

- IDE - Integrated Development Environment
- Different from other IDE 
- Runs online and open source
- Make a Different Workspace
- When you run the program, it automatically created a UI or buttons to run those programs
- Language support - Solidity and Viper
- Written In - Javascript
- Modules - Testing, Debugging and Deploy


    ### Compilation Process
    ---

                        Contract Source File (.sol)
                                    |
                                    |
                                    v
                            Solidity Compiler
                               /        \
                              /          \
                             v            v
                            ABI         Bytecode
                                            |
                                            |
                                            v
                                        Ethereum Blockchain (EVM)

    - <u>ABI</u> 
        
        - Abstract Binary Interface.
        
        - Give accessibiity to other contracts or applications to access particular methods or data.
        <br/>
        Ex - Assume <i>A</i> is a contract and its has its ABI. 
            To Access <i>Contract A</i> methods we require ABI.

        - It holds the details about contract like what's the method name, its return type, visibility of that methods( public or private ), etc... 

            #### How ABI look likes ?
            ---

            ```
            [
                {
                    "inputs": [],
                    "name": "f1",
                    "outputs": [
                        {
                            "internalType": "uint256",
                            "name": "",
                            "type": "uint256"
                        }
                    ],
                    "stateMutability": "pure",
                    "type": "function"
                },
                {
                    "inputs": [],
                    "name": "f4",
                    "outputs": [
                        {
                            "internalType": "uint256",
                            "name": "",
                            "type": "uint256"
                        }
                    ],
                    "stateMutability": "pure",
                    "type": "function"
                }
            ]
            ```
    - <u>Bytecode</u> 
        
        - It is an intermediate code between High level code and machine code.

        - Represents in hexadecimal form.

        - Bytecode breakdown further to machine code which runs machine.

        - From bytecode - opcode(operation code) is also made which specifies what are the operation particular machine have to perform.

            > Note:- Not whole smart contract deployed on Ethereum Blockchain but only its <i>bytecode</i>. 

            #### How Bytecode look likes ?
            ---

            ```
            6080604052348015600e575f80fd5b5060db80601a5f395ff3fe6080604052348015600e575f80fd5b50600436106030575f3560e01c8063c27fc305146034578063c3f9020214604e575b5f80fd5b603a6068565b60405160459190608e565b60405180910390f35b60546070565b604051605f9190608e565b60405180910390f35b5f6001905090565b5f6004905090565b5f819050919050565b6088816078565b82525050565b5f602082019050609f5f8301846081565b9291505056fea26469706673582212204b93f669883bf84131ba0b6e3e03c29d4a6d642e9c6437347bb776ce45458d5b64736f6c634300081a0033
            ```

    
    <br/>
    <br/>

    Compile and ABI + Bytecode will be visible at bottom    
    <img src="https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215146/d1bvbotei7on3qcwp7ui/LiMxGJdwKopd8Wll/screenshot-remix_ethereum_org-2024_09_04-11_43_35.png" alt="abi_and_bytecode" width="250px" height="700px" style="object-fit:contain;">


## Mainnet and Testnet

|  Mainnet                             | Testnet |
| :----------------                   | :------: | 
| Used for actual transactions       | Used for testing smart        contracts and decentralised application    | 
| Network ID is 1             | Network ID is 3, 4 and 42   | 
| Ex - Ethereum Mainnet - https://etherscan.io/ |  Ex - Sepolia Testnet - https://sepolia.etherscan.io/  |

  
    
## Metamask

A wallet and provide gateway for the application

- Store Ether
- Send Ether
- Receive Ether
- Run Dapps
- Swap Tokens


## Contract Deployement on Remix IDE

It uses JVM - Javascript Virtual Machine 

## Injected Web3

Deploy a contract or run a transaction on Ethereum main or test net.

## Web3 Provider

Connect to a remote node and Ethereum Client.

## Solidity

- A High level, statically typed programming languaage.
    > High level - close to human <br/>
    > Statically typed - need to define the type

- Used for creating smart contract.

- Case sensitive

    ### Sample Smart Contract Program

    In general term - 

    ```
        // specify the license - They set restrictions on how users can use software, which helps prevent misuse and legal issues
        // specity the compiler version

        // write a conract
    ```

    In code -
    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >= 0.5.0 <0.9.0;

    contract Sample{
        // write contract code 
    }
    ```

    ### State Variables

    - store on Storage

    - Variables which are defined at contract level ( particularly on contract scope )

        ![alt text](https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215517/5ix8w500e232h7qeabi3/LJUONBPpdHqLYqtN/screenshot-remix_ethereum_org-2024_09_04-13_07_49.png)
        
    - When contract is deployed, state variables are stored permanently on blockchain that's why it requires gas.

    - Null and None concepts are avail.

    - Every data type have there default value.

    - If <i>public</i> keyword added over state variable then its getter function will be automatically created.

        ![public state variable](https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215555/4cmq1r705cn8f1eug7ih/s7mEGfMgUPeByA1d/screenshot-remix_ethereum_org-2024_09_04-13_12_15.png)

        ![getter function](https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215559/xt208i71esa4c74mwbnk/8D8NNppaf4PAZDN7/screenshot-remix_ethereum_org-2024_09_04-13_13_46.png)        
        
    - Its value can be initialize while creating the variable or constructor or setter function

        ![assigning the values](https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215571/dxemwt7xrh6hvcnmvm4d/mrOfqAfLAKggpEFp/screenshot-remix_ethereum_org-2024_09_04-13_18_22.png)      

    ### Local Variables

    - These variables are defined inside function body.

        ![local variable](https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215603/sspykxdeddnmevmfvfwg/g7RdFilBiIeFpZxW/screenshot-remix_ethereum_org-2024_09_04-13_31_34.png)
        <i>public </i> is a keyword which specifies the visibility or accessibility of a function<br/>

        <i>pure </i> is a keyword which is used on function when we are not changing and accessing the state variables<br/>

        <i>returns </i> is a keyword which specify the return type of a function

    - Store on Stack

    - No gas cost because they are not stored permanently on blockchain

    - If i declare a string variable inside function then it is not possible becuase string data type take place in Storage but inside function variable are stored in Stack so its not possible directly that's why we have to use memory keyword to specify that that variable will store on memory.

        ![string case](https://akash-unicodesystems-info.nimbusweb.me/box/attachment/11215959/oy2rbkpgtgdt6ikf49h8/JX2p0PfZGh7vxodI/screenshot-remix_ethereum_org-2024_09_04-14_46_43.png) 

    - memory keyword cannot be used on contract level

    ### Functions
    
    ```
    function <function_name>(datatype arg_name,...) visibility access return_type { 
        definition 
    } 
    ```

    ### View and Pure

    - with view keyword we can only access the state variables.
    
    - with pure keyword we cannot access neither modify the state variables.

    - if we don't specify anything, we can access or even modify the state variables.

    ### Constructor

    - Executes automatically when its instance is created.

    - Can be used to initialize or defined the owner of contract.

    - Executes only one time.

    - Creating a constructor is optional.

    - If constructor is not defined then compiler automatically define the default constructor.

    - Contructor with argument ask the values before deployement.

    - Contructor without argument.

    ### Integers

    - whole numbers

    - Two types :- 
        
        - int - negative and positive numbers.
        - uint - only positive numbers.

        - It is of various sizes - 
            
            - int sizes - int8 to int 256 (8 bit gaps)

            - uinint sizes - uint8 to uint 256 (8 bit gaps)

            - int is an alias of int256

            - uint is an alias of uint256

            - default value of int and uint is 0
        
    ### Fixed Array

    ```
        // uint[size] var_name;
        uint[3] variants = [12,34,5];

        function setter(uint index, uint value) public {
        variants[index]=value;
        }

        function length() public view returns(uint){
            return variants.length;
        }

    ```
    <i>When deployed, it asks for the index to pass - if index out of range it will not return data</i>

    ### Dynamic Array
    
    ```
        // dynamic size
        uint[] public arr; 

        function pushElemrn(uint item) public{
            arr.push(item);
            // arr.pop(item);
        }

    ```
    <i>Dynamically defined the size of the array</i>

    ### Byte Array

    - 1 byte = 8 bits
        
    - 1 hexadecimal digit = 4 bits
        
    - range - 1 to 32
        
    - Everything that will be stored in the byte array will be in the     form of hexadecimal
    
    - No squre brackets 

    - By default value is zero

    - 1 byte has 2 hexadecimals

    - 0 = 0x0000 (for 2 bytes array)
        ```
            // SPDX-License-Identifier: MIT
            pragma solidity >= 0.5.0;

            contract ByteArray{
                bytes4 public b1; // 2 bytes array

                function setter() public {
                    b1 = "abcd";
                }
            }
        ```
        <i>indexing - 0 -> a(hexa form), 1 -> b(hexa form), 2 -> c(hexa form), 3 -> d(hexa form)</i>

    -  initialize value does not occupy the required bytes then else will be padded with zeros

    - Bytes array is immutable array

    ### Dynamic Byte Array

    - Do not specity the byte size then it will be dynamic

        ```
        // SPDX-License-Identifier: MIT
        pragma solidity >= 0.5.0;

        contract DynamicBytesArray{

            bytes public b1="abc";

        }
        ```

    - push - <bytes_var>.push('a')

    - get func - <bytes_var>[index] ( returns - jitne byte ko return karoge woh likhoge )

    - length - <bytes_var>.length

    ### Loops

    Direct loop does not work, we need to create it inside of function to use it.

    - For
    - While
    - Do while

    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >=0.5.0;

    contract Loops{

        uint[3] public arr;
        uint public count;

        // cannot run like this but it can be created only inside a function
        // while(count<arr.length){
        //     arr[count] = count;
        //     count = count + 1;
        // }

        // for loop
        function loop() public{
        
            // while(count<arr.length){
            //     arr[count] = count;
            //     count = count + 1;
            // }

            // for(uint i=0; i<arr.length; i++){
            //     arr[i] = i;
            // }

            // do{
            //     arr[count] = count;
            //     count = count + 1;
            // }while(count<arr.length);

            }

    }

    ```

    ### If-Else

    - Cannot write if or else statements directly, require a function

    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >=0.5.0;

    contract IfElse{

        function check(int a) public pure returns(string memory){
            if(a==0){
                return 'zero';
            } else if (a==1){
                return 'one';
            } else {
                return 'other';
            }
        }

    }

    ```

    ### Booleans

    - default value is false

    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >= 0.5.0;

    contract Booleans{

        bool public value=true;

    }
    ```    

    ### Struct


    - user defined data type like uint, string, etc.


            struct school{           ________________
                uint roll;  ------> |                |
                string name;------> | roll [       ] |
                                    | name [       ] |
                                    |                |
            }                       |________________|


        ```
        // SPDX-License-Identifier: MIT
        pragma solidity >= 0.5.0;

        // store in Storage
        struct Student{
            uint roll;
            string name;
        }

        contract structure{
            Student public stu;

            constructor(uint roll, string memory name){
                stu.roll = roll;
                stu.name = name;
            }

            function editDetails(uint _roll, string memory _name) public {
                // KR.roll = _roll;
                // KR.name = _name;

                Student memory newStudent = Student({
                    roll: _roll,
                    name: _name
                });

                stu=newStudent;
            }
        }

        ```        

    
    ### Enumerations

    - assigning a name to a particular interger or constants
    
        ```
        // SPDX-License-Identifier: MIT
        pragma solidity >= 0.5.0;

        contract Enumerations{
            
            //         0           1         2 
            enum user{allowed, not_allowed,wait}

            // u1 value is 1
            user public u1 = user.not_allowed;


        }
        ```

    - set must be small because it will be confusing if we make 100 value set

    - use case :- 

        - Readability of code increased
        - Denotion of a constant by naming them - like we do in programming but here it only denotes to interger by serial

    
    ### Mapping


    - concept of keys and values

    - mapping(key => value)

            _roll       _name

            0     ->    Ravi_sir

            1     ->    Raghu_sir

            2     ->    Alok_sir

    - The keys cannot be types of mapping, dynamic array, enum and struct

    - The value of any type

    - Mapping are always stored in storage irrespective of whether they are declared in contract storage or not 

        ```
        // SPDX-License-Identifier: MIT
        pragma solidity >= 0.5.0;

        struct Student{
            string name;
            uint class;
        }

        contract Map{

            // mapping (uint=>string) public roll_no;

            mapping (uint=>Student) public roll_no;

            // function setter(uint keys, string memory value) public {
            //     roll_no[keys] = value;
            // }

            function setter(uint _roll, string memory _name, uint _class) public {
                roll_no[_roll] = Student(_name, _class);
            }
        }
        ```

    ### Storage and Memory

        Storage
        -------

        1. Holds state variable
        2. Persistent
        3. Cost gas
        4. Like a computer HDD


        Memory
        ------

        1. Holds local variables defined inside functions
        2. Not persistent
        3. No gas
        4. Like a computer RAM

    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >= 0.5.0;

    contract StorageAndMemory{

        string[] public names = ['Mohan', 'Sohan', 'Rohan'];

        function mem() public view{
            string[] memory s1 = names; // a seperated copy is made
            s1[0]='Akash'; // doesn't effect the names
        }

        function stor() public{
            string[] storage s1 = names; // no copy will made but s1 start pointing to the same location as of names 
            s1[0]='Akash'; // change to names
        }
    }
    ```

    ### Global Variables

    - There are some global variables available - block, msg, etc

        ```
        // SPDX-License-Identifier: MIT
        pragma solidity >= 0.5.0;

        contract Global{

            function getter() public view returns (uint  block_no, uint timestamp, address msgSender){
                return (block.number, block.timestamp, msg.sender);
            }

        }
        ```

    ### Payable Function

    ```
    Contract Balance  
    -----------------

    Jis account se deploy hua hoga waha se katenge paise ya ayenge

    payable - contract mai ether transfer krna h toh use krte h isko
                uske samne likhte jisko transfer krna h

    address - contract address dega
    ```

    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >= 0.5.0;

    contract Contractbalance{

        // address payable user = '0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2'; direct address not work, it works before but now we have to convert it

        address payable user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    
        function transferToContractEther() public payable { // transfer ether to this contract from deployed account

        }

        function getBalance() public view returns (uint) {
            return address(this).balance;
        }

        // contract se ether send krna account address pe
        function sendEtherAccount() public {
            user.transfer(1 ether);
        }
    }
    ```

    ### Public, Private, Internal and External

    ```
    Public | Private | Internal | External 
    --------------------------------------
    Outside      X        X        Outside    // outside contract
    Within    Within    Within        X 
    Derived      X      Derived       X    
    Other        X        X         Other     
    ```
    <i>Derived - contract derived from other cotract</i><br/>
    <i>Other - other contracts</i>

    <br/>
    <br/>

    ```
    // SPDX-License-Identifier: MIT
    pragma solidity >= 0.5.0;

    contract A{
        function f1() public pure returns (uint){
            return 1;
        }

        function f2() private pure returns (uint){
            return 2;
        }

        function f3() internal pure returns (uint){
            return 3;
        }

        function f4() external pure returns (uint){
            return 4;
        }
    }

    // derive contracts
    contract B is A{

        //  function f4() external pure returns (uint){
        //     return 4;
        // }
        // uint public x = f4(); - No f4 cannot be called
    }

    // other contracts
    contract C{
        A obj = new A();
        uint public res = obj.f1(); 
    }
    ```

    ## Modifiers

    - Modifiers are code that run before and after the function call
    - Generally use for three reasons - 
        
        - Restrict access
        - Validate inputs
        - Guard against reentrancy hack

        ``` 
        // SPDX-License-Identifier: MIT
        pragma solidity >=0.5.0;

        contract Modifier{

            address public owner;

            constructor(){
                owner=msg.sender;
            }

            modifier validateOwner(){
                require(msg.sender == owner, 'Not owner');
                _;
            }

            function changeOwner(address _newOwner) public validateOwner{
                require(_newOwner != address(0), 'Invalid address');
                owner = _newOwner;
            }
        }
        ```
    
    