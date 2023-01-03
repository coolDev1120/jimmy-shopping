<?php $__env->startSection('content'); ?>

	<?php if($ps->slider == 1): ?>

		<?php if(count($sliders)): ?>

			<?php echo $__env->make('includes.slider-style', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php endif; ?>
	<?php endif; ?>

	<?php if($ps->slider == 1): ?>
		<!-- Hero Area Start -->
		<section class="hero-area">
			<div class="">
				<div class="row">
					<div class="col-lg-12 decrease-padding">
							<?php if($ps->slider == 1): ?>
							<?php if(count($sliders)): ?>
								<div class="hero-area-slider">
									<div class="slide-progress"></div>
									<div class="intro-carousel">
										<?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
											<div class="intro-content <?php echo e($data->position); ?>" style="background-image: url(<?php echo e(asset('assets/images/sliders/'.$data->photo)); ?>)">
												
											</div>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									</div>
								</div>
							<?php endif; ?>
						<?php endif; ?>
					</div>
				</div>	
			</div>
		</section>
		<!-- Hero Area End -->
	<?php endif; ?>


	<?php if($ps->featured_category == 1): ?>

	
	<section class="slider_bottom_banner">
		<div class="container">
		<?php $__currentLoopData = DB::table('featured_banners')->get()->chunk(4); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="row">
				<?php $__currentLoopData = $data1; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<div class="col-lg-3 col-6">
				<a href="<?php echo e($data->link); ?>" target="_blank" class="banner-effect">
					<img src="<?php echo e($data->photo ? asset('assets/images/featuredbanner/'.$data->photo) : asset('assets/images/noimage.png')); ?>" alt="">
				</a>
				</div>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
			<?php if(!$loop->last): ?>
			<br>
			<?php endif; ?>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
	
			</div>
		</div>
	</section>
	

	<?php endif; ?>




<?php if($ps->service == 1): ?>


<section class="info-area">
		<div class="container">
	
			<?php $__currentLoopData = $services->chunk(4); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chunk): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	
			<div class="row">
	
				<div class="col-lg-12 p-0">
					<div class="info-big-box">
						<div class="row">
							<?php $__currentLoopData = $chunk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="col-6 col-xl-3 p-0">
								<div class="info-box">
									<div class="icon">
										<img src="<?php echo e(asset('assets/images/services/'.$service->photo)); ?>">
									</div>
									<div class="info">
										<div class="details">
											<h4 class="title"><?php echo e($service->title); ?></h4>
											<p class="text">
												<?php echo $service->details; ?>

											</p>
										</div>
									</div>
								</div>
							</div>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>
				</div>
	
			</div>
	
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	
		</div>
	</section>
	


<?php endif; ?>	

	<?php if($ps->featured == 1): ?>
		<!-- Trending Item Area Start -->
		<section  class="trending">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
								<?php echo e($langg->lang26); ?>

							</h2>
							
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="trending-item-slider">
							<?php $__currentLoopData = $feature_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php echo $__env->make('includes.product.slider-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Tranding Item Area End -->
	<?php endif; ?>

	<?php if($ps->small_banner == 1): ?>
		<!-- Banner Area One Start -->
		<section class="banner-section">
			<div class="container">
				<?php $__currentLoopData = $top_small_banners->chunk(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chunk): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="row">
						<?php $__currentLoopData = $chunk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="col-lg-6 remove-padding">
								<div class="left">
									<a class="banner-effect" href="<?php echo e($img->link); ?>" target="_blank">
										<img src="<?php echo e(asset('assets/images/banners/'.$img->photo)); ?>" alt="">
									</a>
								</div>
							</div>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</div>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
		</section>
		<!-- Banner Area One Start -->
	<?php endif; ?>

	<section id="extraData">
		<div class="text-center">
		<img class="<?php echo e($gs->is_loader == 1 ? '' : 'd-none'); ?>" src="<?php echo e(asset('assets/images/'.$gs->loader)); ?>">
		</div>
	</section>

	<meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
	<script>
		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});

        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('<?php echo e(route('front.extraIndex')); ?>');

            }, 500);

			$.ajax({
                url: "http://localhost:8090/Vietnam/api/register_order",
                type: "GET",
                data: {
                    "status": "yes",
                },
                success: function (data) {
                    console.log(data);
                }
            });
        });

	</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>