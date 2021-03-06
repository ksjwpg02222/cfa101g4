<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>		
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.0.18/sweetalert2.min.css">
 <style>
        /* div{
            border: 1px solid black;            
        } */
        div.row, div.container, div.col, div.col-11{
            padding-left: 0px;
            padding-right: 0px;
        }
        div.row{
            margin-left: 0px;
            margin-right: 0px;
        }
        body{
            background-color: #ebebeb;
        }
        a{
            text-decoration: none;
        }
        ul{
            margin-bottom: 0px;
            margin-top: 10px;
        }
        img{
        	height:80px;
        	width:80px;
        }
        .chatroomOpen{

    display:block;
    bottom:15px;
    right:30px;
    position: fixed;
    z-index: 1;
}


.chatroom{
    background-color: white;
    border: 1px solid black;
    display:block;
    bottom:15px;
    right:5px;
    width:449px;
    height:350px;
    position: fixed;
    z-index: 1;
    display:none;
}
.chatroomHeader{
	border-width: thick; border-style:solid;
    border: 1px solid black;
    display: flex;
    position: relative;
    
}
.chatroomHeaderLeft{
/*     border: 1px solid black; */
    margin: 0 auto;
    height: 20px;
}
.chatroomHeaderRight{
	top:2px;
	font-size:10px;
    position: absolute;
    right: 0px;
    height: 20px;
}
.memberRow{
/*     border: 1px solid black; */
    position: absolute;
    height: 93%;
    width: 30%;
}
.messageArea{
    height: 80%;
    width: 70%;
/*     border: 1px solid red; */
    position: absolute;
    right: 0px;
    overflow: scroll;
}
.area{
	margin:0px;
	padding:0px;
}
.oneMember{
	margin-top:3px;
    height: 10%;
    width: 100%;
/*     border: 1px solid black; */
    text-align: center;
    line-height: 25px;
}
.messageArea li{
    list-style-type: none;
/*     border: 1px solid black; */
    
}
.me{
/*     border: 1px solid black; */
    text-align: right;
    background-color: lightblue;
    
}
.friend{
/*     border: 1px solid black; */
    text-align: left;
    background-color: gray; 
}
.me span{
    font-size: 5px;
    margin-right: 5px;
}
.friend span{
    font-size: 5px;
    margin-left: 5px;
}
.textbox{
    position: absolute;
    display: block;
    bottom: 0px;
    right: 63px;
    width: 250px;
    height: 45px;
    font-size: 16px;
}
.sendMessage{
    position: absolute;
    display: block;
    bottom: 0px;
    right: 0px;
    height: 46px;
    width: 63px;
}
.connect{
	position: absolute;
    display: block;
    bottom: 0px;
    right: 163px;
    width: 45px;
    height: 45px;
    font-size: 16px;
}
.disconnect{
	position: absolute;
    display: block;
    bottom: 0px;
    right: 63px;
    width: 45px;
    height: 45px;
    font-size: 10px;
}
.getLink{
	position: absolute;
    display: block;
    bottom: 0px;
    right: 280px;
    width: 45px;
    height: 45px;
    font-size: 10px;
}
#chatroomHide{
	width:16px;
	height:16px;
}
        
    </style>
</head>
<body>
  
  <div class="container-fluid">
        <div class="row  h-100">
          <div class="col-2" style="padding-right: 0px;">
              <div class="col2">
                   <div class="row" style="height: 100px;">
                       <div class="col-5">
                        
                       </div>
                   </div>
                   <div class="col" style="margin-left: 40px;">
                       <div class="col" id="collapseExample" data-bs-target="#collapseExample">
                            <a href="/CFA101G4/front-end/Member/member_center.html" id="myAccount">????????????</a>
                       </div>
                       
                   </div>
                   
                   	<div class="col" style="margin-left: 40px; margin-top: 10px;">
                        <div class="col">
                            <a href="/CFA101G4/front-end/Member/checkAllNotices.html" id="notice">????????????</a>
                        </div>
                        
                   </div>
                   <div class="col" style="margin-left: 40px; margin-top: 10px;">
                        <div class="col">
                            <a href="/CFA101G4/front-end/Member/storeMoney.html">????????????</a>
                        </div>
                   </div>
                   <div class="col" style="margin-left: 40px; margin-top: 10px;">
                        <div class="col">
                            <a href="/CFA101G4/front-end/Member/checkOrdersStatus.jsp">??????????????????</a>
                        </div>
                    </div>
                    <div class="col" style="margin-left: 40px; margin-top: 10px;">
                        <div class="col">
                            <a href="/CFA101G4/front-end/Member/checkPRordersAll.jsp">????????????</a>
                        </div>
                    </div>
                    <div class="col" style="margin-left: 40px; margin-top: 10px;">
                        <div class="col">
                            <a href="/CFA101G4/bid.do?action=get_win_bid">????????????</a>
                        </div> 
                   </div>
                   <div class="col" style="margin-left: 40px; margin-top: 10px;">
                        <div class="col">
                            <a href="/CFA101G4/front-end/FrontMain.jsp">?????????</a>
                        </div> 
                   </div>
              </div>
          </div> 
          <div class="col-10">
              
	            <div class="col shadow-sm p-3 mb-5 bg-white rounded" style="background-color: white; margin-top: 15px; margin-bottom: 15px!important;">
	                <ul class="nav justify-content-around">
	                    <li class="nav-item">
	                      <a class="nav-link active" aria-current="page" href="/CFA101G4/front-end/Member/checkOrdersStatus.html">??????</a>
	                    </li>
	                    <li class="nav-item">
	                      <a class="nav-link" href="/CFA101G4/front-end/Member/checkOrdersStatus_toBeShipped.html">?????????</a>
	                    </li>
	                    <li class="nav-item">
	                      <a class="nav-link" href="/CFA101G4/front-end/Member/checkOrdersStatus_waitForReceipt.html" tabindex="-1" aria-disabled="true">?????????</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link" href="/CFA101G4/front-end/Member/checkOrdersStatus_ordersDone.html" tabindex="-1" aria-disabled="true">??????</a>
	                      </li>
	                      <li class="nav-item">
	                        <a class="nav-link" href="/CFA101G4/front-end/Member/checkOrdersStatus_cancelled.html" tabindex="-1" aria-disabled="true">?????????</a>
	                      </li>
	                  </ul>
	            </div>
	            <div class="col p-2" style="margin-bottom: 15px!important;">
	                <div class="input-group">
	                    <span class="input-group-text" id="basic-addon1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
	                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
	                      </svg></span>
	                    <input type="text"  style="background-color: #d3d3d3" class="form-control" placeholder="???????????????????????????????????????????????????????????????" aria-label="Username" aria-describedby="basic-addon1">
	                </div>
	            </div>
	           <div id="ajaxchange"> 
		           
            	</div>
            
        </div>
    </div> 
    
  </div>

  
    <script type="text/javascript" src="/CFA101G4/JS/Front-end-js/member_orders.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script type="text/javascript" src="/CFA101G4/JS/Front-end-js/websocketForPress.js"></script>
	

</body>
</html>