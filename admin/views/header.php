<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="big5">
    <base href="<?= site_url() ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width">
    <title>
<?= $settings["site_name"] ?>
    </title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css">
    <link rel="stylesheet" type="text/css" href="ownsmmpanel/public/admin/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="ownsmmpanel/public/admin/style.css">
    <link rel="stylesheet" type="text/css" href="ownsmmpanel/public/admin/toastDemo.css">
	<link rel="stylesheet" type="text/css" href="ownsmmpanel/public/admin/tooltip.css">
	<link href="https://site-assets.fontawesome.com/releases/v6.5.1/css/all.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">
    <link rel="stylesheet" type="text/css" href="ownsmmpanel/public/admin/tinytoggle.min.css" rel="stylesheet">
 <link rel="stylesheet" href="ownsmmpanel/public/admin/iziToast.min.css">
  <script src="https://kit.fontawesome.com/f9fbee3ddf.js" crossorigin="anonymous"></script>
<script src="ownsmmpanel/public/admin/iziToast.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/mdbassit/FancySelect@latest/dist/fancyselect.min.js"></script>
  <link href="//gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
 <link rel="stylesheet" href="<?php echo site_url("ownsmmpanel/public/admin/css/fancyselect.css"); ?>">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/css/bootstrap-select.css">
