<style>
.sidebar {
  position: fixed;
  top: 60px;
  left: 0;
  bottom: 0;
  width: 300px;
  z-index: 996;
  transition: all 0.3s;
  padding: 20px;
  overflow-y: auto;
  scrollbar-width: thin;
  scrollbar-color: #aab7cf transparent;
  box-shadow: 0px 0px 20px rgba(1, 41, 112, 0.1);
  background-color: #fff;
}

@media (max-width: 1199px) {
  .sidebar {
    width: 200px; /* Shrink sidebar width */
    padding: 10px; /* Adjust padding */
  }
  #main{
    padding-left:220px;
  }
  .sidebar-nav .nav-link span {
  }
  .sidebar-nav .nav-link i {
    margin-right: 0; /* Adjust icon margin */
  }
  .toggle-sidebar-btn {
    display: block;
  }
}

@media (max-width: 768px) {
  .sidebar {
    width: 150px; /* Shrink sidebar width */
    padding: 10px; /* Adjust padding */
  }
  #main{
    padding-left:170px;
  }
  .sidebar-nav .nav-link span {
  }
  .sidebar-nav .nav-link i {
    margin-right: 0; /* Adjust icon margin */
  }
  .toggle-sidebar-btn {
    display: block;
  }
}

@media (max-width: 400px) {
  .sidebar {
    width: 80px; /* Shrink sidebar width */
    padding: 10px; /* Adjust padding */
  }
  #main{
    padding-left:90px;
  }
  
  .sidebar-nav .nav-link span {
    font-size: 10px;
    margin-left: -15px;
  }
  .sidebar-nav .nav-link i {
    margin-right: 0; /* Adjust icon margin */
    display: none !important;

  }
  .toggle-sidebar-btn {
    display: block;
  }
}

.sidebar::-webkit-scrollbar {
  width: 5px;
  height: 8px;
  background-color: #fff;
}

.sidebar::-webkit-scrollbar-thumb {
  background-color: #aab7cf;
}

@media (min-width: 1200px) {
  #main,
  #footer {
    margin-left: 300px;
  }
  .toggle-sidebar-btn {
    display: none;
  }
}

.toggle-sidebar #main,
.toggle-sidebar #footer {
  margin-left: 0;
}

.toggle-sidebar .sidebar {
  left: -300px;
}

.toggle-sidebar-btn {
  display: none;
  position: fixed;
  top: 20px;
  left: 20px;
  z-index: 997;
  background: #4154f1;
  color: #fff;
  border: none;
  padding: 10px 15px;
  cursor: pointer;
  border-radius: 4px;
}

.sidebar-nav {
  padding: 0;
  margin: 0;
  list-style: none;
}

.sidebar-nav li {
  padding: 0;
  margin: 0;
  list-style: none;
}

.sidebar-nav .nav-item {
  margin-bottom: 5px;
}

.sidebar-nav .nav-heading {
  font-size: 11px;
  text-transform: uppercase;
  color: #899bbd;
  font-weight: 600;
  margin: 10px 0 5px 15px;
}

.sidebar-nav .nav-link {
  display: flex;
  align-items: center;
  font-size: 15px;
  font-weight: 600;
  color: #4154f1;
  transition: 0.3s;
  background: #f6f9ff;
  padding: 10px 15px;
  border-radius: 4px;
}

.sidebar-nav .nav-link i {
  font-size: 16px;
  margin-right: 10px;
  color: #4154f1;
}

.sidebar-nav .nav-link.collapsed {
  color: #012970;
  background: #fff;
}

.sidebar-nav .nav-link.collapsed i {
  color: #899bbd;
}

.sidebar-nav .nav-link:hover {
  color: #4154f1;
  background: #f6f9ff;
}

.sidebar-nav .nav-link:hover i {
  color: #4154f1;
}

.sidebar-nav .nav-link .bi-chevron-down {
  margin-right: 0;
  transition: transform 0.2s ease-in-out;
}

.sidebar-nav .nav-link:not(.collapsed) .bi-chevron-down {
  transform: rotate(180deg);
}

.sidebar-nav .nav-content {
  padding: 5px 0 0 0;
  margin: 0;
  list-style: none;
}

.sidebar-nav .nav-content a {
  display: flex;
  align-items: center;
  font-size: 14px;
  font-weight: 600;
  color: #012970;
  transition: 0.3s;
  padding: 10px 0 10px 40px;
  transition: 0.3s;
}

.sidebar-nav .nav-content a i {
  font-size: 6px;
  margin-right: 8px;
  line-height: 0;
  border-radius: 50%;
}

.sidebar-nav .nav-content a:hover,
.sidebar-nav .nav-content a.active {
  color: #4154f1;
}

.sidebar-nav .nav-content a.active i {
  background-color: #4154f1;
}


</style>

<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
        <a class="nav-link " href="index.php">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="add_data.php">
          <i class="bi bi-grid"></i>
          <span>Add Data</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="add_bulk_data.php">
          <i class="bi bi-grid"></i>
          <span>Add Bulk Data</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="view_pending.php">
          <i class="bi bi-grid"></i>
          <span>List Pending</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="view_sent.php">
          <i class="bi bi-grid"></i>
          <span>Sent Message</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="view_invalid.php">
          <i class="bi bi-grid"></i>
          <span>Invalid Messages</span>
        </a>
      </li>

    </ul>

  </aside>