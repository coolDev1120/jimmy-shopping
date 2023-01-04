                                
                                <?php if($prod->user_id != 0): ?>

                                
                                <?php if($prod->user->is_vendor == 2): ?>

													<div class="col-lg-4 col-md-6 decrease-padding">
															<div class="single-box">
																<div class="left-area">
																	<img src="<?php echo e($prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png')); ?>" alt="">
																</div>
																<div class="right-area">
																		<h4 class="price"><?php echo e($prod->showPrice()); ?> <del><?php echo e($prod->showPreviousPrice()); ?></del> </h4>
																	<div class="stars">
																		<div class="ratings">
																			<div class="empty-stars"></div>
																			<div class="full-stars" style="width:<?php echo e(App\Models\Rating::ratings($prod->id)); ?>%"></div>
																		</div>
																	</div>
																	<p class="text"><a href="<?php echo e(route('front.product',$prod->slug)); ?>"><?php echo e(strlen($prod->name) > 65 ? substr($prod->name,0,65).'...' : $prod->name); ?></a></p>

																	<ul class="action-meta">
																			<li>
																					<?php if(Auth::guard('web')->check()): ?>
														
																					<span href="javascript:;" class="wish add-to-wish"
																						data-href="<?php echo e(route('user-wishlist-add',$prod->id)); ?>" data-toggle="tooltip"
																						data-placement="top" title="<?php echo e($langg->lang54); ?>"><i class="far fa-heart"></i>
																					</span>
														
																					<?php else: ?>
														
																					<span href="javascript:;" class="wish" rel-toggle="tooltip" title="<?php echo e($langg->lang54); ?>"
																						data-toggle="modal" id="wish-btn" data-target="#comment-log-reg"
																						data-placement="top">
																						<i class="far fa-heart"></i>
																					</span>
														
																					<?php endif; ?>
																			</li>
																			<li>
																				<span  class="cart-btn quick-view" rel-toggle="tooltip" title="<?php echo e($langg->lang55); ?>" href="javascript:;" data-href="<?php echo e(route('product.quick',$prod->id)); ?>" data-toggle="modal" data-target="#quickview" data-placement="top">
																						<i class="fas fa-shopping-basket"></i>
																				</span>
																			</li>
																			<li>
																					<span href="javascript:;" class="compear add-to-compare"
																					data-href="<?php echo e(route('product.compare.add',$prod->id)); ?>" data-toggle="tooltip"
																					data-placement="top" title="<?php echo e($langg->lang57); ?>" >
																					<i class="fas fa-random"></i>
																				</span>
																			</li>
																		</ul>																	



																</div>
															</div>
													</div>

								<?php endif; ?>

                                

								<?php else: ?> 

								<div class="col-lg-4 col-md-6 decrease-padding">
										<div class="single-box">
											<div class="left-area">
												<img src="<?php echo e($prod->photo ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png')); ?>" alt="">
											</div>
											<div class="right-area">
													<h4 class="price"><?php echo e($prod->showPrice()); ?> <del><?php echo e($prod->showPreviousPrice()); ?></del> </h4>
												<div class="stars">
													<div class="ratings">
														<div class="empty-stars"></div>
														<div class="full-stars" style="width:<?php echo e(App\Models\Rating::ratings($prod->id)); ?>%"></div>
													</div>
												</div>
												<p class="text"><a href="<?php echo e(route('front.product',$prod->slug)); ?>"><?php echo e(strlen($prod->name) > 65 ? substr($prod->name,0,65).'...' : $prod->name); ?></a></p>

												<ul class="action-meta">
														<li>
																<?php if(Auth::guard('web')->check()): ?>
									
																<span href="javascript:;" class="wish add-to-wish"
																	data-href="<?php echo e(route('user-wishlist-add',$prod->id)); ?>" data-toggle="tooltip"
																	data-placement="top" title="<?php echo e($langg->lang54); ?>"><i class="far fa-heart"></i>
																</span>
									
																<?php else: ?>
									
																<span href="javascript:;" class="wish" rel-toggle="tooltip" title="<?php echo e($langg->lang54); ?>"
																	data-toggle="modal" id="wish-btn" data-target="#comment-log-reg"
																	data-placement="top">
																	<i class="far fa-heart"></i>
																</span>
									
																<?php endif; ?>
														</li>
														<li>
															<span  class="cart-btn quick-view" rel-toggle="tooltip" title="<?php echo e($langg->lang55); ?>" href="javascript:;" data-href="<?php echo e(route('product.quick',$prod->id)); ?>" data-toggle="modal" data-target="#quickview" data-placement="top">
																	<i class="fas fa-shopping-basket"></i>
															</span>
														</li>
														<li>
																<span href="javascript:;" class="compear add-to-compare"
																data-href="<?php echo e(route('product.compare.add',$prod->id)); ?>" data-toggle="tooltip"
																data-placement="top" title="<?php echo e($langg->lang57); ?>" >
																<i class="fas fa-random"></i>
															</span>
														</li>
													</ul>																	



											</div>
										</div>
								</div>

								<?php endif; ?>