<link rel="stylesheet" href="https://itsjavi.com/fontawesome-iconpicker/dist/css/fontawesome-iconpicker.min.css">
<link rel="stylesheet" href="ownsmmpanel/css/admin/image-picker.css">
<link href="ownsmmpanel/css/admin/main.css" type="text/css" rel="stylesheet">
<link rel="shortcut icon" type="image/ico" href="ownsmmpanel/css/admin/49e3d046636e06b2d82ee046db8e6eb9a2e11e16.png" />
<style>
    .clients-table,.product-card{border:1px solid #ddd}body.dark-mode .product-name,body.dark-mode .product-price{color:#dfe0e1}body.dark-mode .product-card{background-color:#ffffff07;border:1px solid #3f4149}body.dark-mode .clients-table,body.dark-mode .orders-table,body.dark-mode .services-table,body.dark-mode .table-responsive{border:1px solid #3f4149}body.dark-mode .panel-default .panel-heading{color:#dfe0e1!important}body.dark-mode .table-striped>tbody>tr:nth-of-type(odd){background-color:#f9f9f92b}.product-icon img{max-width:70px!important;height:70px!important}.product-name{font-size:14px!important}.product-card{display:flex;flex-direction:row!important;align-items:center;background-color:#fff;box-shadow:4px 6px 1px rgba(0,0,0,.05)!important;padding:10px;border-radius:1px!important;justify-content:space-between}body.dark-mode .toggle-track{background:#ffffff3d}.ft{float:right;color:#fff!important}@media(max-width:771px){.w2-100{width:100%}}.alert-info{color: #e5e5e5;background-color: #161a33a3;}.w-100{width:100%}.services-table{border:1px solid #dbdbdb}.services-table a:hover{color:#333}.modal-content{border-radius: 1px !important;}#buy-smm a,.btn-primary{cursor:pointer}#loading,.grid,.toggle,.toggle-track{display:flex}#enable-dark-mode,#enable-dark-mode2,#enable-light-mode,#enable-light-mode2{top:9px;right:75px;padding: 0px !important;width: 32px !important;height: 32px !important;display: flex;align-items: center;justify-content: center;z-index:2!important;font-size:18px;color:#fff}@media(max-width:778px){tr .fsb-select{max-width:280px}}.form-control{border:1px solid #ccc;box-sizing:border-box;font-size:1em;box-shadow:0 1px 1px rgba(0,0,0,.1);border-radius:1px}.fsb-list,select[disabled]+.fsb-select .fsb-list{margin-top:6px;border-radius:1px;max-height:280px}.fsb-option{padding:4px 10px;font-size:14px}.search-select.form-control.fsb-original-select{width:10%}.search-select-wrap .fsb-select{width:auto!important}.search-select-wrap .btn-default{margin-top:-10px}.search-select-wrap:before,.select option[value=""][disabled]{display:none}.fsb-original-select,.fsb-select{width:100%;height:34px;border-radius:1px;font-size:14px}.panel{border-radius:1px!important;box-shadow:4px 6px 1px rgba(0,0,0,.05)!important}.panel-footer{border-bottom-right-radius:1px!important;border-bottom-left-radius:1px!important}.services-import__header a{color:#777}.services-import__header .active a,.services-import__header a:hover{color:#333}.btn-default[data-dismiss=modal],.btn-default[data-dismiss=modal]:hover{background:linear-gradient(to right,#900 0,#bf3838 100%)!important;box-shadow:0 5px 15px -5px #900!important;border:1px solid #d90429!important}.btn-info,.btn-info:focus,.btn-info:hover,.note-editor .btn-default,.note-editor .btn-default:focus,.note-editor .btn-default:hover,td .btn-danger,td .btn-danger:focus,td .btn-danger:hover,td .btn-default,td .btn-default:focus,td .btn-default:hover,td .btn-primary,td .btn-primary:focus,td .btn-primary:hover{padding:5px 12px!important}.action-list .btn-default,.action-list .btn-default:focus,.action-list .btn-default:hover{padding:1px 5px!important;font-weight:500;font-size:1.25rem}.more-action .btn-primary{padding-bottom:26px!important}.btn,.btn-feedback{border-radius:1px!important}.btn-danger,.btn-danger:focus,.btn-danger:hover{border:1px solid #d90429!important;padding:8px 15px!important}.input-group-btn .btn-danger,.input-group-btn .btn-danger:focus,.input-group-btn .btn-danger:hover{padding:6px 12px!important}.btn.active.focus,.btn.active:focus,.btn.focus,.btn:active.focus,.btn:active:focus,.btn:focus{outline:0}.btn-primary{background:linear-gradient(to right,#10122d 0,#1a1d4e 100%)!important;box-shadow:0 5px 15px -5px #10122d;color:#fff;font-weight:500;border-radius:1px!important;font-size:1.25rem;padding:9px 20px;border:1px solid #10122d!important}.btn-default.active.focus,.btn-default.active:focus,.btn-default.active:hover,.btn-default:active.focus,.btn-default:active:focus,.btn-default:active:hover,.open>.dropdown-toggle.btn-default.focus,.open>.dropdown-toggle.btn-default:focus,.open>.dropdown-toggle.btn-default:hover{color:#fff}.btn-default,.btn-default:focus,.btn-default:hover,.btn-info,.btn-info:focus,.btn-info:hover{background:linear-gradient(to right,#0a5261 0,#3c7e7f 100%)!important;box-shadow:0 5px 15px -5px #0a5261;color:#fff;font-weight:500;border-radius:1px!important;font-size:1.25rem;cursor:pointer;padding:9px 22px;border:1px solid #0a5261}.btn-danger:hover,.btn-default:hover,.btn-info:hover,.btn-primary:hover{opacity:.8}.btn-default a{color:#fff!important}.feedback-input,select.feedback-input{border-radius:1px!important}.btn-default.active,.btn-default:active,.glyphicon-search:before,.open>.dropdown-toggle.btn-default,li.active>a.nav-link{color:#fff}.custom-search button.btn-default,.custom-search button.btn-default:focus,.custom-search button.btn-default:hover,.input-group-btn button.btn-default,.input-group-btn button.btn-default:focus,.input-group-btn button.btn-default:hover,.search-select-wrap button.btn-default,.search-select-wrap button.btn-default:focus,.search-select-wrap button.btn-default:hover{padding:7px 15px;border-bottom-right-radius:3px!important;border-top-right-radius:3px!important}.menu-sortable .btn-default,.menu-sortable .btn-default:focus,.menu-sortable .btn-default:hover{padding:6px 16px;border-radius:1px!important}.dd-list .btn-default,.dd-list .btn-default:focus,.dd-list .btn-default:hover{padding:3px 14px;border-radius:1px!important}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;font-weight:500}.list-group-item.active>.badge,.nav-pills>.active>a>.badge{background-color:#535353}.btn-group-sm>.btn,.btn-sm:hover{padding:5px 10px}#loading{position:fixed;justify-content:center;align-items:center;width:100%;height:100%;top:0;left:0;opacity:.7;background-color:#fff;z-index:99}#loading-image{z-index:100}#buy-smm{margin:8px 15px;font-size:15px;font-weight:400}a,body.dark-mode a{color:#878ea0;text-decoration:none}.btn-primary,.btn-primary:focus,.btn-primary:hover{background-color:#2176ff}.text-primary{color:#2176ff}body .checkAll-holder{padding:4px 7px 3px 5px;padding-bottom:5px!important;border:1px solid #ddd;line-height:0;z-index:2;position:relative;border-radius:4px;width:28px}.badge-success{background-color:#198754!important}.badge-danger,.badge-error{background-color:#dc3545!important}.badge-warning{background-color:#ffc107!important}.badge-primary{background-color:#5a5a5a}.badge-info{background-color:#001d6b!important;padding:2px 5px 3px!important;border-radius:1px!important}body.dark-mode a:focus,body.dark-mode a:hover{color:#c2c2c2}a:focus,a:hover{color:#000;text-decoration:underline}body.dark-mode .btn-primary,body.dark-mode .btn-primary.focus,body.dark-mode .btn-primary:focus{background-color:#2176ff;border-color:#2176ff;color:#fff}.list-group-item.active,.list-group-item.active:focus,.list-group-item.active:hover,body.dark-mode .list-group-item.active,body.dark-mode .list-group-item.active:focus,body.dark-mode .list-group-item.active:hover{z-index:2;color:#fff;background-color:#2176ff;border-color:#2176ff}body.dark-mode ul.thumbnails.image_picker_selector li .thumbnail{border:2px solid rgba(255,255,255,.3)}body.dark-mode ul.thumbnails.image_picker_selector li .thumbnail.selected{border:2px solid #3ccf4e}.thumbnail{background-color:transparent}.text-danger{color:#d90429}body.dark-mode .btn-danger{color:#fff;background-color:#d90429;border-color:#d90429}.btn-danger,.btn-danger:focus,.btn-danger:hover{background:linear-gradient(to right,#900 0,#bf3838 100%)!important;box-shadow:0 5px 15px -5px #900}.text-success{color:#3ccf4e}.btn-success{background-color:#3ccf4e}.btn-primary.active,.btn-primary:active,.open>.dropdown-toggle.btn-primary{color:#fff;background-color:#2176ff;border-color:#2176ff}.btn-primary.active.focus,.btn-primary.active:focus,.btn-primary.active:hover,.btn-primary:active.focus,.btn-primary:active:focus,.btn-primary:active:hover,.open>.dropdown-toggle.btn-primary.focus,.open>.dropdown-toggle.btn-primary:focus,.open>.dropdown-toggle.btn-primary:hover{color:#fff;background-color:#2176ff;border-color:#2176ff}body.dark-mode .btn-primary.active.focus,body.dark-mode .btn-primary.active:focus,body.dark-mode .btn-primary.active:hover,body.dark-mode .btn-primary:active.focus,body.dark-mode .btn-primary:active:focus,body.dark-mode .btn-primary:active:hover,body.dark-mode .open>.dropdown-toggle.btn-primary.focus,body.dark-mode .open>.dropdown-toggle.btn-primary:focus,body.dark-mode .open>.dropdown-toggle.btn-primary:hover{color:#fff;background-color:#2176ff;border-color:#2176ff}.hideextra{white-space:nowrap;overflow:scroll}.error-msg,.info-msg,.success-msg,.warning-msg{margin:10px 0;padding:10px;border-radius:3px}.info-msg{color:#059;background-color:#bef}.success-msg{color:#270;background-color:#dff2bf}.warning-msg{color:#9f6000;background-color:#feefb3}.error-msg{color:#d8000c;background-color:#ffbaba}.select,.toggle-track{background:#fff;cursor:pointer}.set-currency{border-left:5px solid #4c58ad;padding:10px;letter-spacing:1px;font-weight:700}.disabledDiv{pointer-events:none;opacity:.4}.select{padding:7px 40px 7px 12px;width:100%;border:1px solid #e8eaed;border-radius:5px;box-shadow:0 1px 3px -2px #9098a9;font-family:inherit;font-size:16px;transition:150ms}.select:required:invalid{color:#5a667f}.select option{color:#223254}.form-control:focus,.select:focus{outline:0;border-color:#07f;box-shadow:0 0 0 2px rgba(0,119,255,.2)}.select:hover+svg{stroke:#07f}.curr_conv{border:1px solid #ddd;border-radius:1px;box-shadow: 4px 6px 1px rgba(0,0,0,.05)!important;}.toggle{align-items:center;border-radius:100px;float:right;font-weight:700;margin-top:-3px}.toggle__input{clip:rect(0 0 0 0);clip-path:inset(50%);height:1px;overflow:hidden;position:absolute;white-space:nowrap;width:1px}.toggle__input:not([disabled]):active+.toggle-track,.toggle__input:not([disabled]):focus+.toggle-track{border:1px solid transparent;box-shadow:0 0 0 2px #121943}.toggle__input:disabled+.toggle-track{cursor:not-allowed;opacity:.7}.toggle-track{border:1px solid #bdbdbd;border-radius:100px;height:30px;position:relative;width:60px}.toggle-indicator{align-items:center;background:#e12e2e;border-radius:24px;bottom:2px;display:flex;height:24px;justify-content:center;left:2px;outline:transparent solid 2px;position:absolute;transition:.25s;width:24px}.button-1,.loader,.switch{position:relative}.checkMark{fill:#fff;height:20px;width:20px;opacity:0;transition:opacity .25s ease-in-out}.toggle__input:checked+.toggle-track .toggle-indicator{background:#35bb6b;transform:translateX(30px)}.toggle__input:checked+.toggle-track .toggle-indicator .checkMark{opacity:1;transition:opacity .25s ease-in-out}@media screen and (-ms-high-contrast:active){.toggle-track{border-radius:0}}.form__group{padding:.5rem}.form__controls{margin-top:.2rem}.form__input{width:100%}.form__submit{margin-top:.5rem;width:10rem;height:3rem}.grid{flex-wrap:wrap;justify-content:center}.grid__col{flex-basis:50%}.button-1{background-color:#ea4c89;border-radius:8px;border-style:none;box-sizing:border-box;color:#fff;cursor:pointer;display:inline-block;font-family:"Haas Grot Text R Web","Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;font-weight:500;height:40px;line-height:20px;list-style:none;margin:0;outline:0;padding:10px 16px;text-align:center;text-decoration:none;vertical-align:baseline;user-select:none;-webkit-user-select:none}.add-currency{background-color:#439a97;float:right}.loader,.loader:after{border-radius:50%;width:10em;height:10em}.loader{font-size:5px;text-indent:-9999em;border-top:.7em solid rgba(55,114,255,.2);border-right:.7em solid rgba(55,114,255,.2);border-bottom:.7em solid rgba(55,114,255,.2);border-left:.7em solid #3772ff;-webkit-transform:translateZ(0);-ms-transform:translateZ(0);transform:translateZ(0);-webkit-animation:1.1s linear infinite load8;animation:.8s linear infinite load8}body.dark-mode .loader{border-top:.7em solid rgba(255,22,84,.2);border-right:.7em solid rgba(255,22,84,.2);border-bottom:.7em solid rgba(255,22,84,.2);border-left:.7em solid #ff1654}@-webkit-keyframes load8{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes load8{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@media screen and (min-width :906px){.navbar-header{display:none}}.carousel-inner>.item>a>img,.carousel-inner>.item>img,.img-responsive,.thumbnail a>img,.thumbnail>img{display:block;max-width:40px;height:40px}ul.thumbnails.image_picker_selector li .thumbnail{padding:3px;border:2px solid #ddd;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none}ul.thumbnails.image_picker_selector li .thumbnail.selected{border:2px solid #3ccf4e;border-radius:4px;background:0 0}ul.thumbnails.image_picker_selector li{margin:0 4px 4px 0}.services-table{overflow-x:scroll;overflow-y:visible}.service-block__category,.service-block__header{width:calc(100% + 50px)}.category-visibility{width:14px;height:14px;border-radius:50%;display:inline-block;margin-right:10px;cursor:pointer}.category-visibility.category-visible{background-color:#008001;box-shadow:0 0 0 2px #95c794}.category-visibility.category-invisible{background-color:#fe0000;box-shadow:0 0 0 2px #f99394}.spinner_2{pointer-event:none;-webkit-animation:1.5s linear infinite rotate;animation:1.5s linear infinite rotate;width:3.2rem;height:3.2rem;transition:opacity .3s linear .15s;margin-right:10px}.spinner_2.large{width:4rem;height:4rem}.spinner_2.medium{width:2.5rem;height:2.5rem}.spinner_2.small{width:1.6rem;height:1.6rem}.spinner_2 .path_2{stroke:#007bff;stroke-linecap:round;-webkit-animation:1.5s ease-in-out infinite dash_1;animation:1.5s ease-in-out infinite dash_1}@-webkit-keyframes rotate{100%{transform:rotate(360deg)}}@keyframes rotate{100%{transform:rotate(360deg)}}@-webkit-keyframes dash_1{0%{stroke-dasharray:1,150;stroke-dashoffset:0}50%{stroke-dasharray:90,150;stroke-dashoffset:-35}100%{stroke-dasharray:90,150;stroke-dashoffset:-124}}@keyframes dash_1{0%{stroke-dasharray:1,150;stroke-dashoffset:0}50%{stroke-dasharray:90,150;stroke-dashoffset:-35}100%{stroke-dasharray:90,150;stroke-dashoffset:-124}}.spinner-border-sm{width:1rem;height:1rem;border-width:.2em}.spinner-border{display:inline-block;width:2rem;height:2rem;vertical-align:text-bottom;border:.25em solid currentColor;border-right-color:transparent;border-radius:50%;-webkit-animation:.75s linear infinite spinner-border;animation:.75s linear infinite spinner-border}@keyframes spinner-border{100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.img-responsive{max-height:calc(1em + 10px);max-width:100%;height:auto}.btn-group,.btn-group-vertical{position:relative;display:inline-block}@media (max-width:767px){.table-responsive .dropdown-menu{position:relative!important}}li>a.nav-link{color:#000}.navbar-nav li.active{background-color:none!important}.product-card{display:flex;flex-direction:column;align-items:center;background-color:#fff;box-shadow:0 2px 4px rgba(0,0,0,.25);padding:10px;border-radius:10px}.product-icon img{width:100%;max-width:80px;height:80px;object-fit:contain}.product-details{margin:20px 0;text-align:center}.product-name{font-size:24px;font-weight:700;margin:0;color:#333}.product-price{font-size:18px;color:#555;margin:10px 0}.buy-button{background-color:#007bff;color:#fff;border:none;border-radius:5px;padding:10px 20px;font-size:16px;cursor:pointer}.buy-button:hover{background-color:#0069d9;transform:scale(1.1)}@media (min-width:768px){.product-card{flex-direction:row;justify-content:space-between}.product-icon img{max-width:none;height:150px}.product-details{margin:0;text-align:left}.product-name{font-size:28px}.product-price{font-size:20px}}.switch{margin:12px auto;display:inline-block;vertical-align:top;width:56px;height:20px;padding:3px;border-radius:18px}.switch-input{position:absolute;top:0;left:0;opacity:0}.switch-label{position:relative;display:block;height:inherit;font-size:10px;text-transform:uppercase;background:#eceeef;border-radius:inherit;box-shadow:inset 0 1px 2px rgba(0,0,0,.12),inset 0 0 2px rgba(0,0,0,.15);-webkit-transition:opacity .15s ease-out;-moz-transition:opacity .15s ease-out;-o-transition:opacity .15s ease-out;transition:opacity .15s ease-out}.switch-label:after,.switch-label:before{position:absolute;top:50%;margin-top:-.5em;line-height:1;-webkit-transition:inherit;-moz-transition:inherit;-o-transition:inherit;transition:inherit}.switch-label:before{content:attr(data-off);right:11px;color:#aaa;text-shadow:0 1px rgba(255,255,255,.5)}.switch-label:after{content:attr(data-on);left:11px;color:#fff;text-shadow:0 1px rgba(0,0,0,.2);opacity:0}.switch-input:checked~.switch-label{background:#04e762;box-shadow:inset 0 1px 2px rgba(0,0,0,.15),inset 0 0 3px rgba(0,0,0,.2)}.switch-input:checked~.switch-label:before{opacity:0}.switch-input:checked~.switch-label:after{opacity:1}.switch-handle{position:absolute;top:4px;left:4px;width:18px;height:18px;background:#fff;border-radius:10px;box-shadow:1px 1px 5px rgba(0,0,0,.2);background-image:-webkit-linear-gradient(top,#fff 40%,#f0f0f0);background-image:-moz-linear-gradient(top,#fff 40%,#f0f0f0);background-image:-o-linear-gradient(top,#fff 40%,#f0f0f0);background-image:linear-gradient(to bottom,#fff 40%,#f0f0f0);-webkit-transition:left .15s ease-out;-moz-transition:left .15s ease-out;-o-transition:left .15s ease-out;transition:left .15s ease-out}.switch-handle:before{content:'';position:absolute;top:50%;left:50%;margin:-6px 0 0 -6px;width:12px;height:12px;background:#f9f9f9;border-radius:6px;box-shadow:inset 0 1px rgba(0,0,0,.02);background-image:-webkit-linear-gradient(top,#eee,#fff);background-image:-moz-linear-gradient(top,#eee,#fff);background-image:-o-linear-gradient(top,#eee,#fff);background-image:linear-gradient(to bottom,#eee,#fff)}.switch-input:checked~.switch-handle{left:34px;box-shadow:-1px 1px 5px rgba(0,0,0,.2)}.switch-green>.switch-input:checked~.switch-label{background:#4fb845}#enable-dark-mode,#enable-dark-mode2{position:absolute;border:1px solid #151b4f4f;border-radius:50%;background:linear-gradient(to right,#1b1e42b8 0,#373c93ad 100%)!important}#enable-light-mode,#enable-light-mode2{position:absolute;border:1px solid #bb974e4f;border-radius:50%;background:linear-gradient(to right,#ffbe00ed 0,#ffe111eb 100%)!important}body.dark-mode .feedback-container{background-color:#ffffff0f}body.dark-mode .feedback-heading{color:#e1e1e1}.fsb-original-select,body.dark-mode .fsb-list,body.dark-mode .fsb-select,select[disabled]+.fsb-select .fsb-list{background-color:#2e3036;border:1px solid rgba(103,107,118,.5)}body.dark-mode .fsb-option:focus,body.dark-mode .fsb-option:hover{background-color:#ffffff2e}.feedback-input,select.feedback-input{border:1px solid #ccc!important;box-shadow:0 1px 1px rgba(0,0,0,.1)!important}body.dark-mode .feedback-input,select.feedback-input{border:1px solid rgba(103,107,118,.5)!important}.list-group-item.active, .list-group-item.active:focus, .list-group-item.active:hover, body.dark-mode .list-group-item.active, body.dark-mode .list-group-item.active:focus, body.dark-mod .list-group-item.active:hover {background-color: #0c1141 !important;border-color: #1a237f !important;}@media(max-width:991px){.desktop{display:none}}@media(min-width:991px){li.drt{display:none}.mrt{display:flex;position:absolute;right:25px;top:6.5px;background:#777;width:36px;height:35px;border-radius:50%}.dropdown-toggle .fa-user:before{position:relative;top:6.5px;right:-10px}.nav .open>a,.nav .open>a:focus,.nav .open>a:hover{background:0 0!important}.mrt .dropdown-menu{top:120%;left:-120px}}.tt-check-circle:before {content: "b";border:1px solid;border-radius:100%;padding-bottom:1px;}@media(min-width:991px){.tt-check-circle:before{padding: 2px 2px 0px 1px;}}
    </style>
</head>
<body>
    <div class="container">
<div class="row">
<div id="loading">
<div class="loader">Loading...</div>
</div>
</div>
</div>
<body class="<?php if($admin["mode"]=="dark" ): echo "dark-mode" ; endif; ?>">
<nav class="navbar navbar-static-top  navbar-default">
<div class="container-fluid">
<div class="navbar-header" >
<?php $brand_logo = json_decode($ADMIN_CONSTANTS["brand_logo"]);?>
<img style="margin-bottom:-30px;margin-left:10px;" width="<?=$brand_logo->width?>" height="<?=$brand_logo->height?>" src="<?=$settings["site_logo"]?>">
<?php if ($admin["mode"] == "dark") : ?>
<a id="enable-light-mode2" href="javascript:void(0)"><i class="fas fa-sun"></i></a>
<?php else: ?>
<a id="enable-dark-mode2" href="javascript:void(0)"><i class="fas fa-moon"></i></a>
<?php endif; ?>
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
aria-expanded="false" aria-controls="navbar">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
<div id="navbar" class="collapse navbar-collapse">
<ul class="nav navbar-nav navbar-left-block">
<?php if ($admin["access"]["admin_access"]  && $_SESSION["msmbilisim_adminlogin"]) : ?>
<?php if ($admin["access"]["admin_access"]): ?>
<li class="<?php if(route(1) == "index"): echo 'active' ; endif; ?>">
<a class="ajax-link"
href="<?php echo site_url("admin") ?>"><i class="fa-duotone fa-grid-2"></i> DASHBOARD</a>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["users"]): ?>
<li class="" class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
aria-haspopup="true" aria-expanded="false"><i class="fa-duotone fa-users"></i> CLINTS <span class="caret"></span></a>

