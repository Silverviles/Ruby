<%--
  Created by IntelliJ IDEA.
  User: sdilr
  Date: 5/3/2024
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.happyman.Ruby.packages.dto.PackageDTO" %>

<% List<PackageDTO> packageAll = (List<PackageDTO>) request.getAttribute("Packages"); %>

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


<div class="body-content">

    <div class="filter">
        <div class="filter-header">
            <div class="filters" id="cp" onclick="functionCouple()">
                <button>Couple Packages</button>
            </div>
            <div class="filters" id="fp" onclick="functionFamily()">
                <button>Family Packages</button>
            </div>
            <div class="filters" id="bp" onclick="functionBusiness()">
                <button>Business Packages</button>
            </div>
            <div class="filters" id="lgp" onclick="functionLarge()">
                <button>Large-Group Packages</button>
            </div>
        </div>
    </div>

    <div class="package_container" id="allPkg">
        <% if(packageAll != null && !packageAll.isEmpty()){
            for(PackageDTO pkg : packageAll) { %>
        <div class="package-box" id="<%=pkg.getId()%>">
            <div class="package-name">
                <p><%= pkg.getPackageName()%> - <%= pkg.getPackageType()%> Package</p>
            </div>
            <div class="package-img">
                <img src="${pageContext.request.contextPath}/images/packages/Superior-room-Gallery-Layer-5.jpg"
                     alt="">
            </div>
            <div class="package-description descript"><%= pkg.getPackageDescription()%>
            </div>
            <div class="no-of-nights descript">For <%=pkg.getPackageNoOfNights()%> nights</div>
            <div class="price descript">LKR <%=pkg.getPackagePrice()%> for maximum <%=pkg.getMaxAdults()%>
                Adults.
            </div>
            <% if (!pkg.getPackageType().equals("COUPLE")) {%>
            <div class="descript">Kids should be below 12 years of age.</div>
            <%}%>
            <div class="select-package-btn">
                <button class="package-select" >Select Package</button>
            </div>
        </div>


        <%}
        }%>
    </div>

    <div class="package_container" id="couplePkg">
        <% if (packageAll != null && !packageAll.isEmpty()) {
            for (PackageDTO pkg : packageAll) {
                if (pkg.getPackageType().equalsIgnoreCase("couple")) {%>
        <div class="package-box">
            <div class="package-name">
                <p><%= pkg.getPackageName()%> - <%= pkg.getPackageType()%> Package</p>
            </div>
            <div class="package-img">
                <img src="${pageContext.request.contextPath}/images/packages/Superior-room-Gallery-Layer-5.jpg" alt="">
            </div>
            <div class="package-description descript"><%= pkg.getPackageDescription()%>
            </div>
            <div class="no-of-nights descript">For <%=pkg.getPackageNoOfNights()%> nights</div>
            <div class="price descript">LKR <%=pkg.getPackagePrice()%> for maximum <%=pkg.getMaxAdults()%> Adults.</div>
            <% if (!pkg.getPackageType().equals("COUPLE")) {%>
            <div class="descript">Kids should be below 12 years of age.</div>
            <%}%>
            <div class="select-package-btn">
                <button class="package-select" >Select Package</button>
            </div>

        </div>


        <%
                    }
                }
            }%>
    </div>

    <div class="package_container" id="familyPkg">
        <% if (packageAll != null && !packageAll.isEmpty()) {
            for (PackageDTO pkg : packageAll) {
                if (pkg.getPackageType().equalsIgnoreCase("family")) {%>
        <div class="package-box">
            <div class="package-name">
                <p><%= pkg.getPackageName()%> - <%= pkg.getPackageType()%> Package</p>
            </div>
            <div class="package-img">
                <img src="${pageContext.request.contextPath}/images/packages/Superior-room-Gallery-Layer-5.jpg" alt="">
            </div>
            <div class="package-description descript"><%= pkg.getPackageDescription()%>
            </div>
            <div class="no-of-nights descript">For <%=pkg.getPackageNoOfNights()%> nights</div>
            <div class="price descript">LKR <%=pkg.getPackagePrice()%> for maximum <%=pkg.getMaxAdults()%> Adults.</div>
            <% if (!pkg.getPackageType().equals("COUPLE")) {%>
            <div class="descript">Kids should be below 12 years of age.</div>
            <%}%>
            <div class="select-package-btn">
                <button class="package-select" >Select Package</button>
            </div>
        </div>


        <%
                    }
                }
            }
        %>
    </div>

    <div class="package_container" id="businessPkg">
        <% if (packageAll != null && !packageAll.isEmpty()) {
            for (PackageDTO pkg : packageAll) {
                if (pkg.getPackageType().equalsIgnoreCase("business")) {%>
        <div class="package-box">
            <div class="package-name">
                <p><%= pkg.getPackageName()%> - <%= pkg.getPackageType()%> Package</p>
            </div>
            <div class="package-img">
                <img src="${pageContext.request.contextPath}/images/packages/Superior-room-Gallery-Layer-5.jpg" alt="">
            </div>
            <div class="package-description descript"><%= pkg.getPackageDescription()%>
            </div>
            <div class="no-of-nights descript">For <%=pkg.getPackageNoOfNights()%> nights</div>
            <div class="price descript">LKR <%=pkg.getPackagePrice()%> for maximum <%=pkg.getMaxAdults()%> Adults.</div>
            <% if (!pkg.getPackageType().equals("COUPLE")) {%>
            <div class="descript">Kids should be below 12 years of age.</div>
            <%}%>
            <div class="select-package-btn">
                <button class="package-select" >Select Package</button>
            </div>

        </div>


        <%
                    }
                }
            }
        %>
    </div>

    <div class="package_container" id="largePkg">
        <% if (packageAll != null && !packageAll.isEmpty()) {
            for (PackageDTO pkg : packageAll) {
                if (pkg.getPackageType().equalsIgnoreCase("large_group")) {%>
        <div class="package-box">
            <div class="package-name">
                <p><%= pkg.getPackageName()%> - <%= pkg.getPackageType()%> Package</p>
            </div>
            <div class="package-img">
                <img src="${pageContext.request.contextPath}/images/packages/Superior-room-Gallery-Layer-5.jpg" alt="">
            </div>
            <div class="package-description descript"><%= pkg.getPackageDescription()%>
            </div>
            <div class="no-of-nights descript">For <%=pkg.getPackageNoOfNights()%> nights</div>
            <div class="price descript">LKR <%=pkg.getPackagePrice()%> for maximum <%=pkg.getMaxAdults()%> Adults.</div>
            <% if (!pkg.getPackageType().equals("COUPLE")) {%>
            <div class="descript">Kids should be below 12 years of age.</div>
            <%}%>
            <div class="select-package-btn">
                <button class="package-select" >Select Package</button>
            </div>

        </div>


        <%
                    }
                }
            }
        %>
    </div>

    <script>
        var selectButtons = document.querySelectorAll('.package-select');

        selectButtons.forEach(function (button) {
            button.addEventListener('click', function () {

                console.log('Button clicked!');
                var packageBox = button.closest('.package-box');
                console.log('Package box:', packageBox);

                var popupAddons = packageBox.querySelector('.popup-addons');
                console.log('Popup addons:', popupAddons);
                popupAddons.classList.toggle('hidden');
            });
        });
    </script>


