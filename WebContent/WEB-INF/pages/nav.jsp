 <div class="navbar navbar-inverse-blue navbar">
    <!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
      <div class="navbar-inner">
        <div class="container">
           <div class="navigation">
             <nav id="colorNav">
			   <ul>
				<li class="green">
					<a href="#" class="icon-home"></a>
					<ul>
						<li><a href="<%=getServletContext().getContextPath() %>/login">Login</a></li>
					    <li><a href="<%=getServletContext().getContextPath() %>/register">Register</a></li>
					    <li><a href="<%=getServletContext().getContextPath() %>/logout">Logout</a></li>
					</ul>
				</li>
			   </ul>
             </nav>
           </div>
           <a class="brand" href="index"><img src="<%=request.getContextPath() %>/images/logo.png" alt="logo"></a>
           <div class="pull-right">
          	<nav class="navbar nav_bottom" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header nav_2">
		      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"></a>
		   </div> 
		   <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
		        <ul class="nav navbar-nav nav_1">
		            <li><a href="<%=getServletContext().getContextPath() %>/index">Home</a></li>
		            
		    		
					<li ><a href="<%=request.getContextPath() %>/search">Search</a></li>
		                 <li ><a href="<%=request.getContextPath() %>/user/profile" >Profile</a></li>
		            	            <li ><a href="<%=request.getContextPath() %>/user/editprofile" >Edit Profile</a></li>
		                <li><a href="<%=request.getContextPath() %>/user/inbox">Messages</a></li>
		              
		            <li class="last"><a href="<%=request.getContextPath() %>/contactus">Contacts</a></li>
		        </ul>
		     </div><!-- /.navbar-collapse -->
		    </nav>
		   </div> <!-- end pull-right -->
          <div class="clearfix"> </div>
        </div> <!-- end container -->
      </div> <!-- end navbar-inner -->
    </div> <!-- end navbar-inverse-blue -->