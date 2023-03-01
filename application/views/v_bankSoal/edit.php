<div class="modal fade" id="modalEdit">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Update Soal <?php echo $kategoriSoal['singkatan']; ?></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formEditBankSoal">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="pertanyaanSoal">Pertanyaan Soal</label>
                                <textarea class="textarea2" placholder="Place some text here" id="pertanyaan2" name="pertanyaan2" 
                                style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                <small id="pertanyaan2_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="idKategoriSoal">
                    <input type="hidden" name="idBankSoal">
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanA">Pilihan A</label>
                                <input type="text" class="form-control" name="pilihan_a2" placeholder="Enter Pilihan A">
                                <small id="pilihan_a2_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanA">Nilai Pil. A</label>
                                <input type="text" class="form-control" name="nilai_a2" placeholder="Enter 0-5">
                                <small id="nilai_a2_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanB">Pilihan B</label>
                                <input type="text" class="form-control" name="pilihan_b2" placeholder="Enter Pilihan B">
                                <small id="pilihan_b2_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanB">Nilai Pil. B</label>
                                <input type="text" class="form-control" name="nilai_b2" placeholder="Enter 0-5">
                                <small id="nilai_b2_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanC">Pilihan C</label>
                                <input type="text" class="form-control" name="pilihan_c2" placeholder="Enter Pilihan C">
                                <small id="pilihan_c2_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanC">Nilai Pil. C</label>
                                <input type="text" class="form-control" name="nilai_c2" placeholder="Enter 0-5">
                                <small id="nilai_c2_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanD">Pilihan D</label>
                                <input type="text" class="form-control" name="pilihan_d2" placeholder="Enter Pilihan D">
                                <small id="pilihan_d2_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanD">Nilai Pil. D</label>
                                <input type="text" class="form-control" name="nilai_d2" placeholder="Enter 0-5">
                                <small id="nilai_d2_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanE">Pilihan E</label>
                                <input type="text" class="form-control" name="pilihan_e2" placeholder="Enter Pilihan E">
                                <small id="pilihan_e2_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanE">Nilai Pil. E</label>
                                <input type="text" class="form-control" name="nilai_e2" placeholder="Enter 0-5">
                                <small id="nilai_e2_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="btn-updateBankSoal" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>