@extends('dashboard.layout')

@section('konten')
    <form action="{{ route('skill.update') }}" method="post">
        @csrf
        <div class="mb-3">
            <label for="_language" class="form-label">Programming Language & Tools</label>
            <input type="text" class="form-control form-control-sm skill" name="_language" id="_language"
                aria-describedby="helpId" placeholder="Programming Language & Tools"
                value= "{{ get_meta_value('_language') }}">
        </div>
        <div class="mb-3">
            <label for="_workflow" class="form-label">Workflow</label>
            <textarea class="form-control summernote" name="_workflow" id="_workflow" rows="5">{{ get_meta_value('_workflow') }}</textarea>
        </div>
        <button class="btn btn-primary" name="simpan" type="submit">
            Simpan
        </button>
    </form>
@endsection

@push('child-scripts')
    <script>
        $(document).ready(function() {
            $('.skill').tokenfield({
                autocomplete: {
                    source: [{!! $skill !!}],
                    delay: 100
                },
                showAutocompleteOnFocus: true
            });
        });
    </script>
@endpush
