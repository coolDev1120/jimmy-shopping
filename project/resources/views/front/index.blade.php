@extends('layouts.front')

@section('content')

	@if($ps->slider == 1)

		@if(count($sliders))

			@include('includes.slider-style')
		@endif
	@endif

	@if($ps->slider == 1)
		<!-- Hero Area Start -->
		<section class="hero-area">
			<div class="">
				<div class="row">
					<div class="col-lg-12 decrease-padding">
							@if($ps->slider == 1)
							@if(count($sliders))
								<div class="hero-area-slider">
									<div class="slide-progress"></div>
									<div class="intro-carousel">
										@foreach($sliders as $data)
											<div class="intro-content {{$data->position}}" style="background-image: url({{asset('assets/images/sliders/'.$data->photo)}})">
												
											</div>
										@endforeach
									</div>
								</div>
							@endif
						@endif
					</div>
				</div>	
			</div>
		</section>
		<!-- Hero Area End -->
	@endif


	@if($ps->featured_category == 1)

	{{-- Slider Bottom Banner Start --}}
	<section class="slider_bottom_banner">
		<div class="container">
		@foreach(DB::table('featured_banners')->get()->chunk(4) as $data1)
			<div class="row">
				@foreach($data1 as $data)
				<div class="col-lg-3 col-6">
				<a href="{{ $data->link }}" target="_blank" class="banner-effect">
					<img src="{{ $data->photo ? asset('assets/images/featuredbanner/'.$data->photo) : asset('assets/images/noimage.png') }}" alt="">
				</a>
				</div>
				@endforeach
			</div>
			@if(!$loop->last)
			<br>
			@endif
		@endforeach		
	
			</div>
		</div>
	</section>
	{{-- Slider Botom Banner End --}}

	@endif




@if($ps->service == 1)

{{-- Info Area Start --}}
<section class="info-area">
		<div class="container">
	
			@foreach($services->chunk(4) as $chunk)
	
			<div class="row">
	
				<div class="col-lg-12 p-0">
					<div class="info-big-box">
						<div class="row">
							@foreach($chunk as $service)
							<div class="col-6 col-xl-3 p-0">
								<div class="info-box">
									<div class="icon">
										<img src="{{ asset('assets/images/services/'.$service->photo) }}">
									</div>
									<div class="info">
										<div class="details">
											<h4 class="title">{{ $service->title }}</h4>
											<p class="text">
												{!! $service->details !!}
											</p>
										</div>
									</div>
								</div>
							</div>
							@endforeach
						</div>
					</div>
				</div>
	
			</div>
	
			@endforeach
	
		</div>
	</section>
	{{-- Info Area End  --}}


@endif	

	@if($ps->featured == 1)
		<!-- Trending Item Area Start -->
		<section  class="trending">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
								{{ $langg->lang26 }}
							</h2>
							{{-- <a href="#" class="link">View All</a> --}}
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="trending-item-slider">
							@foreach($feature_products as $prod)
								@include('includes.product.slider-product')
							@endforeach
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Tranding Item Area End -->
	@endif

	@if($ps->small_banner == 1)
		<!-- Banner Area One Start -->
		<section class="banner-section">
			<div class="container">
				@foreach($top_small_banners->chunk(2) as $chunk)
					<div class="row">
						@foreach($chunk as $img)
							<div class="col-lg-6 remove-padding">
								<div class="left">
									<a class="banner-effect" href="{{ $img->link }}" target="_blank">
										<img src="{{asset('assets/images/banners/'.$img->photo)}}" alt="">
									</a>
								</div>
							</div>
						@endforeach
					</div>
				@endforeach
			</div>
		</section>
		<!-- Banner Area One Start -->
	@endif

	<section id="extraData">
		<div class="text-center">
		<img class="{{ $gs->is_loader == 1 ? '' : 'd-none' }}" src="{{asset('assets/images/'.$gs->loader)}}">
		</div>
	</section>

	<meta name="csrf-token" content="{{ csrf_token() }}">

@endsection

@section('scripts')
	<script>
		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});

        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('{{route('front.extraIndex')}}');

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
@endsection