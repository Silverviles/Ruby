<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>
<%@ page import="com.happyman.Ruby.masterService.dao.Addon" %>
<% List<PackageDTO> packageAll = (List<PackageDTO>) request.getAttribute("Packages"); %>

<%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 3/14/2024
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Packages</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/packages/package.css">
    <script src="https://kit.fontawesome.com/20733750a5.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap"
          rel="stylesheet">
</head>
<body>

<jsp:include page="../common/header.jsp"/>

<div class="slideshow-container">

    <div class="slideshow">
        <img src="${pageContext.request.contextPath}/images/packages/Superior-room-Gallery-Layer-5.jpg" alt="">
        <div class="overlay"></div>
        <p>Every package is a journey, and we invite you to embark on yours.</p>
    </div>

    <div class="slideshow">
        <img src="${pageContext.request.contextPath}/images/packages/corp-inner-banner-experience-Bentota-beach.jpg"
             alt="">
        <div class="overlay"></div>
        <p style="width: auto;">Welcome to our exclusive package offerings at
            <br><span style="font-family: 'Vidaloka', serif;font-size: 70PX;width: auto;">HAPPY MAN VILLAGE!</span></p>
    </div>

    <div class="slideshow">
        <img src="${pageContext.request.contextPath}/images/packages/package1.jpg" alt="">
        <div class="overlay"></div>
        <p>Experience luxury redefined with our exclusive packages.</p>
    </div>

    <div class="slideshow">
        <img src="${pageContext.request.contextPath}/images/packages/pexels-pixabay-271643nnn.jpg" alt="">
        <div class="overlay"></div>
        <p>Discover a world of comfort and elegance with our premium packages.</p>
    </div>

    <div class="slideshow">
        <img src="${pageContext.request.contextPath}/images/packages/pexels-donald-tong-189296.jpg" alt="">
        <div class="overlay"></div>
        <p>Escape to blissful retreats with our handcrafted packages.</p>
    </div>

    <div class="slideshow">
        <img src="${pageContext.request.contextPath}/images/packages/corp-inner-banner-private-villas.jpg" alt="">
        <div class="overlay"></div>
        <p>Elevate your stay to new heights with our bespoke package offerings.</p>
    </div>


</div>

<script src="${pageContext.request.contextPath}/scripts/packages/package_slideshow.js"></script>

<div class="suggestion">
    Struggling to search?
    <i class="fas fa-arrow-right"></i>

</div>

<div>
    <p>Based on the information you provided, we suggest you <span>Package Name</span></p>
</div>

<div class="body-content">

    <div class="filter">
        <div class="filter-header">
            <span>Filter by</span>
            <div class="filters">

            </div>
        </div>
    </div>

    <div class="package_container">
        hhhhhhhhhh
        <% if(packageAll != null && !packageAll.isEmpty()){
            for(PackageDTO pkg : packageAll) { %>
                <div class="package-box">
                    <div class="package-name">
                        <p><%= pkg.getPackageName()%> - <%= pkg.getPackageType()%> Package</p>
                    </div>
                    <div class="package-img"></div>
                    <div class="package-description"><%= pkg.getPackageDescription()%></div>
                    <div class="select-package-btn"><button class="package-select">Select Package</button> </div>
                </div>
                <div class="popup-addons">
                    <p class="addon-list">Select Addons</p>
                    <div class="addon-table-container">
                        <table class="addon-table">
                            <% if(pkg.getAddonList() != null && !pkg.getAddonList().isEmpty()){
                                for(Addon addon : pkg.getAddonList()) { %>
                                    <tr>
                                        <td><%= addon.getAddonName()%></td>
                                    </tr>
                            <%}
                            }%>
                        </table>
                    </div>
                </div>
            <%}
        }%>
    </div>

</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>

