const btnLogin = document.querySelector('.js-modal-btn');
const btnClose1 = document.querySelector('.btn-close');
const btnClose2 = document.querySelector('.btn-close2');
const modal = document.querySelector('.js-modal-login');
const modalContainer = document.querySelector('.js-modal-login_container');

function showModal() {
    modal.classList.add('open');
}

function hideModal() {
    modal.classList.remove('open');
}

btnLogin.addEventListener('click', showModal);
btnClose1.addEventListener('click', hideModal);
btnClose2.addEventListener('click', hideModal);
modalContainer.addEventListener('click', function (event) {
    event.stopPropagation();
})

//forgot
const btnOnFG = document.querySelector('.btn_forgot');
const btnOffFG = document.querySelector('.closeFG');
const modalFG = document.querySelector('.modal-forgot');
const modalContainerFG = document.querySelector('.modal-forgot_container');

function showModalFG() {
    modalFG.classList.add('open');
}

function hideModalFG() {
    modalFG.classList.remove('open');
}

btnOnFG.addEventListener('click', showModalFG);
btnOffFG.addEventListener('click', hideModalFG);
modalContainerFG.addEventListener('click', function (event) {
    event.stopPropagation();
})