<ul class="dropdown-menu dropdown-max-height">
<li class="<?php if (route(1) == "clients") : echo 'active' ; endif; ?>"><a class="ajax-link"
href="<?php echo site_url("admin/clients") ?>"><span> CLIENTS LIST</span></a>
</li>
<li><a class="ajax-link" href="<?php echo site_url("admin/fund-add-history");?>"> FUND HISTORY</a></li>
<li><a class="ajax-link" href="<?php echo site_url("admin/special-pricing");?>"> SPECIAL PRICING</a></li>
</ul></li>
<?php endif; ?>


<?php if ($admin["access"]["admin_access"] && $admin["access"]["services"]): ?>

<li class="" class="dropdown">

<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
aria-haspopup="true" aria-expanded="false"><i class="fa-duotone fa-chart-tree-map"></i>
 SERVICES<span class="caret"></span></a>

<ul class="dropdown-menu dropdown-max-height">

<?php if ($admin["access"]["admin_access"] && $admin["access"]["services"]): ?>
<li class="<?php if (route(1) == "services") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/services") ?>"><span> SERVICES LIST</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["update-prices"]): ?>
<li class="<?php if (route(1) == "update-prices") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/update-prices") ?>"><span> UPDATE PRICES</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["bulk"]): ?>
<li class="<?php if (route(1) == "bulk") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/bulk") ?>"><span> BULK SERVICES EDITOR</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["bulk"]): ?>

