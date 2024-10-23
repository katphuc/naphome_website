const scrollToTopBtn = document.getElementById('scrollToTopBtn');

// Lắng nghe sự kiện cuộn
window.addEventListener('scroll', () => {
    // Kiểm tra nếu người dùng cuộn xuống hơn 100px thì hiển thị nút
    if (window.scrollY > 100) {
        scrollToTopBtn.classList.add('show');
    } else {
        scrollToTopBtn.classList.remove('show');
    }
});

// Sự kiện khi nhấp vào nút
scrollToTopBtn.addEventListener('click', () => {
    window.scrollTo({
        top: 0,
        behavior: 'smooth' // Cuộn mượt mà
    });
});
