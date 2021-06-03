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
                    <button onclick="getLocation()">Try It</button>
                    <form class="col-md-12" action="{{ backpack_url('store-absen-lapangan') }}" method="post" enctype="multipart/form-data">
                        <input type="hidden" value="{{ backpack_user()->Employee->userid }}" name="userid">
                        <div class="form-group">
                            <label class="control-label" for="lat">Latitude</label>

                            <div>
                                <input type="text" class="form-control" name="lat" id="lat" value="{{ old('lat') }}" readonly="readonly">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="lng">Longitude</label>

                            <div>
                                <input type="text" class="form-control" name="lng" id="lng" value="{{ old('lng') }}" readonly="readonly">
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default">Kegiatan</span>
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-default"> Ambil Foto</span>
                            {{-- <input type='file' id="imgInp" class="form-control" /> --}}
                            <input type="file" id="imgInp" class="form-control" accept="image/*;capture=camera">
                        </div>
                        <div class="input-group mb-3">
                            <img id="blah" src="#" alt="your image" />
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