<li class="<?php if (route(1) == "bulk") : echo 'active' ; endif; ?>"><a

class="ajax-link" href="<?php echo site_url("admin/category-sort") ?>"><span> CATEGORY SORT</span></a></li>
<?php endif; ?>


<?php if ($admin["access"]["admin_access"] && $admin["access"]["bulkc"]): ?>
<li class="<?php if (route(1) == "bulkc") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/bulkc") ?>"><span> BULK CATEGORY EDITOR</span></a></li>
<?php endif; ?>


<?php if ($admin["access"]["admin_access"] && $admin["access"]["synced-logs"]): ?>
<li class="<?php if (route(1) == "synced_logs") : echo 'active' ;endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/synced_logs") ?>"><span> SYMCED LOGS</span></a></li>
<?php endif; ?>

</ul></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["orders"]): ?>
<li class="" class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
aria-haspopup="true" aria-expanded="false"><i class="fa-solid fa-clock-rotate-left"></i> 
ORDERS<span class="caret"></span></a>
<ul class="dropdown-menu dropdown-max-height">

<?php if ($admin["access"]["admin_access"] && $admin["access"]["orders"]): ?>
<li class="<?php if (route(1) == "orders") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/orders") ?>"><span> ORDER LIST</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["tasks"]): ?>
<li class="<?php if (route(1) == "tasks") : echo 'active' ; endif; ?>"><a class="ajax-link" href="<?php echo site_url("admin/tasks") ?>"><span> <b>ORFER TASKS</b></span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["dripfeed"]): ?>
<?php if(countRow(["table"=>"orders","where"=>["dripfeed"=>2]])>0){   ?>
<li class="<?php if (route(1) == " dripfeed") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/dripfeed") ?>"><span>DRIP-FEEDS</span></a></li>
<?php

}else{
}
?>
<?php endif; ?>


