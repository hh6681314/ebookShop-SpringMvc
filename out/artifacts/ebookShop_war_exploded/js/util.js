 $(function(){  
    //channel change
 	var $channel = $("#channel");
 	var $type = $("#type"); 	
 	$channel.change(function(){
 	$type[0].options.length = 1;
 	$.ajax({
 		type:'post',
 		url:'../UtilServlet',
 		dataType:'json',
 		data:{fun:'getType',parent:$channel.val()},
 		success:function(ret){
 		$.each(ret,function(){
 			$type.append("<option value="+this.id+">"+this.name+"</option");
 		});
 		},
 		error:function(xml){alert("出现未知故障");alert(xml.responseText);}
 	});
 });//channel_change end
 })

