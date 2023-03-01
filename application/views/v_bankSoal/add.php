<div class="modal fade" id="modalAdd">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Input Soal <?php echo $kategoriSoal['singkatan']; ?></h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <form id="formInputBankSoal">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="pertanyaanSoal">Pertanyaan Soal</label>
                                <textarea class="textarea" placeholder="Place some text here" 
                                id="pertanyaan" name="pertanyaan" 
                                style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" required>
                                </textarea>
                                <small id="pertanyaan_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanA">Pilihan A</label>
                                <input type="text" class="form-control" id="pilihan_a" name="pilihan_a" placeholder="Enter Pilihan A">
                                <small id="pilihan_a_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanA">Nilai Pil. A</label>
                                <input type="text" class="form-control" id="nilai_a" name="nilai_a" placeholder="Enter 0-5">
                                <small id="nilai_a_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanB">Pilihan B</label>
                                <input type="text" class="form-control" id="pilihan_b" name="pilihan_b" placeholder="Enter Pilihan B">
                                <small id="pilihan_b_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanB">Nilai Pil. B</label>
                                <input type="text" class="form-control" id="nilai_b" name="nilai_b" placeholder="Enter 0-5">
                                <small id="nilai_b_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanC">Pilihan C</label>
                                <input type="text" class="form-control" id="pilihan_c" name="pilihan_c" placeholder="Enter Pilihan C">
                                <small id="pilihan_c_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanC">Nilai Pil. C</label>
                                <input type="text" class="form-control" id="nilai_c" name="nilai_c" placeholder="Enter 0-5">
                                <small id="nilai_c_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanD">Pilihan D</label>
                                <input type="text" class="form-control" id="pilihan_d" name="pilihan_d" placeholder="Enter Pilihan D">
                                <small id="pilihan_d_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanD">Nilai Pil. D</label>
                                <input type="text" class="form-control" id="nilai_d" name="nilai_d" placeholder="Enter 0-5">
                                <small id="nilai_d_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="pilihanE">Pilihan E</label>
                                <input type="text" class="form-control" id="pilihan_e" name="pilihan_e" placeholder="Enter Pilihan E">
                                <small id="pilihan_e_error" class="text-danger"></small>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="nilaiPilihanE">Nilai Pil. E</label>
                                <input type="text" class="form-control" id="nilai_e" name="nilai_e" placeholder="Enter 0-5">
                                <small id="nilai_e_error" class="text-danger"></small>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="btn-saveBankSoal" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>