/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// JavaScript code for the form validation
let formValidator = function (a, b) {
    let x = document.getElementById(a);
    let y = document.getElementById(b);
    if (x.value === "") {
        y.innerHTML = "Field should not be empty";
        y.classList.add('text-danger');
    } else {
        y.innerHTML = "";
        y.classList.remove('text-danger');
    }
};

//for countries

let getcountries = function () {
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status === 304) {
                //alert(xhr.responseText);
                let jobj = JSON.parse(xhr.responseText);
                //alert(jobj.countries);
                for (x in jobj.countries) {
                    //alert(x);
                    let a = document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.countries[x]));
                    a.setAttribute("value", x);
                    let elm = document.getElementById("con");
                    elm.appendChild(a);
                }

            } else {
                alert("Request unsuccessful");
            }
        }
    };
    xhr.open("get", "http://localhost:8080/elearningproject/c/?action=model&page=FetchCountries", true);
    xhr.send(null);
};

//for content provider

let getuser = function () {
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status === 304) {
                //alert(xhr.responseText);
                let jobj = JSON.parse(xhr.responseText);
                //alert(jobj.countries);
                for (x in jobj.user_type) {
                    //alert(x);
                    let a = document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.user_type[x]));
                    a.setAttribute("value", x);
                    let elm = document.getElementById("ut");
                    elm.appendChild(a);
                }

            } else {
                alert("Request unsuccessful");
            }
        }
    };
    xhr.open("get", "http://localhost:8080/elearningproject/c/?action=model&page=GetUser", true);
    xhr.send(null);
};

//for fetch category


let getCategory = function () {
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status === 304) {
                //alert(xhr.responseText);
                let jobj = JSON.parse(xhr.responseText);
                //alert(jobj.countries);
                for (x in jobj.category) {
                    //alert(x);
                    let a = document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.category[x]));
                    a.setAttribute("value", x);
                    let elm = document.getElementById("catss");
                    elm.appendChild(a);
                }

            } else {
                alert("Request unsuccessful");
            }
        }
    };
    xhr.open("get", "http://localhost:8080/elearningproject/c/?action=model&page=FetchCategory", true);
    xhr.send(null);
};

//fetch sub category
let getSubCategory = function (catss) {
    let xhr = new XMLHttpRequest();
    let dropdown = document.getElementById(catss).value;
    
    //console.log(elm+"............");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status === 304) {
               //alert(xhr.responseText);
                let jobj = JSON.parse(xhr.responseText);
              // alert(jobj.subcategory);
                for (x in jobj.subcategory) {
                 // alert(x);
                    let a = document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.subcategory[x]));
                    a.setAttribute("value", x);
                    
                   let elm = document.getElementById("subcat");
                    //console.log(elm+"........");
                    elm.appendChild(a);
                }

            } else {
                alert("Request unsuccessful");
            }
        }
    };
    xhr.open("get","http://localhost:8080/elearningproject/c/?action=model&page=FetchSubCategory&elm="+dropdown, true);
    xhr.send(null);
};

let getTopic = function (subcategoryId) {
    let xhr = new XMLHttpRequest();
    let dropdown = document.getElementById(subcategoryId).value;
    
    //console.log(dropdown+"............");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status === 304) {
               //alert(xhr.responseText);
                let jobj = JSON.parse(xhr.responseText);
              // alert(jobj.subcategory);
                for (x in jobj.topic) {
                 // alert(x);
                    let a = document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.topic[x]));
                    a.setAttribute("value", x);
                    
                   let elm = document.getElementById("topicid");
                    //console.log(elm+"........");
                    elm.appendChild(a);
                }

            } else {
                alert("Request unsuccessful");
            }
        }
    };
    xhr.open("get","http://localhost:8080/elearningproject/c/?action=model&page=FetchTopic&subcat_id="+dropdown, true);
    xhr.send(null);
};
