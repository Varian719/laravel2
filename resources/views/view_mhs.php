<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>View Mahasiswa</title>
	<style>
	/* General Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 20px;
}

a {
  color: #333;
  text-decoration: none;
  padding: 5px 10px;
  margin: 5px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

a:hover {
  background-color: #ddd;
}

h2 {
  text-align: center;
  margin-bottom: 20px;
}

/* Search Form Styles */
#searchForm {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 20px;
}

#searchInput {
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
  font-size: 16px;
}

#searchForm button {
  margin-left: 10px;
  background-color: #333;
  color: white;
  padding: 10px 15px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Table Styles */
table {
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 20px;
}

th,  
 td {
  padding: 10px;
  text-align: left;
  border: 1px solid #ddd;
}

th {
  background-color:  
 #f2f2f2;
  font-weight: bold;
}

td:first-child,
th:first-child {
  width: 5%;
}

.center {
  text-align: center;
}	
	</style>
</head>
<body>

<h2 align="center"> DATA Mahasiswa </h2>

<!-- Search Form -->
<form id="searchForm" style="text-align: center;">
	<input type="text" id="searchInput" placeholder="Search by name..." size="50">
	<button type="submit">!Search</button>
</form>

<!-- Table to Display Data -->
<table border="1" width="80%" align="center">
	<thead>
		<tr>
      <th width="5%">ID</th>
			<th width="20%">Nama</th>
			<th width="10%">Nim</th>
      <th width="10%">Kelas</th>
      <th width="10%">Prodi</th>
      <th width="20%">Foto Mhs</th>
	
		</tr>
	</thead>
	<tbody id="dataTable">
		<!-- Data will be populated here -->
	</tbody>
</table>

<script>
// Function to fetch data from the API
async function fetchData(searchTerm = '') {
	const response = await fetch(`/api/mhs?nama=${searchTerm}`);
	const result = await response.json();

	const tableBody = document.getElementById('dataTable');
	tableBody.innerHTML = ''; // Clear previous data

	if (result.status && result.data && result.data.data.length > 0) {
		result.data.data.forEach(mhs => {
			const tr = document.createElement('tr');
			tr.innerHTML = `
				<td align="center">${mhs.id}</td>
				<td align="center">${mhs.nama}</td>
        <td align="center">${mhs.nim}</td>
				<td align="center">${mhs.kelas}</td>
        <td align="center">${mhs.prodi}</td>
        <td align="center">${mhs.fotomhs}</td>
	
			`;
			tableBody.appendChild(tr);
		});
	} else {
		tableBody.innerHTML = '<tr><td colspan="4" align="center">No data found</td></tr>';
	}
}

// Event listener for the search form
document.getElementById('searchForm').addEventListener('submit', function(e) {
	e.preventDefault();
	const searchTerm = document.getElementById('searchInput').value;
	fetchData(searchTerm);
});

// Initial data load
fetchData();
</script>
</body>
</html>