<?php if(countRow(["table"=>"orders","where"=>["subscriptions_type"=>2]])>0){
?>
<li class="<?php if (route(1) == "subscriptions") : echo 'active' ; endif; ?>"><a
class="ajax-link" href="<?php echo site_url("admin/subscriptions") ?>"><span> SUBSCRIPTIONS</span></a></li>
<?php
 } else {

}
?>
</ul>
</li>
<?php endif; ?>


<?php if ($admin["access"]["admin_access"] && $admin["access"]["tickets"]): ?>
<li class="<?php if (route(1) == "tickets") : echo 'active' ; endif; ?>"><a class="ajax-link"
href="<?php echo site_url("admin/tickets") ?>"><span><i class="fa-duotone fa-comments-question"></i> TICKETS
<?php if(countRow(["table"=>"tickets","where"=>["client_new"=>2]])>0){

?><span class="badge" style="background-color:#cc9616 ">
<?=countRow(["table"=>"tickets","where"=>["client_new"=>2]]);?>
</span>
<?php
} else{
}
?>
</span></a>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["additionals"]): ?>
<li class="dropdown">
<a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true"
aria-expanded="false"><i class="fa-duotone fa-cube"></i> ADDITIONALS<span
class="caret"></span></a>

<ul class="dropdown-menu dropdown-max-height">

