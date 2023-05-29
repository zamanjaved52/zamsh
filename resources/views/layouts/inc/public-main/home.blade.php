<!-- Home Section Start -->
<section class="home active section" id="home">
    <div class="container">
        <div class="row">
            <div class="home-info padd-15">
                <h3 class="hello">
                    Hello, My Name is <span class="name">{{ $about ? $about->full_name : 'Zaman javed' }}</span>
                </h3>
                <h3 class="my-profession">
                    I'm a <span class="typing">{{ $about ? $about->designation : 'Web Developer' }}</span>
                </h3>
                <p>
                    {!! $about
                        ? $about->short_description
                        : 'I&#39;m a web Development with extensive experience for over 5 years. My expertise is to create and design website, graphic design, and many more...' !!}
                </p>
                @if ($about)
                    <a href="{{ asset('storage/cv_file/') }}/{{ $about->cv_file }}" class="btn" download>Download
                        CV</a>
                @else
                    <a href="{{ asset('public-assets/cv_file.pdf') }}" class="btn" download>Download
                        CV</a>
                @endif
            </div>
            <div class="home-img padd-15">
                @if ($about)
                    <img src="{{ asset('storage/about_image/') }}/{{ $about->image }}" alt="hero" />
                @else
                    <img src="{{ asset('public-assets/images/hero.jpg') }}" alt="hero" />
                @endif
            </div>
        </div>

        {{-- Alert Box --}}
        <div class="row padd-15">
            {{-- Success Message --}}
            @if (session('msg'))
                <div class="alert-box">
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <strong>ZamSh!</strong> {{ session('msg') }}
                    </div>
                </div>
            @endif
            {{-- Error Message --}}
            @if ($errors->any())
                <div class="alert-box">
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <strong>ZamSh!</strong> Message failed to send.
                    </div>
                </div>
            @endif
        </div>
    </div>
</section>
<!-- Home Section End -->
