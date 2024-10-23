// Đối tượng của các modal
const loginModal = document.getElementById("loginModal");
const registerModal = document.getElementById("registerModal");

// Đối tượng của các nút để mở modal
const openLoginModal = document.getElementById("openLoginModal"); // Nút mở modal đăng nhập
const openRegisterModal = document.getElementById("openRegisterModal"); // Nút mở modal đăng ký

// Đối tượng của các nút chuyển đổi giữa modal
const switchToRegister = document.getElementById("switchToRegister");
const switchToLogin = document.getElementById("switchToLogin");

// Đối tượng của các nút đóng modal
const closeLogin = document.getElementById("closeLogin");
const closeRegister = document.getElementById("closeRegister");

// Hàm hiển thị modal và ẩn modal khác
const showModal = (modalToShow, modalToHide) => {
    if (modalToHide) modalToHide.style.display = "none";
    if (modalToShow) modalToShow.style.display = "flex";
};

// Chuyển từ đăng nhập sang đăng ký
if (switchToRegister) {
    switchToRegister.onclick = () => showModal(registerModal, loginModal);
}

// Chuyển từ đăng ký sang đăng nhập
if (switchToLogin) {
    switchToLogin.onclick = () => showModal(loginModal, registerModal);
}

// Đóng modal đăng nhập
if (closeLogin) {
    closeLogin.onclick = () => {
        if (loginModal) loginModal.style.display = "none";
    };
}

// Đóng modal đăng ký
if (closeRegister) {
    closeRegister.onclick = () => {
        if (registerModal) registerModal.style.display = "none";
    };
}

// Hiển thị modal đăng nhập
if (openLoginModal) {
    openLoginModal.onclick = () => showModal(loginModal, registerModal);
}

// Hiển thị modal đăng ký
if (openRegisterModal) {
    openRegisterModal.onclick = () => showModal(registerModal, loginModal);
}

// Đóng modal khi nhấp ra ngoài modal
window.onclick = (event) => {
    if (event.target === loginModal) {
        loginModal.style.display = "none";
    }
    if (event.target === registerModal) {
        registerModal.style.display = "none";
    }
};