<?php if ($admin["access"]["admin_access"] && $admin["access"]["referral"]): ?>
<li class="<?php if (route(1) == "payouts" || route(1) == "referrals") : echo 'active' ; endif; ?>"><a
    class="ajax-link" href="<?php echo site_url("admin/referrals") ?>"><span> AFFILITES</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["broadcast"]): ?>
<li class="<?php if (route(1) == "broadcasts") : echo 'active' ; endif; ?>"><a
    class="ajax-link" href="<?php echo site_url("admin/broadcasts") ?>"><span> BROADCASTS</span></a>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["logs"]): ?>
<li class="<?php if (route(1) == "logs") : echo 'active' ; endif; ?>"><a class="ajax-link" href="<?php echo site_url("admin/logs") ?>"><span> LOGS</span></a>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["reports"]): ?>
<li class="<?php if (route(1) == "reports") : echo 'active' ; endif; ?>"><a class="ajax-link" href="<?php echo site_url("admin/reports") ?>"><span> REPORTS</span></a>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["coupon"]): ?>
<li class="<?php if (route(1) == "kuponlar") : echo 'active' ; endif; ?>"><a
    class="ajax-link" href="<?php echo site_url("admin/kuponlar") ?>"><span> COUPON CODE</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["child-panels"]): ?>
