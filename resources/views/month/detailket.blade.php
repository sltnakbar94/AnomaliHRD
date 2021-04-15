<div class="row">
	<div class="col-md-12">
	    <div class="row">
	    	<div class="col-md-12 mb-2">
			</div>
	    </div>
	    <div class="card no-padding no-border">
            <div class="card-header">
                <strong>Tambah Keterangan</strong>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <form action="{{ backpack_url('detailket/ket') }}" method="post" name="form_keterangan" id="form_keterangan">
                            @csrf
                            <input type="hidden" name="userid" value="{{ $crud->entry->userid }}">
                            <div class="form-group">
                                <label class="control-label" for="date">Tanggal</label><br>
                                <input type="date" class="form-control{{ $errors->has('date') ? ' is-invalid' : '' }}" name="date" required>
                                @if ($errors->has('date'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('date') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="keterangan">Keterangan</label>
                                <select id="keterangan" onchange="AddKeterangan();" class="form-control{{ $errors->has('keterangan') ? ' is-invalid' : '' }}" name="keterangan" value="{{ old('keterangan') }}" id="keterangan" required>
                                    <option value="">-</option>
                                    <option value="Cuti">Cuti</option>
                                    <option value="Proyek">Proyek</option>
                                    <option value="Sakit">Sakit</option>
                                    <option value="Sakit Tanpa Surat Dokter">Sakit Tanpa Surat Dokter</option>
                                    <option value="Tidak Masuk Tanpa Keterangan">Tidak Masuk Tanpa Keterangan</option>
                                    <option value="Izin">Izin</option>
                                  </select>
                                @if ($errors->has('keterangan'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('keterangan') }}</strong>
                                    </span>
                                @endif
                                <div class="form-group mt-2" style="display:none" id="addProyek">
                                    <label class="control-label" for="proyek">Keterangan Tambahan</label>
                                    <input type="text" class="form-control" id="proyek" name="proyek">
                                </div>
                                @if ($errors->has('proyek'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('proyek') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group text-right">
                                <label for=""></label>
                                <button type="submit" class="btn btn-primary" id="add-buton-out">SIMPAN</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function AddKeterangan(){
        var newKeterangan = document.getElementById("keterangan");
        var selectedValues = newKeterangan.options[newKeterangan.selectedIndex].value;
        var addProyek = document.getElementById("addProyek");
        if(selectedValues == "Proyek" || selectedValues == "Izin"){
            addProyek.style.display = "block";
        }else{
            addProyek.style.display = "none" ;
        }
    }
</script>
