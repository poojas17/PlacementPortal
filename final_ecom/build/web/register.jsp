<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sign UP!</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


        <link rel="stylesheet" href="register_c.css">
        <script language="javascript">

            function Submit() {

                var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
                var fname = document.form.first_name.value,
                        femail = document.form.usermail.value,
                        funame = document.form.username.value,
                        fpassword = document.form.pass.value,
                        fcpassword = document.form.c_pass.value,
                        fmonth = document.form.DateOfBirth_Month.value,
                        fday = document.form.DateOfBirth_Day.value,
                        fyear = document.form.DateOfBirth_Year.value;
                /*   if (fname === "")
                 {
                 document.form.first_name.focus();
                 alert("Enter First Name");
                 return false;
                 }
                 // alert("femail");
                 if (femail === "")
                 {
                 document.form.usermail.focus();
                 alert("Enter Email");
                 return false;
                 } else if (!emailRegex.test(femail)) {
                 document.form.email.focus();
                 alert("Enter valid email");
                 return false;
                 }
                 if (funame === "")
                 {
                 document.form.username.focus();
                 alert("Enter Username");
                 return false;
                 }
                 */
                if (fpassword === "")
                {
                    document.form.pass.focus();
                    alert(" Enter Password");
                    return false;
                }
                else if (fcpassword === "")
                {
                    document.form.c_pass.focus();
                    alert("Confirm password");
                    return false;
                }
                else if (fpasssword !== fcpassword) {
                    document.form.pass.focus();
                    window.location = "signup.jsp";
                    alert("Passwords do not match,Re-enter again");
                    return false;
                }
                else
                    alert("hi");
                if (fmonth === "") {
                    document.form.DateOfBirth_Month.focus();
                    alert("select the birthday month");
                    return false;
                }
                if (fday === "") {
                    document.form.DateOfBirth_Day.focus();
                    alert("select the birthday day");
                    return false;
                }
                if (fyear === "") {
                    document.form.DateOfBirth_Year.focus();
                    alert("select the birthday year");
                    return false;
                }
                if (document.form.gender[0].checked === false && document.form.radiobutton[1].gender === false) {
                    alert("Select your Gender!");
                    return false;
                }
                if (fname !== '' && femail !== '' && funame !== '' && fpassword !== '' && fmonth !== '' && fday !== '' && fyear !== '') {
                    alert("Form submitted successfully");
                }

            }

        </script>
    </head>
    <body> 
        <div class="full_page">    
            <div class="jumbotron">
                <div class="header_all">
                    <div class="logo_img">
                        <img src="logo.png" alt="Department Of computer Science" width="140px" height="120px" />
                    </div>
                    <div class="title1">
                        <h1 id="styleh1">SIGN UP</h1>
                        <h2 id="styleh2">To enroll yourself with this portal!</h2>
                    </div>
                </div>
            </div> 
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="register_form">
                    <form name="form" action="uploadServlet"  method="post" onSubmit="Submit()" enctype="multipart/form-data" >

                        <div class="register_form1">
                            <li>
                                <div class="row"></div> 
                                <label class="col-md-4 control-label">First Name</label>
                                <div class="col-md-8">
                                    <input type="text" name="first_name" placeholder="  First Name" required>
                                </div>
                            </li>
                            <br><br>
                            <li>
                                <label class="col-md-4 control-label" >Last Name</label>
                                <div class="col-md-8">

                                    <input type="text" name="last_name" placeholder="  Last Name" >
                                </div>
                            </li>
                            <br><br>
                            <li>

                                <label class="col-md-4 control-label"> Course </label>
                                <div class="col-md-8">
                                    <select name="course">
                                        <option>  course </option>
                                        <option value="MCA">MCA</option>
                                        <option value="MSc">Msc</option>
                                        <option value="B.sc(Computer Science)">B.sc(Computer Science)</option>
                                    </select>

                                </div>
                            </li>
                            <br><br> 
                            <li>
                                <label class="col-md-4 control-label"> Batch </label>
                                <div class="col-md-8">

                                    <select name="Batch">
                                        <option>  Year </option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                    </select>
                                </div>
                            </li>
                            <br><br>
                            <li>
                                <label class="col-md-4 control-label" >E-mail Address</label>
                                <div class="col-md-8">

                                    <input type="text" name="usermail" placeholder=" yourname@email.com" required>
                                </div>
                            </li>
                            <br><br>
                            <li>

                                <label class="col-md-4 control-label">Username</label>
                                <div class="col-md-8">

                                    <input type="text" name="username" placeholder=" username" required><br><br>
                                </div>
                            </li>
                            <br><br>
                            <li>

                                <label class="col-md-4 control-label">Password</label>
                                <div class="col-md-8">

                                    <input type="password" name="pass" placeholder="  password" required><br><br>
                                </div>
                            </li>
                            <br><br>
                            <li>

                                <label class="col-md-4 control-label">Confirm Password</label>
                                <div class="col-md-8">

                                    <input type="password" name="c_pass" placeholder="  password" ><br><br>
                                </div>
                            </li>
                            <br><br>
                            <li>
                                <label class="col-md-4 control-label">Gender</label>

                                <div class="col-md-8">

                                    <div class="radio">

                                        <label>
                                            <input type="radio" name="gender" value="m"> Male
                                        </label>
                                    </div>

                                    <div class="radio">

                                        <label>
                                            <input type="radio" name="gender" value="f"> Female
                                        </label>
                                    </div>

                                    <div class="radio">

                                        <label>
                                            <input type="radio" name="gender" value="o"> Other
                                        </label>                                           						</div>

                                </div>
                            </li>
                            <br><br>

                            <li>
                                <label class="col-md-4 control-label">Date Of Birth</label>
                                <div class="col-md-8">

                                    <select name="DateOfBirth_Month">
                                        <option>  -Month-  </option>
                                        <option value="January">January</option>
                                        <option value="Febuary">Febuary</option>
                                        <option value="March">March</option>
                                        <option value="April">April</option>
                                        <option value="May">May</option>
                                        <option value="June">June</option>
                                        <option value="July">July</option>
                                        <option value="August">August</option>
                                        <option value="September">September</option>
                                        <option value="October">October</option>
                                        <option value="November">November</option>
                                        <option value="December">December</option>
                                    </select>
                                    <select name="DateOfBirth_Day">
                                        <option>  -Day-  </option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>			
                                        <option value="6">6</option>	
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>		
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>	
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                    <select name="DateOfBirth_Year">
                                        <option> -Year- </option>   
                                        <option value="1996">1996</option>
                                        <option value="1995">1995</option>
                                        <option value="1994">1994</option>
                                        <option value="1993">1993</option>
                                        <option value="1992">1992</option>
                                        <option value="1991">1991</option>
                                        <option value="1990">1990</option>
                                        <option value="1989">1989</option>
                                        <option value="1988">1988</option>
                                        <option value="1987">1987</option>
                                        <option value="1986">1986</option>
                                        <option value="1985">1985</option>

                                    </select>
                                    <br><br>
                                </div>  
                                <br><br>                                
                            </li>
                            <br><br>
                            <li>
                                <label class="col-md-4 control-label" >Upload your CV</label>
                                <div class="col-sm-8">
                                    <input type="file" name="fileName" size="20" value="Upload File"><br><br>
                                </div>
                            </li>
                            <br><br>
                            <li>
                                <label class="col-md-4 control-label" >Upload your Image </label>
                                <div class="col-sm-8">
                                    <td><input type="file" name="image" accept="image/*"></td>
                                </div>
                            </li>			    
                            <br><br>
                            <li>
                                <div class="col-md-12 ">
                                    <button type="submit" value="Register" style=" margin-top:30px;margin-left:35%;margin-right:auto">SIGN UP</button><br><br>
                                </div>
                            </li>
                            <br>
                        </div>
                    </form>
                    <br><br>
                </div>
            </div>
        </div>
    </body>
</html>