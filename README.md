# flutter_todoapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
![image](https://github.com/Mahfuzar148/Flutter-Todo-App/assets/113121842/75f184d7-b32a-4b79-83a7-f9393bc96ada)
![image](https://github.com/Mahfuzar148/Flutter-Todo-App/assets/113121842/1b45f3db-ff0d-4389-8f62-f28893689bb6)
![image](https://github.com/Mahfuzar148/Flutter-Todo-App/assets/113121842/8c662300-71dd-424b-9d0c-c45dc49db53a)



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Image Slideshow</title>
<style>
  .slideshow-container {
    max-width: 1000px;
    position: relative;
    margin: auto;
  }

  .fade {
    display: none;
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .fade.active {
    display: block;
  }
</style>
</head>
<body>

<div class="slideshow-container">
  <img class="fade" src="image1.jpg">
  <img class="fade" src="image2.jpg">
  <img class="fade" src="image3.jpg">
</div>

<script>
let slideIndex = 0;
const slides = document.querySelectorAll('.fade');

function showSlides() {
  slides.forEach(slide => {
    slide.style.display = 'none';
  });
  slideIndex++;
  if (slideIndex > slides.length) {
    slideIndex = 1;
  }
  slides[slideIndex - 1].style.display = 'block';
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}

showSlides();
</script>

</body>
</html>