</div>

<script>
    var allpkg = document.getElementById("allPkg");
    var couplepkg = document.getElementById("couplePkg");
    var familypkg = document.getElementById("familyPkg");
    var businesspkg = document.getElementById("businessPkg");
    var largepkg = document.getElementById("largePkg");

    allpkg.style.display = "block";
    couplepkg.style.display = "none";
    familypkg.style.display = "none";
    businesspkg.style.display = "none";
    largepkg.style.display = "none";

    function functionCouple() {
        allpkg.style.display = "none";
        couplepkg.style.display = "block";
        familypkg.style.display = "none";
        businesspkg.style.display = "none";
        largepkg.style.display = "none";
    }

    function functionFamily() {
        allpkg.style.display = "none";
        couplepkg.style.display = "none";
        familypkg.style.display = "block";
        businesspkg.style.display = "none";
        largepkg.style.display = "none";
    }

    function functionBusiness() {
        allpkg.style.display = "none";
        couplepkg.style.display = "none";
        familypkg.style.display = "none";
        businesspkg.style.display = "block";
        largepkg.style.display = "none";
    }

    function functionLarge() {
        allpkg.style.display = "none";
        couplepkg.style.display = "none";
        familypkg.style.display = "none";
        businesspkg.style.display = "none";
        largepkg.style.display = "block";
    }

</script>

<jsp:include page="../common/footer.jsp"/>

<script src="${pageContext.request.contextPath}/scripts/packages/package_slideshow.js"></script>

</body>
</html>