<li class="<?php if (route(1) == "child-panels") : echo 'active' ; endif; ?>"><a
    class="ajax-link" href="<?php echo site_url("admin/child-panels") ?>"><span> CHILD PANELS</span></a></li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["updates"]): ?>
<li class="<?php if (route(1) == "updates") : echo 'active' ; endif; ?>"><a class="ajax-link" href="<?php echo site_url("admin/updates") ?>"><span> UPDATES</span></a></li>
<?php endif; ?>

</ul>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["appearance"]): ?>
<li class="<?php if (route(1) == "appearance") : echo 'active' ; endif; ?>"><a class="ajax-link"
href="<?php echo site_url("admin/appearance") ?>"><span><i class="fa-duotone fa-code"></i> APPEARANCE</span></a>
</li>
<?php endif; ?>

<?php if ($admin["access"]["admin_access"] && $admin["access"]["users"]): ?>
<li class="<?php if (route(1) == "settings") : echo 'active' ; endif; ?>"><a class="ajax-link"
href="<?php echo site_url("admin/settings") ?>"><span><i class="fa-duotone fa-gear"></i> SETTINGS</span></a>
</li>
<?php endif; ?>


<div class="desktop">
<?php if ($admin["mode"] == "dark") : ?>
<a id="enable-light-mode" href="javascript:void(0)"><i class="fas fa-sun"></i></a>
<?php else: ?>
<a id="enable-dark-mode" href="javascript:void(0)"><i class="fas fa-moon"></i></a>
<?php endif; ?>
<span class="mrt">
<li class="dropdown">
<a class="ajax-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i style="color:#fff;font-size:18px;" class="fa fa-user" aria-hidden="true"></i>
</a>
<ul class="dropdown-menu">

