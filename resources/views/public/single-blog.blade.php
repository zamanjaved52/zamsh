<!DOCTYPE html>
<html lang="en">

<head>
    <!----------
Project Name: Modern Portfolio Website
Description: A complete responsive modern portfolio website design
             by using HTML CSS and Vanilla JavaScript from scratch.
Author: Md Al Amin Hossen
Github: https://github.com/MdRasen
License: MIT License
Copyright: 2023 ©MdRasen
---------->

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>laraPortfolio - Single Blog</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('public-assets/css/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('public-assets/css/blog-single.css') }}" />
    <link rel="stylesheet" href="{{ asset('public-assets/css/skins/color-1.css') }}" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <!-- Style Switcher -->
    <link rel="stylesheet" href="{{ asset('public-assets/css/skins/color-1.css') }}" class="alternate-style"
        title="color-1" disabled />
    <link rel="stylesheet" href="{{ asset('public-assets/css/skins/color-2.css') }}" class="alternate-style"
        title="color-2" disabled />
    <link rel="stylesheet" href="{{ asset('public-assets/css/skins/color-3.css') }}" class="alternate-style"
        title="color-3" disabled />
    <link rel="stylesheet" href="{{ asset('public-assets/css/skins/color-4.css') }}" class="alternate-style"
        title="color-4" disabled />
    <link rel="stylesheet" href="{{ asset('public-assets/css/skins/color-5.css') }}" class="alternate-style"
        title="color-5" disabled />

    <link rel="stylesheet" href="{{ asset('public-assets/css/style-switcher.css') }}" />
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{ asset('public-assets/images/fabicon.png') }}" />
</head>

<body class="dark">
    <!-- Container Start -->
    <div class="blog-container">
        <!-- Top Section Start -->
        <div class="top-section">
            <div class="top-row">
                <div class="logo">
                    <a href="{{ route('public.index') }}">
                        <span>{{ $about ? $about->nickname[0] : 'A' }}</span>{{ $about ? ltrim($about->nickname, $about->nickname[0]) : 'amin' }}
                    </a>
                </div>
                <div class="back-btn">
                    <a href="{{ route('public.index') }}" class="btn">GO BACK</a>
                </div>
            </div>
            <div class="bottom-row">
                <div class="blog-details">
                    <div class="blog-title">
                        <h1>{{ $blog->blog_name }}</h1>
                    </div>
                    <div class="category">
                        <a href="https://www.facebook.com/itzAla71" target="_blank">
                            <p><i class="fa-sharp fa-solid fa-book-open-reader"></i>
                                {{ $about ? $about->nickname : 'MdRasen' }}</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Section End -->

        <!-- Body Section Start -->
        <div class="body-section">
            <div class="body-row">
                <div class="left">
                    <div class="blog-img">
                        <img src="{{ asset('storage/blog') }}/{{ $blog->blog_image }}"
                            alt="{{ $blog->blog_name }}" />
                    </div>
                    <div class="blog-info">
                        <div class="category">
                            <a href="https://www.facebook.com/itzAla71" target="_blank">
                                <p><i class="fa-sharp fa-solid fa-book-open-reader"></i>
                                    {{ $about ? $about->nickname : 'MdRasen' }}</p>
                            </a>
                        </div>
                        <div class="date">
                            <p><i class="fa-solid fa-calendar-days"
                                    style="padding-right: 5px;"></i>{{ $about->updated_at->format('d M, Y') }}
                            </p>
                        </div>
                    </div>
                    <div class="blog-title">
                        <h1>{{ $blog->blog_name }}</h1>
                    </div>
                    <div class="blog-desc">
                        <p>{!! $blog->blog_body !!}</p>
                    </div>
                    <div class="social-share">
                        <div class="row">
                            <div class="title padd-15">
                                <p>Share On Social Media</p>
                            </div>
                            <div class="social-icons">
                                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-youtube"></i></a>
                                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="right">
                    <div class="row">
                        <div class="section-title padd-15">
                            <h2>Recent Posts</h2>
                        </div>
                    </div>
                    <!-- Recent Posts Start -->
                    <div class="recent-posts">
                        <!-- Recent Post -->
                        @foreach ($recent_blogs as $item)
                            <a href="{{ route('public.view-blog', ['blog_id' => $item->id]) }}">
                                <div class="post-row">
                                    <div class="post-img">
                                        <img src="{{ asset('storage/blog') }}/{{ $item->blog_image }}"
                                            alt="{{ $item->blog_name }}" />
                                    </div>
                                    <div class="post-desc">
                                        <p>{{ $item->blog_name }}</p>
                                        <p><i class="fa-solid fa-calendar-days"
                                                style="padding-right: 5px;"></i>{{ $item->updated_at->format('d M, Y') }}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    </div>
                    <!-- Recent Posts End -->
                    <br>
                    <div class="row">
                        <div class="section-title padd-15">
                            <h2>Related Posts</h2>
                        </div>
                    </div>
                    <!-- Related Posts Start -->
                    <div class="recent-posts">
                        <!-- Related Post -->
                        @foreach ($random_blogs as $item)
                            <a href="{{ route('public.view-blog', ['blog_id' => $item->id]) }}">
                                <div class="post-row">
                                    <div class="post-img">
                                        <img src="{{ asset('storage/blog') }}/{{ $item->blog_image }}"
                                            alt="{{ $item->blog_name }}" />
                                    </div>
                                    <div class="post-desc">
                                        <p>{{ $item->blog_name }}</p>
                                        <p><i class="fa-solid fa-calendar-days"
                                                style="padding-right: 5px;"></i>{{ $item->updated_at->format('d M, Y') }}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                        <!-- Related Posts End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Body Section End -->
        <!-- Footer Section Start -->
        <div class="footer-section">
            <div class="footer-row">
                <div class="left">
                    <p>© Copyright 2023. ZamSh.</p>
                </div>
                <div class="right">
                    <p>Developed By <a href="https://www.facebook.com/itzAla71/" target="_blank">ZamSh</a></p>
                </div>
            </div>
        </div>
        <!-- Footer Section End -->
        <!-- Container End -->


        @include('layouts.inc.public-switcher')

        <!-- Custom JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js" referrerpolicy="no-referrer"></script>
        <script src="{{ asset('public-assets/js/script.js') }}"></script>
        <script src="{{ asset('public-assets/js/style-switcher.js') }}"></script>
</body>

</html>
