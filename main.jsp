<%@page import="com.gfs.util.manifest.ManifestUtil,java.util.Calendar"%>
<!DOCTYPE html 
 PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@taglib prefix="decorator"
uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://jawr.net/tags" prefix="jwr"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>
		<decorator:title />
	</title>
	<script>
		var contextPath = "<%=request.getContextPath()%>";
	</script>
	<s:head />
	<c:import url="/WEB-INF/decorators/jawr.jsp"></c:import>
	<c:import url="/productAcquisitionMenu_head.jsp" context="/productAcquisitionMenu"></c:import>
	<decorator:head />
</head>

<body>
   <header class="container-fluid">
        <div class="col-lg-1 col-md-1 col-sm-1 row">
			<a class="logo" href="https://mysit.gfs.com">
                <h5><img alt="GFS" src="<s:url value="/images/favicon.ico"/>" /></h5>
            </a>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 row">
			<a class="projectTitle" href="<s:url value=" / "/>">
			    <h5><img src="<s:url value="/images/product_head2.jpg"/>" height="25" /></h5>
            </a>
        </div>
        <div class="col-lg-5 col-md-5 col-sm-5">
            <div class="page-title sm-flex-center">
                <h3 class="fa-lg text-center"><s:text name="item.system.title" /></h3>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
            <ul id="header-actions" class="nav nav-pills pull-right">
                <li class="list-box hidden-xs dropdown"><a href="https://mysit.gfs.com" role="button" title="<decorator:title /> <decorator:getProperty property="meta.banner.note" />"><i class="fa fa-question-circle fa-2x"></i></a> </li>
                <li class="list-box hidden-xs dropdown"> <a href="#" role="button" title="<s:text name="item.settings.title"/>" ><i class="fa fa-user-circle fa-2x"></i></a>
            </ul>
        </div>
    </header>
    <nav id="_menu" class="navbar navbar-default">
		<c:import url="/productAcquisitionMenu.jsp" context="/productAcquisitionMenu"></c:import>
    </nav>
	<div id="page-body">
		<c:import url="/WEB-INF/decorators/messages.jsp"></c:import>
		<decorator:body />
	
	</div>
	<footer id="footer">
		<hr />
		<div id="footerLeft" class="column">
			<%-- This should be reactivated when we are ready to localize
<c:import url="/WEB-INF/jsp/localeSwitcher.jsp"></c:import>
--%>&nbsp;
		</div>
		<div id="footerCenter" class="column">
			&copy;
			<%=Calendar.getInstance().get(Calendar.YEAR)%>
				Gordon Food Service<br /> Version
			<%=ManifestUtil.getImplementationVersion(application)%>
		</div>
		<div id="footerRight" class="column">
			&nbsp;
		</div>
	</footer>
	<div id="fullScreenLoadingContainer">
		<s:text name="item.loading" /> &nbsp;
		<img src="<s:url value=" /images/loading.gif "/>" alt="<s:text name=" item.loading "/>" />
	</div>
	
</body>

</html>