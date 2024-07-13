@extends('dashboard.layout') @section('konten')
    <div class="pb-3">
        <a href="{{ route('education.index') }}" class="btn btn-dark">kembali</a>
    </div>

    <form action="{{ route('education.store') }}" method="post">
        @csrf
        <div class="mb-3">
            <label for="judul" class="form-label">Nama Universitas</label>
            <input type="text" class="form-control" name="judul" id="judul" aria-describedby="helpId"
                placeholder="Nama Universitas" value= "{{ Session::get('judul') }}">
        </div>
        <div class="mb-3">
            <label for="info1" class="form-label">Nama Fakultas</label>
            <input type="text" class="form-control" name="info1" id="info1" aria-describedby="helpId"
                placeholder="Nama Fakultas" value= "{{ Session::get('info1') }}">
        </div>
        <div class="mb-3">
            <label for="info2" class="form-label">Nama Prodi</label>
            <input type="text" class="form-control" name="info2" id="info2" aria-describedby="helpId"
                placeholder="Nama Prodi" value= "{{ Session::get('info2') }}">
        </div>
        <div class="mb-3">
            <label for="info3" class="form-label">IPK</label>
            <input type="text" class="form-control" name="info3" id="info3" aria-describedby="helpId"
                placeholder="IPK" value= "{{ Session::get('info3') }}">
        </div>
        <div class="mb-3">
            <div class="row">
                <div class="col-auto">Tanggal Mulai</div>
                <div class="col-auto">
                    <input type="date" class="form-control form-control-sm" name="tgl_mulai" placeholder="dd/mm/yyyy"
                        value= "{{ Session::get('tgl_mulai') }}">
                </div>
                <div class="col-auto">Tanggal Akhir</div>
                <div class="col-auto">
                    <input type="date" class="form-control form-control-sm" name="tgl_akhir" placeholder="dd/mm/yyyy"
                        value= "{{ Session::get('tgl_akhir') }}">
                </div>
            </div>
        </div>
        <button class="btn btn-primary" name="simpan" type="submit">
            Simpan
        </button>
    </form>
@endsection
