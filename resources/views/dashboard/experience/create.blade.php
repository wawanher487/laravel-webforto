@extends('dashboard.layout') @section('konten')
    <div class="pb-3">
        <a href="{{ route('experience.index') }}" class="btn btn-dark">kembali</a>
    </div>

    <form action="{{ route('experience.store') }}" method="post">
        @csrf
        <div class="mb-3">
            <label for="judul" class="form-label">Posisi Pekerjaan</label>
            <input type="text" class="form-control" name="judul" id="judul" aria-describedby="helpId"
                placeholder="Posisi pekerjaan" value= "{{ Session::get('judul') }}">
        </div>
        <div class="mb-3">
            <label for="info1" class="form-label">Nama Perusahaan</label>
            <input type="text" class="form-control" name="info1" id="info1" aria-describedby="helpId"
                placeholder="Nama Perusahaan" value= "{{ Session::get('info1') }}">
        </div>
        <div class="mb-3">
            <div class="row">
                <div class="col-auto">Tanggal Mulai</div>
                <div class="col-auto">
                    <input type="date" class="form-control form-control-sm" name="tgl_mulai" placeholder="dd/mm/yyyy" value= "{{ Session::get('tgl_mulai') }}">
                </div>
                <div class="col-auto">Tanggal Akhir</div>
                <div class="col-auto">
                    <input type="date" class="form-control form-control-sm" name="tgl_akhir" placeholder="dd/mm/yyyy" value= "{{ Session::get('tgl_akhir') }}">
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label for="isi" class="form-label">Isi</label>
            <textarea class="form-control summernote" name="isi" id="isi" rows="5">{{ Session::get('isi') }}</textarea>
        </div>
        <button class="btn btn-primary" name="simpan" type="submit">
            Simpan
        </button>
    </form>
@endsection
