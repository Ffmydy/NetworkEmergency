<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head> 
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script><![endif]-->
    <script src="js/echarts.min.js"></script>
  </head>
  <body>
    <header class="header">   
      <nav class="navbar navbar-expand-lg">
        <div class="search-panel">
          <div class="search-inner d-flex align-items-center justify-content-center">
            <div class="close-btn">Close <i class="fa fa-close"></i></div>
            <form id="searchForm" action="#">
              <div class="form-group">
                <input type="search" name="search" placeholder="What are you searching for...">
                <button type="submit" class="submit">Search</button>
              </div>
            </form>
          </div>
        </div>
        <div class="container-fluid d-flex align-items-center justify-content-between">
          <div class="navbar-header">
            <!-- Navbar Header--><a href="indexUser.html" class="navbar-brand">
              <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">Emergency</strong><strong>Network</strong></div>
              <div class="brand-text brand-sm"><strong class="text-primary">D</strong><strong>A</strong></div></a>
            <!-- Sidebar Toggle Btn-->
            <button class="sidebar-toggle"><i class="fa fa-long-arrow-left"></i></button>
          </div>
          <div class="right-menu list-inline no-margin-bottom">                         
            <!-- Log out               -->
            <div class="list-inline-item logout" >   
	                <a id="logout" href="logout.do" class="nav-link"> 
		                <span class="d-none d-sm-inline">Logout </span>
		                <i class="icon-logout"></i>
	                </a>
                </div>
            </div>
        </div>
      </nav>
    </header>
    <div class="d-flex align-items-stretch">
      <!-- Sidebar Navigation-->
      <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
          <div class="avatar"><img src="img/avatar-4.jpg" alt="..." class="img-fluid rounded-circle"></div>
          <div class="title">
            <h1 class="h5"><%=request.getSession().getAttribute("User_name") %></h1>
          </div>
        </div>
        <!-- Sidebar Navidation Menus-->

        <span class="heading">Main</span>
        <ul class="list-unstyled">
          <li><a href="user_main.do"> <i class="icon-home"></i>Home </a></li>
          <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-windows"></i>事务管理 </a>
            <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
              <li><a href="table.do?aff_incstate=0" onclick="dabai();">代办事物</a></li>
              <li><a href="table.do?aff_incstate=1" onclick="dabai();">处理中事物</a></li>
              <li><a href="table.do?aff_incstate=2" onclick="dabai();">已完成事物</a></li>
            </ul>
          </li>

          <li ><a href="management.jsp"> <i class="icon-grid"></i>事件管理 </a></li>
          <li class="active"><a href="state_bar.do"> <i class="fa fa-bar-chart"></i>数据统计 </a></li>
        </ul>



      </nav>
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom" style="text-align:center">Charts</h2>
          </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="user_main.jsp">Home</a></li>
            <li class="breadcrumb-item active">Charts        </li>
          </ul>
        </div>
        <section>
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-4">
               <!-- <div class="line-chart block chart">
                  <div class="title"><strong>Line Chart Example</strong></div>
                  <canvas id="lineChartCustom1"></canvas>
                </div>-->

                <div id="main1" style="width: 500px;height:350px;"></div>

              </div>
              <div class="col-lg-4">       
                <div id="main2" style="width: 500px;height:350px;"></div>
              </div>
              <div class="col-lg-4">
                <div id="main3" style="width: 500px;height:350px;"></div>
              </div>
              <div class="col-lg-8" style="margin:0 auto;">
               <div id="main4" style="width: 1000px;height:700px;"></div>
              </div>
            </div>
          </div>
        </section>
        <footer class="footer">
          <div class="footer__block block no-margin-bottom">
            <div class="container-fluid text-center">
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- JavaScript files-->
<!-- //	<script src="js/esl.js"></script> -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"> </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"> </script>
    <script src="js/Chart.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/front.js"></script>
    <script src="js/charts-custom.js"></script>
    <script src="js/front.js"></script>
    
    
    
    <script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart0 = echarts.init(document.getElementById('main1'));

      var arr0 = new Array();
      var index0 = 0;

      <c:forEach items="${liststate0}" var="state0">
          arr0[index0++] = ${state0.num};
      </c:forEach>
      // 指定图表的配置项和数据
      var option0 = {
          title: {
              text: '待处理',
               textStyle:{					//---主标题内容样式	
                	color:'white'
                },           
          },
          tooltip: {
              show: true,
              trigger:'item',				//---数据项图形触发
            	axisPointer:{				//---指示样式
            		type:'shadow',		
            		axis:'auto',	

            	},
            	padding:5,
            	textStyle:{					//---提示框内容样式
            		color:"red",			
            	},
	      },
          grid: {  //设置图标距离
          top: "50",
          left: "30",
          right: "10",
          bottom: "20"        
        },
     
        
          xAxis : [
              {
                  type : 'category',
                  data : [
                      <c:forEach items="${x_type}" var="type">
                      ["${type}"],
                      </c:forEach>
                  ],
               axisLabel: {
            		textStyle: {
              			//文字样式
              			color: "#62799C",
              			fontSize: "14"
            		}
         		},
                splitLine:{					//---grid 区域中的分隔线
            		show:false,					//---是否显示，'category'类目轴不显示，此时我的X轴为类目轴，splitLine属性是无意义的
            		lineStyle:{
            			//color:'red',
            			//width:1,
            			//type:'solid',
            		},
                },
              }
          ],
          yAxis : [
              {
                  type : 'value',
                  axisLabel: {
            		textStyle: {
              			//文字样式
              			color: "#62799C",
              			fontSize: "16"
            		},
				},
           	splitLine:{					//---grid 区域中的分隔线
            		show:true,					//---是否显示，'category'类目轴不显示，此时我的y轴为类目轴，splitLine属性是有意义的
            		lineStyle:{
            			color:'#666',
            			width:1,
            			type:'dashed',			//---类型
            		},
            	},
          }
          ],
          series : [
              {
                  name:'事件数',
                  type:'bar',
                  data: arr0,
                   itemStyle: {
              normal: {
                color: "rgba(160,216,254,1)" //柱状图的背景颜色
              }
            },
            barWidth: 40,  //柱状图宽度
            barGap: '10%'  //设置同一类中两个柱状图的距离
		     }
          ]
      };
      myChart0.setOption(option0);
	</script>
	
	<script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart1 = echarts.init(document.getElementById('main2'));

      var arr1 = new Array();
      var index1 = 0;

      <c:forEach items="${liststate1}" var="state1">
          arr1[index1++] = ${state1.num};
      </c:forEach>
      // 指定图表的配置项和数据
      var option1 = {
          title: {
              text: '处理中',
               textStyle:{					//---主标题内容样式	
                	color:'white'
                },           
          },
          tooltip: {
              show: true,
              trigger:'item',				//---数据项图形触发
            	axisPointer:{				//---指示样式
            		type:'shadow',		
            		axis:'auto',	

            	},
            	padding:5,
            	textStyle:{					//---提示框内容样式
            		color:"red",			
            	},
	      },
          grid: {  //设置图标距离
          top: "50",
          left: "30",
          right: "10",
          bottom: "20"        
        },
     
        
          xAxis : [
              {
                  type : 'category',
                  data : [
                      <c:forEach items="${x_type}" var="type">
                      ["${type}"],
                      </c:forEach>
                  ],
               axisLabel: {
            		textStyle: {
              			//文字样式
              			color: "#62799C",
              			fontSize: "14"
            		}
         		},
                splitLine:{					//---grid 区域中的分隔线
            		show:false,					//---是否显示，'category'类目轴不显示，此时我的X轴为类目轴，splitLine属性是无意义的
            		lineStyle:{
            			//color:'red',
            			//width:1,
            			//type:'solid',
            		},
                },
              }
          ],
          yAxis : [
              {
                  type : 'value',
                  axisLabel: {
            		textStyle: {
              			//文字样式
              			color: "#62799C",
              			fontSize: "16"
            		},
				},
           	splitLine:{					//---grid 区域中的分隔线
            		show:true,					//---是否显示，'category'类目轴不显示，此时我的y轴为类目轴，splitLine属性是有意义的
            		lineStyle:{
            			color:'#666',
            			width:1,
            			type:'dashed',			//---类型
            		},
            	},
          }
          ],
          series : [
              {
                  name:'事件数',
                  type:'bar',
                  data: arr1,
                   itemStyle: {
              normal: {
                color: "rgba(160,216,254,1)" //柱状图的背景颜色
              }
            },
            barWidth: 40,  //柱状图宽度
            barGap: '10%'  //设置同一类中两个柱状图的距离
		     }
          ]
      };
      myChart1.setOption(option1);
	</script>
	
	<script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart2 = echarts.init(document.getElementById('main3'));

      var arr2 = new Array();
      var index2 = 0;

      <c:forEach items="${liststate2}" var="state2">
          arr2[index2++] = ${state2.num};
      </c:forEach>
      // 指定图表的配置项和数据
      var option2 = {
          title: {
              text: '已完成',
               textStyle:{					//---主标题内容样式	
                	color:'white'
                },           
          },
          tooltip: {
              show: true,
              trigger:'item',				//---数据项图形触发
            	axisPointer:{				//---指示样式
            		type:'shadow',		
            		axis:'auto',	

            	},
            	padding:5,
            	textStyle:{					//---提示框内容样式
            		color:"red",			
            	},
	      },
          grid: {  //设置图标距离
          top: "50",
          left: "30",
          right: "10",
          bottom: "20"        
        },
     
        
          xAxis : [
              {
                  type : 'category',
                  data : [
                      <c:forEach items="${x_type}" var="type">
                      ["${type}"],
                      </c:forEach>
                  ],
               axisLabel: {
            		textStyle: {
              			//文字样式
              			color: "#62799C",
              			fontSize: "14"
            		}
         		},
                splitLine:{					//---grid 区域中的分隔线
            		show:false,					//---是否显示，'category'类目轴不显示，此时我的X轴为类目轴，splitLine属性是无意义的
            		lineStyle:{
            			//color:'red',
            			//width:1,
            			//type:'solid',
            		},
                },
              }
          ],
          yAxis : [
              {
                  type : 'value',
                  axisLabel: {
            		textStyle: {
              			//文字样式
              			color: "#62799C",
              			fontSize: "16"
            		},
				},
           	splitLine:{					//---grid 区域中的分隔线
            		show:true,					//---是否显示，'category'类目轴不显示，此时我的y轴为类目轴，splitLine属性是有意义的
            		lineStyle:{
            			color:'#666',
            			width:1,
            			type:'dashed',			//---类型
            		},
            	},
          }
          ],
          series : [
              {
                  name:'事件数',
                  type:'bar',
                  data: arr2,
                   itemStyle: {
              normal: {
                color: "rgba(160,216,254,1)" //柱状图的背景颜色
              }
            },
            barWidth: 40,  //柱状图宽度
            barGap: '10%'  //设置同一类中两个柱状图的距离
		     }
          ]
      };
      myChart2.setOption(option2);
	</script>
	
	<!--  <script type="text/javascript">
     var myChart = echarts.init(document.getElementById('main4'));
    option = {
        title : {
            text: '事件类型统计',       //大标题

            x:'center'                 //标题位置   居中
        },
        tooltip : {
            trigger: 'item',           //数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
            formatter: "{a} <br/>{b} : {c} ({d}%)"   //{a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）用于鼠标悬浮时对应的显示格式和内容
        },
        legend: {                           //图例组件。
            orient: 'vertical',             //图例列表的布局朝向
            left: 'left',
            data: ['违处信息','网络攻击','恶意软件','信息泄露','安全威胁']
        },
        series : [              //系列列表。每个系列通过 type 决定自己的图表类型
            {
                name: '事件类型',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:"${x_state[0]}", name:'违处信息'},
                    {value:"${x_state[1]}", name:'网络攻击'},
                    {value:"${x_state[2]}", name:'恶意软件'},
                    {value:"${x_state[3]}", name:'信息泄露'},
                    {value:"${x_state[4]}", name:'安全威胁'},
                    
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    myChart.setOption(option);
    </script>

	 -->
	
      
     <script type="text/javascript">
     var myChart = echarts.init(document.getElementById('main4'));
    option = {
        title : {
            text: '事件类型统计',       //大标题

            x:'center',                 //标题位置   居中
            y: '10%',
            
             textStyle: {
              fontSize: 26,
              fontWeight: 'bolder',
              color: 'white'
            },
        },
        tooltip : {
            trigger: 'item',           //数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
            formatter: "{a} <br/>{b} : {c} ({d}%)"   //{a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）用于鼠标悬浮时对应的显示格式和内容
        },
        legend: { 
         	y: '20%',
         	x:'30%',                          //图例组件。
            orient: 'vertical',             //图例列表的布局朝向
            left: 'left',
           data: ['违处信息','网络攻击','恶意软件','信息泄露','安全威胁'],
            textStyle: {
              color: '#666'  // 图例文字颜色
            },
        },
        series : [              //系列列表。每个系列通过 type 决定自己的图表类型
            {
                name: '访问来源',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
               /*  data:[
                    {value:"${x_state[0]}", name:'待处理事件'},
                    {value:"${x_state[1]}", name:'处理中事件'},
                    {value:"${x_state[2]}", name:'已处理事件'},
                ], */
                 data:[
                    {value:"${x_state[0]}", name:'违处信息'},
                    {value:"${x_state[1]}", name:'网络攻击'},
                    {value:"${x_state[2]}", name:'恶意软件'},
                    {value:"${x_state[3]}", name:'信息泄露'},
                    {value:"${x_state[4]}", name:'安全威胁'},
                    
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    myChart.setOption(option);
    </script>
   </body>
</html>