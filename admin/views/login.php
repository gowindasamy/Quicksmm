<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>OwnSMMPanel</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
<style>
    @charset "utf-8";#container,.box,.form-box{width:100%;display:flex}.form-box,.ic-account{position:relative;box-shadow:rgba(0,0,0,.05) 0 6px 24px 0,rgb(0 22 105 / 8%) 0 0 0 1px}#container,.box,.form-box,.input-field{display:flex}*{box-sizing:border-box;margin:0;padding:0}html{font-size:16px}body{font-family:Arial,sans-serif}#container{justify-content:center;align-items:center;position:relative;height:100vh;padding:10px;overflow:hidden scroll}@media (min-width:991px){.box{min-width:335px;padding-bottom:20px}}.box{justify-content:center;align-items:center;position:relative;max-width:310px;height:auto;margin:auto}.form-box{flex-direction:column;justify-content:center;align-items:center;z-index:999;padding:25px;border-radius:4px;background-color:#fff}
    
    .ic-account{width:95px;height:95px;border-radius:50%;background-color:rgba(255,255,255,.99);background-position:center;background-size:60px;background-repeat:no-repeat;margin-bottom:-55px;top:-65px;border:1px solid rgba(255,255,255,.5)}.login-form-btn,.login-form-input{border:none;height:50px;width:100%;outline:0}.login-form-input{padding-left:8px;background-color:rgb(255 255 255 / 0%);display:flex;align-items:center;color:#10122d;font-size:1rem}.input-field i, .login-form-btn {background: linear-gradient(to right, #10122d 0, #1a1d4e 100%) !important;box-shadow: 0 5px 15px -5px #10122d;}.alert,.input-field,.text,.text a{color:#fff}.two_factor_input::placeholder{font-size:13px;color:#10122db5;}input::placeholder{color:#10122db5;}.login-form-btn{font-weight:500;margin:20px auto 10px;border-radius:5px;color:#fff;font-size:1.25rem;cursor:pointer}.form-check-input:focus,.input-field{box-shadow:rgba(0,0,0,.05) 0 6px 24px 0,rgb(0 22 105 / 8%) 0 0 0 1px}.text{margin:0;padding:0;font-size:14px;text-align:center}.input-field:hover,.login-form-btn:hover,.text a:hover{opacity:.8}.input-field{align-items:center;width:100%;height:46px;margin:18px auto;border-radius:5px;font-size:1rem;outline:0;overflow:hidden}.input-field i{border-top-left-radius:5px;border-bottom-left-radius:5px;padding:17px}.form-check-input{border:1px solid;background-color:rgba(255,255,255,.25)}.form-check{margin-left:24%}.form-check-input:focus{border:1px solid}.form-check-input:checked{background:#10122d;border:1px solid}.alert{border-radius:5px;margin-top:5px;margin-bottom:-3px;border:1px solid #ff707f;background:linear-gradient(to right,#f53e31 0,#eb1661 100%)!important}.form-check-input{color: #b5b5b5;}.fa-bolt:before,.fa-zap:before {content: "\f0e7";position:absolute;top:23%;left:24%;font-size:54px;color:#10122d;}#container {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  width: 100%;
  height: 100vh;
  padding: 15px;
  background-image: linear-gradient(45deg, #000000, #000000, #000000, #000000);
  overflow: hidden scroll;
}</style>
    
  </head>
  
  <body>
    <div id="container">
      <div class="box">
        <div class="form-box">

<?php if( $success ): ?>
<div class="alert alert-success"><?php echo $successText; ?></div>

<?php endif; ?>
<?php if( $error ): ?>
<div class="alert alert-danger"><?php echo $errorText; ?></div>
<?php endif; ?>
<form name="login-form" action="#" method="post">
    <div class"input-group">
        <div class="input-field">
            <i class="fa-solid fa-user"></i>
<input class="login-form-input" type="username" name="username" placeholder="Enter Username..." required>
</div></div>
<div class"input-group">
        <div class="input-field">
            <i style="padding:17px 16px;" class="fa-solid fa-key"></i>
<input class="login-form-input" type="password" name="password"  placeholder="Password" required>
</div></div>
<div class"input-group">
        <div class="input-field">
           <i class="fa-solid fa-unlock"></i>
<input class="login-form-input two_factor_input" type="number" name="two_factor_code"  placeholder="Enter 2fa Code (If Setup)">
</div></div>
<div class="form-check">
<input type="checkbox" class="form-check-input" name="remember"id="exampleCheck1">
<label class="form-check-label" for="exampleCheck1" style="color:#10122d">Remember me</label>
</div>
<button class="login-form-btn" type="submit"><i style="margin-right:5px;font-size:17px;"class="fa-sharp fa-solid fa-shield"></i>Login</button>

          </form>
        </div>
      </div>
    </div>
  </body>
</html>