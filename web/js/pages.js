 //界面加载完毕的初始化方法   
        $(document).ready(function(){  
        	alert("init page");
            initPage("page",149,1,10,5);  
        });  
       /** 
        * CopyRight By JasionNan 
        * 该几个函数主要用于页面导航 
        * div --标签的id值 
        * total --ajax返回的记录总数 
        * current --第几页 
        * pageSize --每页显示的记录数 
        * count --导航显示的页数,即要显示多少个数字 
        * 需重写goToPage函数 
        */   
        var div,total,current=1,pageSize,count;  
        function initPage(div,total,current,pageSize,count){  
            this.div=div;  
            this.total=total;  
            this.current=current;  
            this.pageSize=pageSize;  
            this.count=count;  
            this.pageList=pageList;  
            pageList();  
        }  
        function pageList(){//count表示每页显示的标签数,奇数  
           var pages=parseInt(this.total/this.pageSize);//求出总页数  
           if(this.total%this.pageSize!=0){  
               pages++;  
           }  
           if(pages<2) return;  
           var preVal=this.current-1;  
           var nextVal=this.current+1;  
           var pre=$("<a href='javascript:void(0)' onclick='goToPage("+preVal+")'>上一页</a>");  
           var next=$("<a href='javascript:void(0)' onclick='goToPage("+nextVal+")'>下一页</a>");  
           if(pages<=this.count){  
               if(this.current>1){  
                  $('#'+this.div).append(pre);    
               }  
               for(var i=1;i<=pages;i++){  
                  if(this.current==i){  
                    $('#'+this.div).append("<a>"+i+"</a>");    
                  }else{  
                    $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                  }  
               }  
           }else{  
               var left=this.current-1,right=pages-this.current,middle=parseInt(this.count/2);  
               if(left<=middle&left>=0){//左边页数小于count/2  
                  var rcount=this.count-1-left;//右边显示标签个数  
                  if(this.current>1){  
                    $('#'+this.div).append(pre);    
                    for(var i=1;i<=left;i++){  
                       $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                    }  
                  }  
                  $('#'+this.div).append("<a>"+this.current+"</a>");  
                  if(rcount<right){  
                     for(var i=1;i<=(rcount-1);i++){  
                        var base=this.current+i;  
                        $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+base+")'>"+base+"</a>");  
                     }   
                     $('#'+this.div).append("<a>...</a>");  
                     $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+pages+")'>"+pages+"</a>");  
                  }else{  
                     for(var i=this.current+1;i<=pages;i++){  
                        $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                     }  
                  }  
               }else if(left>middle){//左边页数个数大于middle  
                  $('#'+this.div).append(pre);  
                  $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage(1)'>"+1+"</a>");  
                  $('#'+this.div).append("<a>...</a>");  
                  var rpages=pages-this.current;  
                  if(rpages<=middle){  
                    var lcount=this.count-1-rpages;  
                    for(var i=this.current-lcount+1;i<this.current;i++){  
                       $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                    }  
                    $('#'+this.div).append("<a>"+current+"</a>");  
                    for(var i=this.current+1;i<=pages;i++){  
                       $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                    }  
                  }else{  
                    for(var i=this.current-middle+1;i<this.current;i++){  
                       $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                    }  
                    $('#'+this.div).append("<a>"+this.current+"</a>");  
                    for(var i=this.current+1;i<=this.current+middle-1;i++){  
                       $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+i+")'>"+i+"</a>");  
                    }  
                    $('#'+this.div).append("<a>...</a>");  
                    $('#'+this.div).append("<a href='javascript:void(0)' onclick='goToPage("+pages+")'>"+pages+"</a>");  
                  }  
               }  
           }  
           if(this.current<pages){  
               $('#'+this.div).append(next);  
           }  
           //添加样式  
           $('#'+this.div+" a").css("margin",3);  
        }  
      
        function goToPage(page){  
          $("#"+this.div).append("<br>");  
          this.current=page;  
          pageList();  
        }  