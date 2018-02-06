
<html lang="en">
    <link rel="stylesheet" type="text/css" href="studymaterial.css" title="style">
    <head>
        <!-- <script> 
        window.onload = disableBack();
        session.removeAttribute(username); 
        
       </script> -->

        <title>Placement Portal</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <style>

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 300px
            }

            .top-buffer { margin-top:30px; }


            .sidenav {
                padding-top: 50px;
                padding-bottom: 25px;
                background-color: #f1f1f1;
                height: 100%;
            }

            /* Css for user specific info*/
            .navbar-login
            {
                width: 305px;
                padding: 10px;
                padding-bottom: 0px;
            }

            .navbar-login-session
            {
                padding: 10px;
                padding-bottom: 0px;
                padding-top: 0px;
            }

            .icon-size
            {
                font-size: 87px;
            }


        </style>
    <div class=top>   
        <nav class="navbar-default" style="background-color: #900c3f;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Placement Portal</a>
                <ul class="nav navbar-nav  ">
                    <li ><a href="index.html"><span class="glyphicon glyphicon-asterisk"></span>  Home</a></li>
                    <li><a href="student.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Student</a></li>
                    <li ><a href="facility.html"><span class="glyphicon glyphicon-asterisk"></span>  Facilities</a></li>
                    <li class="active"><a href="studymaterial.jsp"><span class="glyphicon glyphicon-asterisk"></span>  Study Material</a></li>
                    <li><a href="brochure.pdf"><span class="glyphicon glyphicon-asterisk"></span>  Placement Brochure</a></li>
                </ul>    

                <%
                    if (session.getAttribute("username") == null || session.getAttribute("username").equals("")) {
                        ;
                    } else {%>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                            <span class="glyphicon glyphicon-user"></span> 
                            <strong>Welcome 
                                <%
                                    out.println(session.getAttribute("username"));%>
                                !:)</strong>
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <div class="navbar-login">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <p class="text-center">
                                                <span class="glyphicon glyphicon-user icon-size"></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="navbar-login navbar-login-session">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <p>
                                            <ul class="nav nav-pills nav-stacked">
                                                <li class="active">  <li><a href="profile1.jsp">View Profile</a></li>
                                                <li><a href="updating.jsp">Update Profile</a></li>
                                                <li><a href="#">Performance Record</a></li>
                                            </ul><br>    
                                            <a href="logout.jsp" class="btn btn-danger btn-block">Logout</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>


                        <%
                            }
                        %>

                        </div>
                        </nav>
                        <div class="header_all">
                            <div class="logo_img">
                                <img src="logo.png" alt="Department Of computer Science" width="140px" height="120px" />
                            </div>
                            <div class="title1">
                                <h1 style="font-size:20px">    </h1><br>
                                <h2 id="stylfnco1" style="font-size:50px">Study Material</h2>
                            </div>
                        </div> 
                        </div> 
                        </head>
                        <style>
                            body {
                                position: relative; 
                            }

                        </style>

                    <body data-spy="scroll" data-target=".navbar" data-offset="50">
                        <div class="scroll">
                            <nav class="navbar navbar-default navbar-fixed-top;background-color=#ffffff" style="background-color: #900c3f;">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>                        
                                        </button>
                                        <a class="navbar-brand" href="#">Think!Learn!Build</a>
                                    </div>
                                    <div>

                                        <div class="collapse navbar-collapse" id="myNavbar">



                                            <ul class="nav navbar-nav">
                                                <li><a href="#Algo">Algorithm</a></li>
                                                <li><a href="#DS">Data Structures</a></li>
                                                <li><a href="#Ll">Linked List</a></li>

                                                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">C <span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#basics">Basics</a></li>
                                                        <li><a href="#sc">Storage Classes</a></li>
                                                        <li><a href="#arr">Arrays</a></li>

                                                    </ul>
                                                </li>

                                                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">C++ <span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#inl">Inline Functions</a></li>
                                                        <li><a href="#tp">'this' pointer</a></li>
                                                        <li><a href="#fnco">Function Overloading</a></li>
                                                    </ul>
                                                </li>



                                        </div>
                                    </div>

                            </nav>
                        </div>

                        <div id="Algo" class="container-fluid">
                            <h1> ALGORITHMS </h1>
                            <h2>Analysis of Algorithms (Asymptotic Analysis)</h2>
                            <h3>Why performance analysis? </h3>
                            <p> There are many important things that should be taken care of, like user friendliness, modularity, security, maintainability, etc. </p> 
                            <h3> Why to worry about performance?  </h3> <p>
                                The answer to this is simple, we can have all the above things only if we have performance.
                                So performance is like currency through which we can buy all the above things. Another reason for studying performance is – speed is fun! </p>

                            <h3>
                                Given two algorithms for a task, how do we find out which one is better? </h3>
                            <p>
                                One naive way of doing this is – implement both the algorithms and run the two programs on your computer for different inputs and see which one takes less time. There are many problems with this approach for analysis of algorithms.
                            </p>1) It might be possible that for some inputs, first algorithm performs better than the second. And for some inputs second performs better.</p> <p>
                                2) It might also be possible that for some inputs, first algorithm perform better on one machine and the second works better on other machine for some other inputs.
                            </p> <p>
                                Asymptotic Analysis is the big idea that handles above issues in analyzing algorithms. In Asymptotic Analysis, we evaluate the performance of an algorithm in terms of input size (we don’t measure the actual running time). We calculate, how does the time (or space) taken by an algorithm increases with the input size.
                            </p>
                        </div>
                        <div id="DS" class="container-fluid">
                            <h1>DATA STRUCTURES</h1>
                            <p>
                                A data structure is a particular way of organizing data in a computer so that it can be used efficiently.
                                Data structures can implement one or more particular abstract data types (ADT), which specify the operations that
                                can be performed on a data structure and the computational complexity of those operations.
                                In comparison, a data structure is a concrete implementation of the specification provided by an ADT.
                            </p>
                            <p> Data structures provide a means to manage large amounts of data efficiently for uses such as large databases and internet indexing services.
                                Usually, efficient data structures are key to designing efficient algorithms. 
                                Some formal design methods and programming languages emphasize data structures, rather than algorithms, as the key organizing factor in software design.
                                Data structures can be used to organize the storage and retrieval of information stored in both main memory and in secondary memory.
                            </p>
                            <p> 
                                You can refer the following pdfs :
                            </p> <p>
                                <a href="material/ds1.pdf" download="ds1.pdf" style="color: black">DATA STRUCTURES PDF</a> </p> <p>
                                <a href="material/ds2.pdf" download="ds2.pdf" style="color: black">DATA STRUCTURE PROBLEMS PDF</a> </p> <p>
                                <a href="material/ds3.pdf" download="ds3.pdf" style="color: black">DATA STRUCTURE SOLUTIONS PDF</a> </p> 

                        </div>
                        <div id="Ll" class="container-fluid">
                            <h1>Linked List</h1>
                            <p>
                                Linked List is a linear data structure and it is very common data structure which consists of group of nodes in a sequence which is divided in two parts.
                                Each node consists of its own data and the address of the next node and forms a chain. Linked Lists are used to create trees and graphs.
                            </p>
                            <h3>
                                Advantages of Linked Lists </h3>
                            <p>
                                > They are a dynamic in nature which allocates the memory when required. </p> <p>
                                > Insertion and deletion operations can be easily implemented.</p> <p>
                                > Stacks and queues can be easily executed.</p> <p>
                                > Linked List reduces the access time.</p> <p>

                            <h3>Disadvantages of Linked Lists </h3>
                            <p>
                                > The memory is wasted as pointers require extra memory for storage. </p> <p>
                                > No element can be accessed randomly; it has to access each node sequentially.</p> <p>
                                > Reverse Traversing is difficult in linked list.</p> <p> REFERENCE:
                                <a href="material/Linked list.pdf" download="Linked list.pdf" style="color: black">LINKED LIST PDF</a> </p>
                        </div>


                        <div id="basics" class="container-fluid">
                            <h1>Basics in C</h1>
                            <h3> C Language Introduction : </h3>
                            <p>

                                C is a procedural programming language. It was initially developed by Dennis Ritchie between 1969 and 1973. It was mainly developed as 

                                a system programming language to write operating system. The main features of C language include low-level access to memory, simple 

                                set of keywords, and clean style, these features make C language suitable for system programming like operating system or compiler 

                                development.
                                Many later languages have borrowed syntax/features directly or indirectly from C language. Like syntax of Java, PHP, JavaScript and 

                                many other languages is mainly based on C language. C++ is nearly a superset of C language (There are few programs that may compile in 

                                C, but not in C++). </p>



                            <h3> C Programming Language Standard </h3>

                            <h5>What is C standard? </h5> 
                            <p>
                                The latest C standard is ISO/IEC 9899:2011, also known as C11 as the final draft was published in 2011. Before C11, there was C99. The 

                                C11 final draft is available here. See this for complete history of C standards.

                                C standard leaves some behavior of many C constructs as undefined and some as unspecified to simplify the specification and allow some 

                                flexibility in implementation. For example, in C the use of any automatic variable before it has been initialized yields undefined 

                                behavior and order of evaluations of subexpressions is unspecified. This specifically frees the compiler to do whatever is easiest or 

                                most efficient, should such a program be submitted. </p>
                            <p> REFERENCE : 
                                <a href="material/letusC.pdf" download="letusC.pdf" style="color: black">Let us C by YASHWANT KANETKAR</a> </p>
                        </div>

                        <div id="sc" class="container-fluid">
                            <h1>Storage Classes in C</h1>
                            <p>Storage Classes are used to describe about the features of a variable/function. These features basically include the scope, visibility 
                                and life-time which help us to trace the existence of a particular variable during the runtime of a program.
                                C language uses 4 storage classes, namely:</p>
                            <p>
                            <h4>  auto: </h4> This is the default storage class for all the variables declared inside a function or a block. Hence, the keyword auto is rarely 

                            used while writing programs in C language. Auto variables can be only accessed within the block/function they have been declared and 

                            not outside them (which defines their scope). </p>
                            <p>
                            <h4> extern: </h4> Extern storage class simply tells us that the variable is defined elsewhere and not within the same block where it is used. 

                            Basically, the value is assigned to it in a different block and this can be overwritten/changed in a different block as well. So an 

                            extern variable is nothing but a global variable initialized with a legal value where it is declared in order to be used elsewhere. It 

                            can be accessed within any function/block.  </p>

                            <h4> static:  </h4><p>This storage class is used to declare static variables which are popularly used while writing programs in C language. Static 

                                variables have a property of preserving their value even after they are out of their scope! Hence, static variables preserve the value 

                                of their last use in their scope. </p> <p>

                            <h4>register: </h4> This storage class declares register variables which have the same functionality as that of the auto variables. The only 

                            difference is that the compiler tries to store these variables in the register of the microprocessor if a free register is available. 


                            To specify the storage class for a variable, the following syntax is to be followed:
                            Syntax:

                            storage_class var_data_type var_name; </p>

                            </p></div>



                        <div id="arr" class="container-fluid">
                            <h1>Arrays in C</h1>
                            <p>
                                1) In C, it is possible to have array of all types except void and functions. See this for details. </p> <p>
                                2) In C, array and pointer are different. They seem similar because array name gives address of first element and array elements are 

                                accessed using pointer arithmetic. </p> <p>
                                3) Arrays are always passed as pointer to functions. </p> <p>
                                4) A character array initialized with double quoted string has last element as ‘\0′. </p> <p>
                                5) Like other variables, arrays can be allocated memory in any of the three segments, data, heap, and stack. 
                            </p>
                            <p> You can also refer to this ppt : </p> <p> Arrays.pptx <a href="material/arrays.pptx" download="arrays.pptx" style="color: black">Download</a> </p>

                        </div>
                        <div id="inl" class="container-fluid">
                            <h1>Inline functions in C++</h1>
                            <p>
                                Inline function is one of the important feature of C++. So, let’s 

                                first understand why inline functions are used and what is the 

                                purpose of inline function? </p> <p>
                                When the program executes the function call instruction the CPU 

                                stores the memory address of the instruction following the function 

                                call, copies the arguments of the function on the stack and finally 

                                transfers control to the specified function.</p>
                            <p> The CPU then executes the function code, stores the function return value in a predefined 
                                memory location/register and returns control to the calling 
                                function. This can become overhead if the execution time of 
                                function is less than the switching time from the caller function 
                                to called function (callee).</p> <p> For functions that are large and/or 
                                perform complex tasks, the overhead of the function call is usually 
                                insignificant compared to the amount of time the function takes to 
                                run. However, for small, commonly-used functions, the time needed 
                                to make the function call is often a lot more than the time needed 
                                to actually execute the function’s code. This overhead occurs for 
                                small functions because execution time of small function is less 
                                than the switching time. </p> <p>
                                C++ provides an inline functions to reduce the function call 

                                overhead. Inline function is a function that is expanded in line 

                                when it is called. When the inline function is called whole code of 

                                the inline function gets inserted or substituted at the point of 

                                inline function call. This substitution is performed by the C++ 

                                compiler at compile time. Inline function may increase efficiency 

                                if it is small. </p> <p>
                                The syntax for defining the function inline is: </p>
                            <p>inline return-type function-name(parameters) </p> <p>
                                { </p>
                            <p>
                                } 
                            </p>

                        </div>
                        <div id="tp" class="container-fluid">
                            <h1>Pointers in C++</h1>
                            <p> A pointer is a variable whose value is the address of another variable, i.e., direct address of the memory location.
                                Like any variable or constant, you must declare a pointer before using it to store any variable address. 
                                The general form of a pointer variable declaration is − </p>
                            <p>
                                type *var-name; </p> <p>
                                Here, type is the pointer's base type; it must be a valid C data type and var-name is the name of the pointer variable. 
                                The asterisk * used to declare a pointer is the same asterisk used for multiplication.
                                However, in this statement the asterisk is being used to designate a variable as a pointer. 
                            </p>
                            <h3> 'this' pointer </h3><p>
                                The ‘this’ pointer is passed as a hidden argument to all nonstatic 

                                member function calls and is available as a local variable within 

                                the body of all nonstatic functions. </p> <p>‘this’ pointer is a constant 

                                pointer that holds the memory address of the current object. ‘this’ 

                                pointer is not available in static member functions as static 

                                member functions can be called without any object (with class 

                                name).    </p>
                            <p> TO PLAY WITH POINTERS : DOWNLOAD THE PDFs </p> <p>
                                <a href="material/Playing with Pointers.pdf" download="Playing with Pointers.pdf" style="color: black">Playing With Pointers.pdf</a> </p>
                            <p>   <a href="material/P1.pdf" download="P1.pdf" style="color: black">Pointers and memory</a> </p>
                            <p>   <a href="material/P3.pdf" download="P3.pdf" style="color: black">const pointers</a> </p>
                        </div>
                        <div id="fnco" class="container-fluid">
                            <h1>Function Overloading in C++</h1>
                            <p>Function overloading is a feature in C++ where two or more 
                                functions can have the same name but different parameters.
                                Function overloading can be considered as an example of 
                                polymorphism feature in C++. Example :</p> 
                            <p>#include <iostream> </p>
                                <p>void print(int i) { </p>
                                <p>} </p>
                                <p>void print(char* c) {</p>
                                <p>}
                                </p>
                                <p>int main() { </p>
                                <p>print(10); </p>

                                <p>print("ten");</p>
                                <p>return 0;</p>
                                <p>} </p> </div>

                    </body>
                    </html>
