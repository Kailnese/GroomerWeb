<!DOCTYPE html>
<html>
<head>
  <title>Make Appointment</title>
  <style type="text/css">
    #mainBody{
      position: absolute;
      left: 0;
      top: 0px;
      width: 100%;
      height: 100%;
      padding: 0;
    }
    #imgdiv{
      float: right;
      background-image: url('./2.jpg');
      height: 440px;
      width: 500px;
    }
    #chose{
      margin-top: 240px;
      float: left;
      width: 500px;
      margin-left: 500px;
    }
    #hed{
      margin-top: 0 auto;
      background-color: white;
    }
    #mainTitle{
      text-align:center;
      font-family: "Algerian";
      font-weight: bold;
      font-size: 400%;
      opacity: 0.5;
      margin: 0 auto;
    }
    #timeTitle{
      font-family: "Algerian";
      font-weight: bold;
      font-size: 150%;
      opacity: 0.5;
      width: 50%;
    }
    #dogService{
      font-family: "Algerian";
      font-weight: bold;
      font-size: 150%;
      opacity: 0.5;
      width: 50%;
    }
    #hello{
      font-family: "Algerian";
      font-weight: bold;
      font-size: 150%;
      opacity: 0.5;
      width: 600px;
    }
    #service{
      height: 30px;
      font-family: "Bodoni MT Black";
      font-size: 22px;
      opacity: 0.8;
      color: #49a066;
    }
    #month{
      height: 30px;
      font-family: "Bodoni MT Black";
      font-size: 22px;
      opacity: 0.8;
      color: #49a066;
    }
    #day{
      height: 30px;
      font-family: "Bodoni MT Black";
      font-size: 22px;
      opacity: 0.8;
      color: #49a066;
    }
    #time{
      height: 30px;
      font-family: "Bodoni MT Black";
      font-size: 22px;
      opacity: 0.8;
      color: #49a066;
    }
    #submit{
      float: left;
      margin-top: 120px;
      margin-left: 120px;
      opacity: 0.8;
      font-family: "Bodoni MT Black";
      font-size: 22px;
      size: 50px;
      color: #49a066;
    }
  </style>
</head>
<body style="height: 100%">
  <div id="mainBody">
    <div id="hed">
      <p id="mainTitle">Select Your Time To Make Appointment</p>
    </div>
    <form method="post" action="timeChoice">
    <div id="chose">
      <p id="timeTitle">Available Time</p>
      <select name="month" id="month">
        <option value="January">January</option>
        <option value="February">February</option>
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
      <select name="day" id="day">
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
      </select>
      <select name="time" id="time">
        <option value="9:00">9:00</option>
        <option value="10:30">10:30</option>
        <option value="12:00">12:00</option>
        <option value="14:00">14:00</option>
        <option value="15:30">15:30</option>
        <option value="17:00">17:00</option>
      </select>
      <p id="dogService">Select Service</p>
      <select name="service" id="service">
        <option value="wash only">wash only</option>
        <option value="wash and nail clipping">wash and nail clipping</option>
        <option value="deluxe grooming">deluxe grooming</option>
        <option value="Full clip">Full clip</option>
      </select><br>
      <p id="hello">Please give special instructions if you want</p>
      <textarea name="comment" style="font-size:15px ;width:600px;height:80px;" placeholder="special instructions"></textarea><br>
      <input type="submit" id="submit" value="Submit" onclick="alert('Submit Success, back to userInfo to check schedule')">
    </div></form>
    <div id="imgdiv" style=""></div>
  </div>
</body>
</html>