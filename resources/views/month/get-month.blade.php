<!-- Modal -->
<div class="modal fade" id="addModalGetMonth" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="addModalGetMonthLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalGetMonthLabel">Cari Bulan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="alert alert-danger" id="form-modal-alert" style="display:none;">Data telah tersimpan</div>
                    <form action="{{ backpack_url('getmonth') }}" method="post" name="form_get_month" id="form_get_month" target="_blank">
                        @csrf
                        <input type="hidden" name="userid" value="{{ $crud->entry->userid }}">
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="inputGroup-sizing-default">Bulan dan Tahun</span>
                                <input type="month" class="form-control" name="month" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                            </div>
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

