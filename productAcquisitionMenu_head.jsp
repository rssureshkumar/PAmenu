	<!-- Begin HEAD code for the PA menu; this resides in $Source$ -->
		<!-- Namespace source file -->
		<script type="text/javascript" src="/productAcquisitionMenu/yui/2.7.0/build/yahoo/yahoo-min.js"></script>
		<!-- Dependency source files -->
		<script type="text/javascript" src="/productAcquisitionMenu/yui/2.7.0/build/event/event-min.js"></script>
		<script type="text/javascript" src="/productAcquisitionMenu/yui/2.7.0/build/dom/dom-min.js"></script>
		<!-- Container source file -->
		<script type="text/javascript" src="/productAcquisitionMenu/yui/2.7.0/build/container/container_core-min.js"></script>
		<%
			String itemCode = (String)request.getParameter("view.itemCode");
	        if(itemCode==null || itemCode.length()==0) { 
	            itemCode = (String)request.getParameter("itemCode");
	        }
	        
	        if(itemCode!=null) {%> 
	    		<script type="text/javascript" src="/productAcquisitionMenu/javaScript/productAcquisitionMenu_js.jsp?itemCode=<%=itemCode%>"></script>        
	        <%} else {%> 
	            <script type="text/javascript" src="/productAcquisitionMenu/javaScript/productAcquisitionMenu_js.jsp"></script>
	       	<%}%>
		
		
		
		<!-- CSS for Menu --> 
		<link rel="stylesheet" type="text/css" href="/productAcquisitionMenu/yui/2.7.0/build/assets/skins/sam/menu.css"/>

		<link rel="stylesheet" type="text/css" href="/productAcquisitionMenu/css/productAcquisitionMenu.css"/> 

	      <%--
	      TODO:
		  In the past, the styles in the following CSS file were rendered to the page by the ADF menu JSP tags.
		  We are no longer using the ADF menu tags to generate the product acquisition menu; however
		  it turns out that there were some JSPs whose appearance depended on _these_ styles. 
		  In other words if these styles were missing, the fonts would not show correctly on the page.
		  Therefore, I'm adding the styles back as a temporary fix until a more permanent solution can
		  be implemented.
		  --%>
	    <link rel="stylesheet" type="text/css" href="/productAcquisitionMenu/css/productAcquisitionMenu_legacy.css"/> 
	<!-- End HEAD code for the PA menu -->