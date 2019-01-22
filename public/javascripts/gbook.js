function searchsubmit(){
var url=jQuery("#path0").val();
var keys=jQuery("#keys").val();
if(keys=="") {
   alert("Enter search keywords");
   return true;
}
else{
location.href = url+"search.asp?keys="+keys;
}
}

function addemail(){
var urls=jQuery("#path1").val();
var emails=jQuery("#emails").val();
if(emails=="") {
   alert("Please input the email address");
   return true;
}
else{
location.href = url+"gbook/emailsave.asp?Email="+emails;
}
}

//异步提交
$(function (){
    //左侧留言开始
  $("#gbooks").click(function(){  //button的id
   var reyx1= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
   var Contact1=jQuery("#Contact1").val();
   var ContactWay1=jQuery("#ContactWay1").val();
  var Email1=jQuery("#Email1").val();
   var Content1=jQuery("#Content1").val();
   var Paths1=jQuery("#Paths1").val();
   if (Contact1==""){
      alert("Your name cannot be empty");
   return false;
   };
   if (ContactWay1==""){
      alert("Phone number can not be empty");
   return false;
   };
   if (Email1==""){
      alert("Contact email can not be empty");
   return false;
   };
   if (reyx1.test(Email1)!=true)
   {
      alert("Contact email address");
   return false;
   };
   if (Content1==""){
      alert("Message content cannot be empty");
   return false;
   };
     var url1 = Paths1+"gbook/save.asp?action=add";
     var params1 = $("#form1").serialize();
     $.post(url1,params1,function(data,status){
       if(status=="success"){
          alert("Submit success!");
          $("#Contact1").val("Name");
            $("#ContactWay1").val("Tel");
            $("#Email1").val("Email");
            $("#Content1").val("Content");
       }else{
          alert("Please don't illegal submit!");
       }
     });
  });
  //左侧留言结束
$("#foot_gbooks").click(function(){  //button的id
  var reyx2= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
  var ContactWay2=jQuery("#ContactWay2").val();
  var Email2=jQuery("#Email2").val();
  var Content2=jQuery("#Content2").val();
  var Paths2=jQuery("#Paths2").val();
  if (ContactWay2==""){
     alert("Phone number can not be empty");
  return false;
  };
  if (Email2==""){
     alert("Contact email can not be empty");
  return false;
  };
  if (reyx2.test(Email2)!=true)
  {
     alert("Contact email address");
  return false;
  };
  if (Content2==""){
     alert("Message content cannot be empty");
  return false;
  };
     var url2 = Paths2+"gbook/save.asp?action=add";
     var params2 = $("#form2").serialize();
     $.post(url2,params2,function(data,status){
       if(status=="success"){
          alert("Submit success!");
          $("#ContactWay2").val("Tel");
          $("#Email2").val("Email");
          $("#Content2").val("Content");
       }else{
          alert("Please don't illegal submit!");
       }
     });
  });
});