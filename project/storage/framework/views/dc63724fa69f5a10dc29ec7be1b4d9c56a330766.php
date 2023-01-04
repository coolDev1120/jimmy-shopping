<?php $__env->startSection('styles'); ?>

    <style>
        .field_title {
            text-align: left;
            margin-top: 10px;
        }
        .field_title span {
            font-size: 24px;
        }
        .user-dashbord .user-profile-details .account-info .edit-info-area .edit-info-area-form .input-field {
            border: 1px solid black!important;
            padding: 0 20px!important;
        }
        .user-dashbord .user-profile-details .account-info .edit-info-area .edit-info-area-form .input-field:hover {
            border: 1px solid black!important;
        }
        .user-dashbord .user-profile-details .account-info .edit-info-area .edit-info-area-form .input-field:focus {
            border: 1px solid black!important;
        }
        .upload-file input {
            display: none;
        }
        .upload-file .submit-btn {
            padding: 15px;
        }
        .hide {
            display: none;
        }
    </style>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>      

<section class="user-dashbord">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
            <div class="user-profile-details">
                <div class="account-info">
                    <div class="header-area">
                        <h4 class="title">
                            Quote your product
                        </h4>
                    </div>
                    <div class="edit-info-area">

                        <div class="body">
                            <div class="edit-info-area-form">
                                <div class="gocover" style="background: url(<?php echo e(asset('assets/images/'.$gs->loader)); ?>) no-repeat scroll center center rgba(45, 45, 45, 0.5);">
                                </div>
                                <form id="userform" action="<?php echo e(route('user-quote-upload')); ?>" method="POST" enctype="multipart/form-data">

                                    <?php echo e(csrf_field()); ?>


                                    <?php echo $__env->make('includes.admin.form-both', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                                    
                                    <div class="row">
                                        <div class="col-lg-6 col-sm-12 col-12">
                                            <div class="row">
                                                <div class="col-lg-4 field_title">
                                                    <span> Your Email: </span>
                                                </div>
                                                <div class="col-lg-8">
                                                    <input name="customer_email" type="email" class="input-field" placeholder="Input your email address"  value="<?php echo e(Auth::check()? Auth::user()->email : ''); ?>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-sm-12 col-12">
                                            <div class="row">
                                                <div class="col-lg-4 field_title">
                                                    <span> Your Phone: </span>
                                                </div>
                                                <div class="col-lg-8">
                                                    <input name="customer_phone" type="text" class="input-field" placeholder="Input your phone number"   value="<?php echo e(Auth::check()? Auth::user()->phone : ''); ?>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-6 col-sm-12 col-12">
                                            <div class="row">
                                                <div class="col-lg-4 field_title">
                                                    <span> Your Name: </span>
                                                </div>
                                                <div class="col-lg-8">
                                                    <input name="customer_name" type="text" class="input-field" placeholder="Input your name"  value="<?php echo e(Auth::check()? Auth::user()->name : ''); ?>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-sm-12 col-12">
                                            <div class="row">
                                                <div class="col-lg-4 field_title">
                                                    <span> Country: </span>
                                                </div>
                                                <div class="col-lg-8">
                                                    <select class="form-control ship_input" name="customer_country" style="margin-top: 10px;">
														<?php echo $__env->make('includes.countries', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
													</select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="quotes_div">
                                        <div class="row">
                                            <div class="col-lg-5 col-sm-12 col-12">
                                                <input name="quote_link[]" type="text" class="input-field" placeholder="link of item" >
                                            </div>
                                            <div class="col-lg-2 col-sm-12 col-12">
                                                <input name="quote_name[]" type="text" class="input-field" placeholder="name of item" >
                                            </div>
                                            <div class="col-lg-2 col-sm-12 col-12">
                                                <input name="quote_color_size[]" type="text" class="input-field" placeholder="color, size" >
                                            </div>
                                            <div class="col-lg-2 col-sm-12 col-12">
                                                <input name="quote_qty[]" type="text" class="input-field" placeholder="qty" >
                                            </div>
                                            <div class="col-lg-1 col-sm-12 col-12">
                                                <div class="file-upload-area">
                                                    <div class="upload-file">
                                                        <input id="fileUpload1" type="file" name="photo[]" class="upload">
                                                        <span class="submit-btn" onClick="document.getElementById('fileUpload1').click();">Image</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row hide" id="hidden_quote">
                                            <div class="col-lg-5 col-sm-12 col-12">
                                                <input name="quote_link[]" type="text" class="input-field" placeholder="link of item" >
                                            </div>
                                            <div class="col-lg-2 col-sm-12 col-12">
                                                <input name="quote_name[]" type="text" class="input-field" placeholder="name of item" >
                                            </div>
                                            <div class="col-lg-2 col-sm-12 col-12">
                                                <input name="quote_color_size[]" type="text" class="input-field" placeholder="color, size" >
                                            </div>
                                            <div class="col-lg-2 col-sm-12 col-12">
                                                <input name="quote_qty[]" type="text" class="input-field" placeholder="qty" >
                                            </div>
                                            <div class="col-lg-1 col-sm-12 col-12">
                                                <div class="file-upload-area">
                                                    <div class="upload-file">
                                                        <input id="fileUpload" type="file" name="photo[]" class="upload">
                                                        <span class="submit-btn" onClick="document.getElementById('fileUpload').click();">Image</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <span class="btn btn-success" onClick="add_more_quote_fields()"> <i class="fas fa-plus"></i> Add more fields </span>
                                    
                                    <input id="quotes_count" type="hidden" name="count" value="1">

                                    <div class="form-links" style="text-align: center;">
                                        <button class="submit-btn" type="submit" style="width: 180px;"> Request this quote </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>
  </section>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>

    <script>
        var count = 1;
        function add_more_quote_fields()
        {
            var $quotes_array = $("#quotes_div");
            count++;
            console.log(count);
            $('#hidden_quote').find("input[type='file']").attr('id','fileUpload'+count);
            $('#hidden_quote').find(".submit-btn").attr('onClick',"document.getElementById('fileUpload"+ count +"').click();");

            var $clone = $('#hidden_quote').clone(true).removeClass('hide');
		    $quotes_array.append($clone);
            $("#quotes_count").val(count);
        }

    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>