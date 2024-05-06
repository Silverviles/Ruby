<%@ page import="com.happyman.Ruby.admin.dto.DashboardDTO" %><%--
  Created by IntelliJ IDEA.
  User: tharindu
  Date: 03/05/2024
  Time: 19:57
--%>
<% DashboardDTO dashboard = (DashboardDTO) request.getAttribute("summary"); %>
<div class="admin-grid-container">
    <div class="dashboard-grid-item">
        <div id="room_report">
            <h3>Room Summary</h3>
            <div class="dashboard-item">
                <p>Total number of rooms: <%=dashboard.getTotalRooms()%></p>
                <p>Available Rooms:<%=dashboard.getAvailableRooms()%> </p>
                <p>Unavailable Rooms:<%=dashboard.getUnavailableRooms()%> </p>
                <p>Total Villa Capacity:<%=dashboard.getVillaCapacity()%> </p>
            </div>
        </div>
        <button onclick="generatePDF()">Generate</button>
    </div>
    <div class="dashboard-grid-item">
        <h3>Restaurant Summary</h3>
        <div class="dashboard-item">
            <p>Registered Meals: <%=dashboard.getAllMeals()%></p>
            <p>Available Meals:<%=dashboard.getAvailableMeals()%> </p>
            <p>Unavailable Meals: <%=dashboard.getUnavailableMeals()%></p>
            <p>Total Restaurant Capacity:<%=dashboard.getRestaurantCapacity()%> </p>
            <p>Available Seats: <%=dashboard.getAvailableSeats()%></p>
            <p>Booked Seats:<%=dashboard.getBookedSeats()%> </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Packages Summary</h3>
        <div class="dashboard-item">
            <p>All Packages:<%=dashboard.getAllPackages()%> </p>
            <p>Available Packages:<%=dashboard.getAvailablePackages()%> </p>
            <p>Package with Highest Addons:<%=dashboard.getHighestAddonPackage()%> </p>
            <p>Available Addon Count:<%=dashboard.getAvailableAddons()%> </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Event Summary</h3>
        <div class="dashboard-item">
            <p>All Events:<%=dashboard.getAllEvents()%> </p>
            <p>Available Events:<%=dashboard.getAvailableEvents()%> </p>
            <p>Event with Highest Addons:<%=dashboard.getHighestEventPackage()%> </p>
            <p>Available Addon Count:<%=dashboard.getAvailableAddons()%> </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Customer Support Summary</h3>
        <div class="dashboard-item">
            <p>Feedback Count:<%=dashboard.getFeedbackCount()%> </p>
            <p>Pending Complaints: <%=dashboard.getPendingComplaints()%></p>
            <p>Resolved Complaints:<%=dashboard.getResolvedComplaints()%> </p>
            <p>5 Star Ratings:<%=dashboard.getHighRatings()%> </p>
            <p>1 Star Ratings:<%=dashboard.getLowRatings()%> </p>
        </div>
    </div>
    <div class="dashboard-grid-item">
        <h3>Employee Summary</h3>
        <div class="dashboard-item">
            <p>All Employees:<%=dashboard.getAllEmployees()%> </p>
            <p>Day shift Employees:<%=dashboard.getDayShift()%> </p>
            <p>Night Shift Employees: <%=dashboard.getNightShift()%></p>
            <p>Average Employee Salary: <%=dashboard.getAverageSalary()%></p>
            <p>Highest Employee Salary:<%=dashboard.getHighestSalary()%> </p>
        </div>
    </div>

    <script>
	    function generatePDF() {
		    const element = document.getElementById('room_report');

		    html2canvas(element).then(canvas => {
			    const imgData = canvas.toDataURL('image/png');

			    const imgWidth = 210;
			    const pageHeight = 295;
			    const imgHeight = canvas.height * imgWidth / canvas.width;
			    let heightLeft = imgHeight;
			    let position = 0;

			    const pdf = new jsPDF('p', 'mm');
			    pdf.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
			    heightLeft -= pageHeight;

			    while (heightLeft >= 0) {
				    position = heightLeft - imgHeight;
				    pdf.addPage();
				    pdf.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
				    heightLeft -= pageHeight;
			    }

			    pdf.save('generated.pdf');
		    });
	    }
    </script>
</div>
