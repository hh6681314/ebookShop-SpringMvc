$(function(){
	  $("#companyName").focus(function(){
	  	$("#placeLayer").show();
		$("#selectcompanyDiv").load("../search.jsp ");
	  })
})


function showMe( ){ 
		document.getElementById("placeLayer").style.display="block"; 
		$('#selectcompanyDiv').load('www.baidu.com');
		}	
function selectPlace(place){
			document.myform.placeButton.value=place;
			document.getElementById("placeLayer").style.display="none";
		}	
function closeMe( ){
			$("#resultDiv").html("");
			document.getElementById("placeLayer").style.display="none";
		}
function setValue(value,id){
		$("#companyName").attr("value",value);
		$("#companyId").attr("value",id);
		closeMe();
		}
		
$(function(){
		 	var $submit1 = $("#submit1");
		 	var $resultDiv = $("#resultDiv");
		 	$submit1.click(function(){
		 		if("<%=type%>" == "ht"){
		 			document.getElementById("form").action="<%=action%>";
					document.getElementById("form").submit();
		 		}else{
		 			$resultDiv.html("");
				 	$.ajax({
			 		type:'post',
			 		url:'<%=action%>',
			 		dataType:'json',
			 		data:{
			 			province:$("#province").val(),
			 			city:$("#city").val(),
			 			district:$("#district").val(),
			 			channel:$("#subChannel").val(),
			 			starLevel:$("#starLevel").val(),
			 			name:$("#jdName").val()
			 			},
			 		success:function(ret){
			 		$.each(ret,function(){
			 			$resultDiv.html($resultDiv.html()+"<a onclick=setValue('"+this.name+"','"+this.id+"') >"+this.name+"</a><br>");
			 		});
			 		},
			 		error:function(){alert("出现未知故障")}
		 			});
				 }//end of else
			});//end of click
		 })