	function ValidateObject(){
		var vobject;
		var isinitiative;
		var validatetype;
		var checklength;
		var minlength;
		var maxlength;
		var msg;
	}
	
	ValidateObject.prototype.Init=function(vobject,isinitiative,validatetype,equleitem,minlength,maxlength,msg){
		var v=new ValidateObject();
		v.vobject=document.getElementById(vobject);
		v.isinitiative=isinitiative;
		v.validatetype=validatetype;
		v.equleitem=equleitem;
		v.minlength=minlength;
		v.maxlength=maxlength;
		v.msg=msg;
		return v;
	}

	function Validate(){
		var objectarr=new Array();
	}
	/**
	*是否为字符串
	*/
	Validate.prototype.IsString=function(value){
		return new RegExp("^[A-Za-z]+$").test(value);
	}
	/**
	*登陆帐号验证
	*/
	Validate.prototype.IsRegiestName=function(value){
		return new RegExp("^[A-Za-z0-9_@.\u4e00-\u9fa5]+$").test(value);
	}
	/**
	*是否为空
	*/
	Validate.prototype.IsNull=function(value){
		if(value==null){
			return true;
		}else{
			return value.replace(/\s/gi,"")==""?false:true;
		}
		return true;
	}
	
	/**
	*判断填写内容是否为数字
	*/
	Validate.prototype.IsNumber=function(value){
		return new RegExp("^[0-9]+$").test(value);
	}
	
	/**
	*判断填写内容是否为Email
	*/
	Validate.prototype.IsEmail=function(value){
		return new RegExp(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/).test(value);
		//return true;
	}
	
	/**
	*判断填写内容是否为Url
	*/
	Validate.prototype.IsUrl=function(value){
		return new RegExp("[a-zA-z]+://[^\s]*").test(value);
	}
	
	/**
	*判断填写内容是否为日期
	*/
	Validate.prototype.IsDate=function(value){
		var reStr = "^(((([0-9]{2}(([2468][048])|([02468][48])|([13579][26])))|((([02468][048])|([13579][26]))(00)))(-)(2|02)(-)(([0]?[1-9])|([1-2][0-9])))|((([0-9]{2}([02468][1235679])|([13579][01345789]))|((([02468][1235679])|([13579][01345789]))(00)))(-)(2|02)(-)(([0]?[1-9])|([1][0-9])|([2][0-8])))|(([0-9]{4})(-)(((([0]?(1|3|5|7|8))|(10|12))(-)(([0]?[1-9])|([1-2][0-9])|30|31))|(((([0]?(4|6))|11))(-)(([0]?[1-9])|([1-2][0-9])|30)))))$";
        reStr = reStr.replace(/\(-\)/g, "(-)");
		var re = new RegExp(reStr, "g");
		return re.test(value);
	}
	
	/**
	*判断是否超出限制长度
	*/
	Validate.prototype.Max=function(value,maxlength){
		if(this.Length(value)>maxlength){
			return false;
		}
		return true;
	}
	
	/**
	*判断是否小于限制长度
	*/
	Validate.prototype.Min=function(value,minlength){
		if(this.Length(value)<minlength){
			return false;
		}
		return true;
	}
	
	/**
	*计算当前字符串的长度
	*/
	Validate.prototype.Length=function(value){
		if(value==null||value==undefined||value==""){
			return 0;
		}else{
			return value.replace(/[^\x00-\xff]/g,"**").length;
		}
	}
	
	/**
	*判断俩个文本框内容是否相同
	*/
	Validate.prototype.IsEqule=function(obj){
		return obj.vobject.value==obj.equleitem.value;
	}
	
	
	Validate.prototype.SelectValidateType=function(obj,validate){
		if(validate=="isstring"){
			return this.IsString(obj.vobject.value);
		}
		if(validate=="isregiestname"){
			return this.IsRegiestName(obj.vobject.value);
		}
		if(validate=="isnull"){ 
			return this.IsNull(obj.vobject.value);
		}
		if(validate=="isnumber"){
			return this.IsNumber(obj.vobject.value);
		}
		if(validate=="isdate"){
			return this.IsDate(obj.vobject.value);
		}
		if(validate=="maxless"){
			return this.Max(obj.vobject.value,obj.maxlength);
		}
		if(validate=="minless"){
			return this.Min(obj.vobject.value,obj.minlength);
		}
		if(validate=="isemail"){
			return this.IsEmail(obj.vobject.value);
		}
		if(validate=="isurl"){
			return this.IsUrl(obj.vobject.value);
		}
		if(validate=="equle"){
			return this.IsEqule(obj);
		}
		return true;
	}
	
	Validate.prototype.SelectValidateTypeList=function(obj){
		var validatearr=obj.validatetype.split(",");
		var check=true;
		for(var i=0;i<validatearr.length;i++){
			check=this.SelectValidateType(obj,validatearr[i]);
			if(!check){
				break;
			}
		}
		return check;
	}
	
	Validate.prototype.CheckThis=function(validateobject){
		for(var i=0;i<this.objectarr.length;i++){
			var obj=this.objectarr[i];
			if(obj.vobject==validateobject){
				if(obj.isinitiative||(!obj.isinitiative&&this.IsNull(obj.vobject.value))){
					if(!this.SelectValidateTypeList(obj)){
						alert(obj.msg);
						//=.=一定条件下会死循环
						//validateobject.select();
						validateobject.style.color="#ff0000";
					}else{
						validateobject.style.color="#000000";
					}
				}
				break;
			}
		}
		return true;
	}
	
	Validate.prototype.SubmitFormValidate=function(){
		var check=true;
		for(var i=0;i<this.objectarr.length;i++){
			var obj=this.objectarr[i];
			
			if(obj.isinitiative||(!obj.isinitiative&&this.IsNull(obj.vobject.value))){
				
				check=this.SelectValidateTypeList(obj);
				if(check){
					obj.vobject.style.color="#000000";
				}else{
					obj.vobject.style.color="#ff0000"
					//obj.vobject.select();
					alert(obj.msg);
					obj.vobject.focus();
					obj.vobject.select();
					//obj.vobject.style.color="#ff0000";
					break;
				}
			}
		}		
		return check;
	}