<div class="row">
	<div class="col-md-12">

	<!-- Default box -->
	  <div class="">
	    <div class="card no-padding no-border">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-12">
                    </div>
                </div>
                <div class="row">
                    <form class="col-md-12" action="{{ backpack_url('store-absen-lapangan') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" value="{{ backpack_user()->Employee->userid }}" name="userid">
                        <div> {{-- bila diminta lat&lng untuk di hidden tolong tambahkan --> style="display: none" <-- pada div dikiri --}}
                            <div class="form-group">
                                <label class="control-label" for="lat">Latitude</label>

                                <div>
                                    <input type="text" class="form-control" name="lat" id="lat" value="{{ old('lat') }}" readonly="readonly" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="lng">Longitude</label>

                                <div>
                                    <input type="text" class="form-control" name="lng" id="lng" value="{{ old('lng') }}" readonly="readonly" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="keterangan_tambahan">Kegiatan</label>

                            <div>
                                <input type="text" class="form-control{{ $errors->has('keterangan_tambahan') ? ' is-invalid' : '' }}" name="keterangan_tambahan" id="keterangan_tambahan" value="{{ old('keterangan_tambahan') }}" required>
                                @if ($errors->has('keterangan_tambahan'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('keterangan_tambahan') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="upload_data">Foto</label>

                            <div>
                                <input type="file" name="upload_data" accept="image/*" capture="user" class="form-control{{ $errors->has('foto') ? ' is-invalid' : '' }}">
                                @if ($errors->has('upload_data'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('upload_data') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="input-group mb-3">
                            <button type="submit" class="btn btn-primary" id="add-buton-out">SUBMIT</button>
                        </div>
                    </form>
                </div>
            </div>
	    </div>
	  </div>
	</div>
</div>

<script>
    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        document.getElementById('lat').value = position.coords.latitude;
        document.getElementById('lng').value = position.coords.longitude;
    }

    document.addEventListener('DOMContentLoaded', (event) => {
        getLocation()
    });


</script>
