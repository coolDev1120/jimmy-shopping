@extends('layouts.admin') 
@section('content')

	<div class="content-area">
		<div class="add-product-content">
			<div class="row">
				<div class="col-lg-12">
					<div class="product-description">
						<div class="body-area" id="modalEdit">
						@include('includes.admin.form-both')
						<form id="geniusformdata" action="{{ route('admin-user-create') }}" method="POST" enctype="multipart/form-data">
							{{csrf_field()}}

							<div class="row">
								<div class="col-lg-4">
								<div class="left-area">
									<h4 class="heading">{{ __("Customer Profile Image") }} *</h4>
								</div>
								</div>
								<div class="col-lg-7">
								<div class="img-upload">
									<div id="image-preview" class="img-preview" style="background: url({{ asset('assets/images/noimage.png') }});">
									
										<label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __("Upload Image") }}</label>
										<input type="file" name="photo" class="img-upload" id="image-upload">
									
									</div>
									<p class="text">{{ __("Prefered Size: (600x600) or Square Sized Image") }}</p>
								</div>
								</div>
							</div>


							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Name") }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="name" placeholder="{{ __('User Name') }}" required="">
								</div>
							</div>


							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Email") }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="email" class="input-field" name="email" placeholder="{{ __('Email Address') }}" >
								</div>
							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Phone") }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="phone" placeholder="{{ __('Phone Number') }}" required="">
								</div>
							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Address") }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="address" placeholder="{{ __('Address') }}" required="">
								</div>
							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Country") }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<select class="input-field" name="country" required>														
										<option value="">{{ __('Select Country') }}</option>
										@foreach (DB::table('countries')->get() as $cdata)
											<option value="{{ $cdata->country_name }}">
												{{ $cdata->country_name }}
											</option>
										@endforeach
									</select>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("State") }} *</h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="state" placeholder="{{ __("State") }}" required="">
								</div>
							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("City") }} </h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="city" placeholder="{{ __('City') }}">
								</div>
							</div>

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Fax") }} </h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="fax" placeholder="{{ __('Fax') }}">
								</div>
							</div>


							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
											<h4 class="heading">{{ __("Postal Code") }} </h4>
									</div>
								</div>
								<div class="col-lg-7">
									<input type="text" class="input-field" name="zip" placeholder="{{ __('Postal Code') }}">
								</div>
							</div>

							<input type="hidden" class="input-field" name="agent" value="{{ Auth::user()->id }}">

							<div class="row">
								<div class="col-lg-4">
									<div class="left-area">
										
									</div>
								</div>
								<div class="col-lg-7">
									<button class="addProductSubmit-btn" type="submit">{{ __("Create") }}</button>
								</div>
							</div>

						</form>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

@endsection