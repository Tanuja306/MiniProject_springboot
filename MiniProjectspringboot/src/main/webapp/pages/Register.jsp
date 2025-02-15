<body>
    <h1>Registration Form</h1>
    
    <form method="POST" action="saveData">
        <div class="col">
            <div class="minput">
                <input type="text" name="fname" dir="auto" required>
                <span class="bar"></span>
                <label>First Name</label>
            </div>
            <div class="minput">
                <input type="text" name="lname" dir="auto" required>
                <span class="bar"></span>
                <label>Last Name</label>
            </div>
            <div class="minput">
                <input type="number" name="age" dir="auto" required>
                <span class="bar"></span>
                <label>Age</label>
            </div>
            <div class="control-group">
                <span class="sex">Gender :</span>
                <label class="control control--radio">Male
                    <input type="radio" name="gender" value="male" />
                    <div class="control__indicator"></div>
                </label>
                <label class="control control--radio">Female
                    <input type="radio" name="gender" value="female" />
                    <div class="control__indicator"></div>
                </label>
            </div>
            <div class="minput">
                <div class="select">
                    <select id="pays" name="state">
                        <option value="">-- Country --</option>
                        <option value="india">India</option>
                        <option value="USA">USA</option>
                        <option value="Uk">UK</option>
                    </select>
                    <div class="select__arrow"></div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="minput">
                <input type="text" id="pseudo" dir="auto" name="username" required>

                <span class="bar"></span>
                <label>Username</label>
            </div>

            <div class="minput">
                <input type="text" id="email" dir="ltr" class="" name="email" required>
                <span class="bar"></span>
                <label>Email</label>
            </div>

            <div class="minput">
                <input type="" id="password" dir="auto" name="pass" required>
                <span class="bar"></span>
                <label>Passwrod</label>
            </div>

            <div class="minput">
                <input type="password" id="passwordConf" name="cpass" required>
                <span class="bar"></span>
                <label>Retype Password</label>
            </div>
            <div class="control-group">

                <label class="control control--checkbox">Join Our Newsletter & Marketing Communication.
                    <input type="checkbox" checked/>
                    <div class="control__indicator"></div>
                </label>
            </div>

            <div class="minput">
              
                
                <input type="submit" id="send" value="Submit"  style="padding:5px;padding-top:7px;">
            </div>
        </div>
    </form>
</body>

<style>
@import url('https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz');

* {
    box-sizing: border-box;
    margin: 0;
}

html,
body {
    margin: 0 auto;
    min-height: 100%;
    font-family: 'Yanone Kaffeesatz', Consolas;
}

h1 {
    text-align: center;
    margin: 40px auto;
    padding: 10px;
    width: 260px;
    border: 3px dashed #3FC380;
    color: #34495E;
    letter-spacing: 1px;
    word-spacing: 3px;
    font-size: 26px;
    font-weight: 400;
}

.details {
    margin: 0 auto;
    font-size: 18px;
    font-weight: 300;
    width: 200px;
    padding: 2px 5px;
    letter-spacing: 1px;
    position: relative;
    right: 30px;
    bottom: 30px;
    color: #6C7A89;
}

