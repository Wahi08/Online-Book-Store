/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function handleSubmit() {
    const firstname = document.getElementById('firstname').value;
//    const email = document.getElementById('email').value;
//    const number = document.getElementById('number').value;
//    const foodName = document.getElementById('foodName').value;
//    const address = document.getElementById('address').value;

    sessionStorage.setItem("FIRSTNAME", firstname);
//    sessionStorage.setItem("EMAIL", email);
//    sessionStorage.setItem("NUMBER", number);
//    sessionStorage.setItem("FOODNAME", foodName);
//    sessionStorage.setItem("ADDRESS", address);

    return;
}