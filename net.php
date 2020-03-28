
<!DOCTYPE html>
<html>
  <head>
    <title>Employment Verification Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, label { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 13px;
      color: #666;
      line-height: 22px;
      }
      legend { 
      color: #fff;
      background-color: #095484;
      padding: 3px 5px;
      font-size: 20px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 36px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 20px 0  #095484; 
      }
      .banner {
      position: relative;
          width:1260px;
      height: 400px;
      background-image: url("images/plswork.jpg");  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.6); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:#095484;
      }
      .item input:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #095484;
      color:#095484;
      }
        .item2 {
      position: relative;
      margin: 10px 0;
            width:100%;
      
      }
      .item2 span {
      color: red;
      }
       
      .item {
      position: relative;
      margin: 10px 0;
          width:30%;
      }
      .item span {
      color: red;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #095484;
      }
      .item i {
      right: 2%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #095484;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #4286f4;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input,.name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
    </style>
  </head>
  <body>

    <div class="testbox">
    <form METHOD="post" ACTION="netinsert.php">
      <div class="banner">
       
      </div>
      <p>Please fill out with the information that is requested below</p>
      <hr/>
 
        <legend> Experience & Expertise</legend>
        <div class="item2">
            <label for="email"><b>Email</b><span>*</span></label>
          <input id="email" type="text" name="email" required/>
        </div>
        <div class="item2">
            <label for="club"><b>Choose your Club:</b><span>*</span></label>
          <select id="club" name="club" required>
      <option value="code">Coding</option>
      <option value="dance">Dance</option>
      <option value="drama">Drama</option>
         <option value="music">Music</option>
         <option value="public">Public Speaking</option>
         <option value="electronics">Electronics</option>
         <option value="visual">Visual arts</option>
         <option value="firebase">Firebase</option>
         <option value="school">School Manager</option>
    </select>
        </div>
        <br>
        
        <label for="wd"><b>Experience duration: </b></label>
              <div class="item">
                  <label for="expfrom"><b>From</b><span>*</span></label>
                  
      <input id="expfrom" type="date" name="expfrom" required/>
                  
      <i class="fas fa-calendar-alt"></i>
                  
                  
      </div>
          <div class="item">
              <label for="expto"><b>To</b><span>*</span></label>
      <input id="expto" type="date" name="expto" required/>
      <i class="fas fa-calendar-alt"></i>
      </div>
        
        <div class="item2">
            <label for="message"> <b>Previous experience in selected vertical:</b><span>*</span></label><br>
                                <textarea class="item" type="textarea" id="message" name="message" placeholder="Your Message Here" maxlength="6000" cols="100" rows="10" required></textarea>
        
      </div>
      
      <div class="btn-block">
      <button type="submit">APPLY</button>
      </div>

  
        </form>
      </div>


    
    
    

    
       </body>
    

</html>

 