form {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.col {
    width: 400px;
    min-width: 300px;
}

form .minput {
    position: relative;
    margin: 26px 10px;
    width: 90%;
    max-width: 400px;
}

.minput input {
    font-size: 20px;
    padding: 1px 4px;
    display: block;
    width: 100%;
    border: none;
    font-family: 'Yanone Kaffeesatz', sans-serif;
    letter-spacing: 1px;
    color: #3E4651;
    -webkit-border-radius: 2px 0 0 2px;
    -moz-border-radius: 2px 0 0 2px;
    border-radius: 2px 0 0 2px;
    border-bottom: 1px solid #dadada;
}

.minput input[type="number"] {
    width: 60px;
    padding-right: 0;
}

input[type="number"] ~ .bar {
    width: 60px;
}

input[type="number"] ~ label {
    margin: 0;
}

.minput input:focus {
    outline: none;
}

.minput label {
    color: #afafaf;
    font-size: 20px;
    font-weight: normal;
    position: absolute;
    pointer-events: none;
    left: 5px;
    top: -2px;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

textarea:focus ~ label,
textarea:valid ~ label,
input:focus ~ label,
input:valid ~ label,
.up ~ label {
    top: -19px;
    font-size: 18px;
}

.bar {
    position: relative;
    display: block;
    width: 100%;
}

.bar:before,
.bar:after {
    content: '';
    height: 2px;
    width: 0;
    bottom: 0;
    background-color: #afafaf;
    position: absolute;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

.bar:before {
    left: 50%;
}

.bar:after {
    right: 50%;
}

input:focus ~ .bar:before,
input:focus ~ .bar:after {
    width: 50%;
}

input[type=submit] {
    cursor: pointer;
    background-color: #1ABC9C;
    color: white;
    border-radius: 3px;
    border: none;
    max-width: 125px;
}

input:disabled {
    background: #3B7E87;
    cursor: not-allowed;
}


/* Button radio/checkbox/select */

.control {
    display: block;
    position: relative;
    padding-left: 30px;
    margin-bottom: 10px;
    cursor: pointer;
    font-size: 20px;
    color: #afafaf;
    margin: 6px 10px;
}

.sex {
    margin: 26px 10px;
    font-size: 20px;
    color: #afafaf;
    top: -7px;
}

.control input {
    position: absolute;
    z-index: -1;
    opacity: 0;
}

label.control--radio {
    width: 80px;
}

.control__indicator {
    position: absolute;
    top: -2px;
    left: 0;
    height: 20px;
    width: 20px;
    background: #afafaf;
}

.control--radio .control__indicator {
    border-radius: 50%;
}

.control:hover input ~ .control__indicator,
.control input:focus ~ .control__indicator {
    background: #ccc;
}

.control input:checked ~ .control__indicator {
    background: #66CC99;
}

.control:hover input:not([disabled]):checked ~ .control__indicator,
.control input:checked:focus ~ .control__indicator {
    background: #66CC99;
}

.control input:disabled ~ .control__indicator {
    background: #e6e6e6;
    opacity: 0.6;
    pointer-events: none;
}

.control__indicator:after {
    content: '';
    position: absolute;
    display: none;
}

.control input:checked ~ .control__indicator:after {
    display: block;
}

.control--checkbox .control__indicator:after {
    left: 8px;
    top: 4px;
    width: 3px;
    height: 8px;
    border: solid #fff;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
}

.control--checkbox input:disabled ~ .control__indicator:after {
    border-color: #7b7b7b;
}

.control--radio .control__indicator:after {
    left: 7px;
    top: 7px;
    height: 6px;
    width: 6px;
    border-radius: 50%;
    background: #fff;
}

.control--radio input:disabled ~ .control__indicator:after {
    background: #7b7b7b;
}

.select {
    position: relative;
    display: inline-block;
    margin-bottom: 0;
    width: 160px;
}

.select select {
    display: inline-block;
    width: 160px;
    cursor: pointer;
    padding: 10px;
    outline: 0;
    border: 0;
    border-bottom: 1px solid #afafaf;
    border-radius: 5px 5px 0 0;
    background: #fff;
    color: #afafaf;
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    font-family: 'Yanone Kaffeesatz', sans-serif;
    font-size: 22px;
}

.select option {
    font-family: Consolas, "monospace";
    font-size: 18px;
}

.select select::-ms-expand {
    display: none;
}

.select select:disabled {
    opacity: 0.5;
    pointer-events: none;
}

.select__arrow {
    position: absolute;
    top: 17px;
    right: 14px;
    width: 0;
    height: 0;
    pointer-events: none;
    border-style: solid;
    border-width: 8px 5px 0 5px;
    border-color: #7b7b7b transparent transparent transparent;
}

.select select:disabled ~ .select__arrow {
    border-top-color: #ccc;
}
</style>

<<script>


var fname = document.getElementById('fname'),
    lname = document.getElementById('lname'),
    age = document.getElementById('age'),
    sexe = document.getElementsByClassName('control-group')[0],
    pays = document.getElementById('pays'),
    pseudo = document.getElementById('pseudo'),
    email = document.getElementById('email'),
    password = document.getElementById('password'),
    passwordConf = document.getElementById('passwordConf'),
    send = document.getElementById('send'),
    tabBooleans = [false, false, false, false, false, false, false, false, false];

function up(label, str) {
    var s = document.getElementById(str);
    s.style.borderColor = "#66CC99";
    s.classList.add('up');
    document.getElementsByTagName('label')[label].style.color = "#66CC99";
    tabBooleans[label] = true;
}

function down(label, str) {
    var s = document.getElementById(str);
    s.style.borderColor = "#CACACA";
    s.classList.remove('up');
    tabBooleans[label] = false;
    document.getElementsByTagName('label')[label].style.color = "#CACACA";
}

function checkEmail(label) {
    var reg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (email.value.length > 0) {
        email.classList.add('up');
        if (reg.test(email.value)) up(label, "email");
        else {
            down(label, 'email');
            email.classList.add('up');
        }
    } else down(label,"email");
}

function checkTxt(id, label, n) {
    var str = document.getElementById(id);
    if (str.value.length >= n) {
        up(label, id);
        if (label == 7) checkPass(8);
    } else {
        if (label == 7) checkPass(8);
        down(label, id);
    }
}

function checkAge(id, label) {
    var Age = parseInt(age.value);
    if (Age > 4 && Age < 141) up(label, id);
    else down(label, id);
}

function checkSexe(sex1, sex2) {
    var sex1 = document.getElementById(sex1),
        sex2 = document.getElementById(sex2);
    if (sex1.checked || sex2.checked) {
        document.getElementsByClassName('sex')[0].style.color = "#66CC99";
        tabBooleans[3] = true;
    }
}

function checkPays(id) {
    var pays = document.getElementById(id);
    if (pays.value != "") {
        pays.style.borderColor = "#66CC99";
        pays.style.color = "#66CC99";
        tabBooleans[4] = true;
    } else {
        pays.style.borderColor = "#CACACA";
        pays.style.color = "#CACACA";
        tabBooleans[4] = false;
    }
}

function checkPass(label) {
    if (password.value.length > 0 && password.value == passwordConf.value)
        up(label, 'passwordConf');
    else
        down(label, 'passwordConf');
}

function verifiedForm() {
    var i = 0,
        valid = 1,
        inscrire = document.getElementById("send");
    for (i in tabBooleans)
        if(tabBooleans[i])
            valid++;
    if (valid == 10) {
        inscrire.removeAttribute("disabled");
    } else {
        inscrire.setAttribute("disabled", true);
    }
    document.getElementById("valid").innerHTML="Valid fields : "+valid+"/10";
}
/* Loading EventListener */
fname.addEventListener('input', function() {
    checkTxt('fname', 0, 2); //label 0 minimum de lettre 2
    verifiedForm();
});

lname.addEventListener('input', function() {
    checkTxt('lname', 1, 2); //label 1 minimum de lettre 2
    verifiedForm();
});

age.addEventListener('input', function() {
    checkAge('age', 2); //label 2 condition: 5<=age<=140
    verifiedForm();
});

sexe.addEventListener('click', function() {
    checkSexe('male', 'femelle'); //label 3 
    verifiedForm();
});

pays.addEventListener('change', function() {
    checkPays("pays");
    verifiedForm();
});

pseudo.addEventListener('input', function() {
    checkTxt('pseudo', 5, 4); //label 5 minimum de lettre 4
    verifiedForm();
});
email.addEventListener('input', function() {
    checkEmail(6); //label 6
    verifiedForm();
});

password.addEventListener('input', function() {
    checkTxt('password', 7, 6); //label 7 minimum de lettre 6
    verifiedForm();
});
passwordConf.addEventListener('input', function() {
    checkPass(8); //label 8 check if password == passwordConf
    verifiedForm();
});
send.addEventListener('click', function(e) {
    e.preventDefault();
    alert("Bravo!! Vous avez bien rempli la formulaire !");
})
</script>