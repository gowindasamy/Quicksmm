<?php include 'header.php'; ?>
 <style>.container{padding-right:10px;padding-left:10px}@media (min-width:1200px){.container{width:1220px}}.panel-footer{background-color:#ffffff21}.panel-heading{padding:12px}.panel{border:1px solid #ddd}</style>
 
<div class="container">


<div class="col-lg-3 col-md-6" style="border-radius: 19px;" >
<div class="panel panel-green">
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"clients"]);?></div> </h4>
</div>
 <div>
<h5 >USERS</h5>
</div>
</div>
</div>
</div>
<a href="/admin/clients">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>

<div class="col-lg-3 col-md-6" style="border-radius: 19px;" >
<div class="panel panel-green" >
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"orders"]) ?></div> </h4>
</div>
 <div>
<h5 >ORDERS</h5>
</div>
</div>
</div>
</div>
<a href="/admin/orders">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>

<div class="col-lg-3 col-md-6" >
<div class="panel panel-green" >
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"tasks"]) ?></div> </h4>
</div>
 <div>
<h5 >REFILL ORDERS</h5>
</div>
</div>
</div>
</div>
<a href="/admin/tasks">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>
	
<div class="col-lg-3 col-md-6" >
<div class="panel panel-green">
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"tickets","where"=>["client_new"=>2]]) ?></div> </h4>
</div>
 <div>
<h5 >UNREAD TICKETS</h5>
</div>
</div>
</div>
</div>
<a href="/admin/tickets">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>	
        
<div class="col-lg-3 col-md-6" >
<div class="panel panel-green" >
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"payments","where"=>["payment_status"=>3]]) ?></div> </h4>
</div>
 <div>
<h5 >PAYMENTS</h5>
</div>
</div>
</div>
</div>
<a href="/admin/fund-add-history">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>	   
        
		
<div class="col-lg-3 col-md-6" >
<div class="panel panel-green" >
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"categories","where"=>["category_deleted"=>0]]) ?></div> </h4>
</div>
 <div>
<h5 >CATEGORIES</h5>
</div>
</div>
</div>
</div>
<a href="/admin/services">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>	
	
	
	
	
<div class="col-lg-3 col-md-6" >
<div class="panel panel-green" >
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"services","where"=>["service_deleted"=>0]]) ?></div> </h4>
</div>
 <div>
<h5 >SERVICES</h5>
</div>
</div>
</div>
</div>
<a href="/admin/services">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>	
	
	
<div class="col-lg-3 col-md-6" >
<div class="panel panel-green" >
<div class="panel-heading">
<div class="row">
<div class="col-xs-3" style="color:#222831;">

</div>
<div class="col-xs-9 text-right">
<div class="huge">
<h4>
<div><?php echo countRow(["table"=>"admin","where"=>["admin_type"=>2]]) ?></div> </h4>
</div>
 <div>
<h5 >STAFF</h5>
</div>
</div>
</div>
</div>
<a href="/admin/manager">
<div class="panel-footer" >
<span class="pull-left">VIEW MORE</span>
<span class="pull-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
<div class="clearfix"></div>
</div>
</a>
</div>
</div>		
	
		
	        
   
           
        
 <div class="col-lg-12 col-md-12">
            <div class="panel panel-default">
                <div class="panel-body" style="padding:0px;padding-bottom:10px;">
                    <div class=" row">
                    <div style="padding-left:20px;padding-right:20px;">
                    
                    <center><h3>MONTHLY PROFIT CHART</h3></center>
                    <canvas id="reportChart"></canvas></div>
                </div>
            </div>
        </div>
    </div>
    <?php
    $months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    $grossProfits = [];
    $netProfits = [];
    for ($month = 1; $month <= 12; $month++) {
        $grossProfitsData[] = monthCharge($month, $year, ["services" => $_POST["services"], "status" => $_POST["statuses"]]);
    }
    for ($month = 1; $month <= 12; $month++) {
        $netProfitsData[] = monthChargeNet($month, $year, ["services" => $_POST["services"], "status" => $_POST["statuses"]]);
    }
    foreach ($months as $monthIndex => $month) {
        $grossProfits[] = $grossProfitsData[$monthIndex];
        $netProfits[] = $netProfitsData[$monthIndex];
    }
    ?>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var ctx = document.getElementById('reportChart').getContext('2d');
        var reportChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: <?php echo json_encode($months); ?>,
                datasets: [{
                    label: 'Gross Profit',
                    backgroundColor: 'rgba(255, 99, 132, 0.5)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1,
                    data: <?php echo json_encode($grossProfits); ?>
                }, {
                    label: 'Net Profit',
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    data: <?php echo json_encode($netProfits); ?>
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>
<br>
	<br>
	<br>
    
<div class="col-lg-12 mg-t-30 mg-b-30">
                <div id="chart"></div>
            </div>
<div class="modal modal-center fade" id="confirmChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
   <div class="modal-dialog modal-dialog-center" role="document">
      <div class="modal-content">
         <div class="modal-body text-center">
            <h4>Are you sure you want to proceed ?</h4>
            <div align="center">
               <a class="btn btn-primary" href="" id="confirmYes">Yes</a>
               <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
            </div>
         </div>
      </div>
   </div>
</div>
  <div class="modal fade" id="modalDiv" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg" role="document">
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
         <h4 class="modal-title" id="modalTitle"></h4>
       </div>
       <div id="modalContent">
       </div>
     </div>
   </div>
  </div>
  
<?php include 'footer.php'; ?>
