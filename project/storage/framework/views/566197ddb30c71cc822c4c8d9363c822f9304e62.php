<?php if($ps->hot_sale == 1): ?>

<!-- Clothing and Apparel Area Start -->
<section class="product-tab">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<h2 class="section-title">
						<?php echo e($langg->lang832); ?>

					</h2>
					<ul class="nav">
						<li class="nav-item">
							<a class="nav-link active" id="pills-tab1-tab" data-toggle="pill" href="#pills-tab1" role="tab" aria-controls="pills-tab1" aria-selected="false"><?php echo e($langg->lang30); ?></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-tab2-tab" data-toggle="pill" href="#pills-tab2" role="tab" aria-controls="pills-tab2" aria-selected="true"><?php echo e($langg->lang31); ?></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-tab3-tab" data-toggle="pill" href="#pills-tab3" role="tab" aria-controls="pills-tab3" aria-selected="false"><?php echo e($langg->lang32); ?></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-tab4-tab" data-toggle="pill" href="#pills-tab4" role="tab" aria-controls="pills-tab4" aria-selected="false"><?php echo e($langg->lang33); ?></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="tab-content">
					<div class="tab-pane fade active show" id="pills-tab1" role="tabpanel" aria-labelledby="pills-tab1-tab">
						<div class="row">
								<?php $__currentLoopData = $hot_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php echo $__env->make('includes.product.list-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tab2" role="tabpanel" aria-labelledby="pills-tab2-tab">
						<div class="row">
								<?php $__currentLoopData = $latest_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php echo $__env->make('includes.product.list-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tab3" role="tabpanel" aria-labelledby="pills-tab3-tab">
						<div class="row">
								<?php $__currentLoopData = $trending_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php echo $__env->make('includes.product.list-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-tab4" role="tabpanel" aria-labelledby="pills-tab4-tab">
							<div class="row">
									<?php $__currentLoopData = $sale_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php echo $__env->make('includes.product.list-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Clothing and Apparel Area start -->

<?php endif; ?>

<?php if($ps->best == 1): ?>
<!-- Phone and Accessories Area Start -->
<section class="phone-and-accessories categori-item">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 remove-padding">
				<div class="section-top">
					<h2 class="section-title">
						<?php echo e($langg->lang27); ?>

					</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<?php $__currentLoopData = $best_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<?php echo $__env->make('includes.product.home-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Phone and Accessories Area start-->
<?php endif; ?>

	<?php if($ps->flash_deal == 1): ?>
		<!-- Electronics Area Start -->
		<section class="categori-item electronics-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
								<?php echo e($langg->lang244); ?>

							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="flash-deals">
							<div class="flas-deal-slider">

								<?php $__currentLoopData = $discount_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php echo $__env->make('includes.product.flash-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Electronics Area start-->
	<?php endif; ?>

	<?php if($ps->large_banner == 1): ?>
		<!-- Banner Area One Start -->
		<section class="banner-section">
			<div class="container">
				<?php $__currentLoopData = $large_banners->chunk(1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chunk): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="row">
						<?php $__currentLoopData = $chunk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="col-lg-12 remove-padding">
								<div class="img">
									<a class="banner-effect" href="<?php echo e($img->link); ?>">
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

	<?php if($ps->top_rated == 1): ?>
		<!-- Electronics Area Start -->
		<section class="categori-item electronics-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
								<?php echo e($langg->lang28); ?>

							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="row">

							<?php $__currentLoopData = $top_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php echo $__env->make('includes.product.top-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Electronics Area start-->
	<?php endif; ?>

	

	<?php if($ps->big == 1): ?>
	<!-- Clothing and Apparel Area Start -->
	<section class="categori-item clothing-and-Apparel-Area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 remove-padding">
					<div class="section-top">
						<h2 class="section-title">
							<?php echo e($langg->lang29); ?>

						</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<?php $__currentLoopData = $big_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<?php echo $__env->make('includes.product.home-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- Clothing and Apparel Area start-->
<?php endif; ?>

<?php if($ps->partners == 1): ?>
<!-- Partners Area Start -->
<section class="brand-section partners">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-top">
						<h2 class="section-title">
							<?php echo e($langg->lang236); ?>

						</h2>
					</div>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-lg-12 padding-decrease">
					<div class="brand-slider">
						<?php $__currentLoopData = $partners->chunk(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $partner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="slide-item">
								<?php $__currentLoopData = $partner; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<a href="<?php echo e($data->link); ?>" target="_blank" class="brand">
										<img src="<?php echo e(asset('assets/images/partner/'.$data->photo)); ?>" alt="">
									</a>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
							</div>						
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Partners Area End -->
<?php endif; ?>



	<!-- main -->
	<script src="<?php echo e(asset('assets/front/js/mainextra.js')); ?>"></script>