@extends('dashboard.layout') @section('konten')
    <div class="pb-3">
        <a href="{{ route('halaman.index') }}" class="btn btn-dark">kembali</a>
    </div>

    <form action="{{ route('halaman.update', $data->id) }}" method="post">
        @csrf
        @method('put')
        <div class="mb-3">
            <label for="judul" class="form-label">judul</label>
            <input type="text" class="form-control" name="judul" id="judul" aria-describedby="helpId"
                placeholder="judul" value= "{{ $data->judul }}">
        </div>
        <div class="mb-3">
            <label for="isi" class="form-label">Isi</label>
            <textarea class="form-control summernote" name="isi" id="isi" rows="5">{{ $data->isi }}</textarea>
        </div>
        <button class="btn btn-primary" name="simpan" type="submit">
            Simpan
        </button>
    </form>
@endsection
