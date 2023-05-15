/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


window.addEventListener('load', () => {

    const firstname = sessionStorage.getItem('FIRSTNAME');
//    const email = sessionStorage.getItem('EMAIL');
//    const number = sessionStorage.getItem('NUMBER');
//    const foodName = sessionStorage.getItem('FOODNAME');
//    const address = sessionStorage.getItem('ADDRESS');


    document.getElementById('result-firstname').innerHTML = firstname;
//    document.getElementById('result-email').innerHTML = email;
//    document.getElementById('result-number').innerHTML = number;
//    document.getElementById('result-foodName').innerHTML = foodName;
//    document.getElementById('result-address').innerHTML = address;

})