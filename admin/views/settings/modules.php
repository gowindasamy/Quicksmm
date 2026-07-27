
<div class="col-md-8">
  <div class="panel panel-default">
    <div class="panel-body">
      <form id="ipForm" action="" method="post" enctype="multipart/form-data">
  
  
  <?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ipType = ($_POST['ip_type'] == 1 || $_POST['ip_type'] == 2) ? $_POST['ip_type'] : null;
$ip = filter_var($_POST['ip'], FILTER_SANITIZE_STRING);
$update = $conn->prepare("UPDATE admins SET ip_type = :ipType, ip = :ip");
$update->execute(array("ipType" => $ipType, "ip" => $ip));}
$adminQuery = $conn->prepare("SELECT * FROM admins");
$adminQuery->execute();
$admin = $adminQuery->fetch(PDO::FETCH_ASSOC);
?>
  <div class="form-group">
          <label for="" class="control-label">IP Security</label>
          <select class="form-control" name="ip_type">
            <option value="1" <?= $admin["ip_type"] == 1 ? "selected" : null; ?>>Disabled</option>
            <option value="2" <?= $admin["ip_type"] == 2 ? "selected" : null; ?>>Enabled</option>
          </select>
        </div>
        <div class="form-group">
          <label for="" class="control-label">Your IPv6 Address</label>
          <input type="text" class="form-control" name="ip" value="<?= $admin["ip"] ?>">
        </div>
 <hr>
  
<div class="form-group">
          <label for="" class="control-label">Affiliate System</label>
          <select class="form-control" name="affiliates_status">
         
          <option value="1"  <?= $settings["referral_status"] == 1 ? "selected" : null; ?>>Disabled</option>
          <option value="2" <?= $settings["referral_status"] == 2 ? "selected" : null; ?>>Enabled</option>
          
          </select>
        </div>
  <div class="form-group">
          <label for="" class="control-label">Commission rate, %</label>
          <input type="number" class="form-control" name="commision" value="<?=$settings["referral_commision"]?>">
        </div>
        <div class="form-group">  
          <label for="" class="control-label">Minimum payout</label>
          <input type="number" class="form-control" name="minimum" value="<?=$settings["referral_payout"]?>">
        </div>
        
<hr>
<div class="childpanels-settings">
<div class="form-group">
          <label for="" class="control-label">Child Panel Selling</label>
          <select class="form-control" name="selling">
         
<option value="1"  <?= $settings[""] == 1 ? "selected" : null; ?>>Disabled</option>
          <option value="2" <?= $settings["childpanel_selling"] == 2 ? "selected" : null; ?>>Enabled</option>
          
          </select>
        </div>
        

<div class="form-group">
<label for="" class="control-label">Child Panel Price</label>
<input type="text" class="form-control" name="price" value="<?=$settings["childpanel_price"]?>">
</div> 


</div>

<hr>


<div class="form-group">
          <label for="" class="control-label">Free Balance</label>
          <select class="form-control" name="freebalance">
         
                    <option value="1"  <?= $settings["freebalance"] == 1 ? "selected" : null; ?>>Disabled</option>
          <option value="2" <?= $settings["freebalance"] == 2 ? "selected" : null; ?>>Enabled</option>
          
          </select>
        </div>
<div class="form-group">
          <label for="" class="control-label">Free Amount</label>
          <input type="text" class="form-control" name="freeamount" value="<?=$settings["freeamount"]?>">
        </div> 
<hr>
<div class="form-group">
          <label for="" class="control-label">Video Promotion</label>
          <select class="form-control" name="promotion">
         
                    <option value="1"  <?= $settings["promotion"] == 1 ? "selected" : null; ?>>Disabled</option>
          <option value="2" <?= $settings["promotion"] == 2 ? "selected" : null; ?>>Enabled</option>
          
          </select>
        </div>

<div class="form-group">
          <label for="" class="control-label">Updates Logs</label>
          <select class="form-control" name="updates_show">
         
                    <option value="1"  <?= $general["updates_show"] == 1 ? "selected" : null; ?>>Disabled</option>
          <option value="2" <?= $general["updates_show"] == 2 ? "selected" : null; ?>>Enabled</option>
          
          </select>
        </div>




<hr>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $google_status = $_POST["google_login"];
    $client_id = $_POST["client_id"];
    $client_secret = $_POST["client_secret"];
    $google_login_json = json_encode(array(
        "client_id" => $client_id,
        "client_secret" => $client_secret,
        "status" => $google_status
    ));
        $update = $conn->prepare("UPDATE settings SET google_login = :google_login");
        $update->bindParam(':google_login', $google_login_json);
        $update->execute();}
$google_login = json_decode($settings["google_login"],true);
?>
<div class="form-group">
          <label for="" class="control-label">Google Login</label>
          <select class="form-control" name="google_login">
          <option value="1"  <?= $google_login["status"] == 1 ? "selected" : null; ?>>Disabled</option>
          <option value="2" <?= $google_login["status"] == 2 ? "selected" : null; ?>>Enabled</option>
          </select>
        </div>
        <div class="form-group">
          <label for="" class="control-label">Client Id</label>
          <input type="text" class="form-control" name="client_id" value="<?=$google_login["client_id"]?>">
        </div>
        <div class="form-group">
          <label for="" class="control-label">Client Secret</label>
          <input type="text" class="form-control" name="client_secret" value="<?=$google_login["client_secret"]?>">
        </div>
<hr>
        <center><button type="submit" class="btn btn-primary">Save Changes</button></center>
      </form>
      
    </div>
  </div>
</div>