<?php if ($admin["access"]["admin_access"] && $admin["access"]["manager"]): ?>
<li class="<?php if(route(1) == "manager") : echo "active" ; endif;?>"><a href="<?php echo site_url("admin/manager"); ?>" class="ajax-link"><i

    class="fad fa-shield-alt"></i> STAF</a></li>
<?php endif; ?>

<li role="separator" class="divider"></li>
<li class="<?php if (route(1) == "account") : echo 'active' ; endif; ?>"><a class="ajax-link"
href="<?php echo site_url("admin/account") ?>"><i class="fad fa-user"></i><span>
    ACCOUNT</span></a>
</li>
<li>
<a class="ajax-link" href="admin/logout"><i class="fad fa-sign-out-alt"></i> LOGOUT</a>
</li>
</ul>
</li></span></div>


<li class="drt dropdown">
<a class="ajax-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class="fad fa-user" aria-hidden="true"></i> MANAGE
<span class="caret"></span></a>
<ul class="dropdown-menu">

<?php if ($admin["access"]["admin_access"] && $admin["access"]["manager"]): ?>
<li class="<?php if(route(1) == "manager") : echo "active" ; endif;?>"><a href="<?php echo site_url("admin/manager"); ?>" class="ajax-link"><i

    class="fad fa-shield-alt"></i> STAF</a></li>
<?php endif; ?>

<li role="separator" class="divider"></li>
<li class="<?php if (route(1) == "account") : echo 'active' ; endif; ?>"><a class="ajax-link"
href="<?php echo site_url("admin/account") ?>"><i class="fad fa-user"></i><span>
    ACCOUNT</span></a>
</li>
<li>
<a class="ajax-link" href="admin/logout"><i class="fad fa-sign-out-alt"></i> LOGOUT</a>

</li>
</ul>
</li>

<?php endif; ?>

</ul>
    </div>

</div>
</nav>
