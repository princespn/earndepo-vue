let apiurl = "";
let baseUrl = "";
let assetsUrl = "";
let domainname = "";
let serve_baseUrl = "";
let domainReferral_link = "";

if (process.env.NODE_ENV === "production") {




     ///----------------------- Live  -----------------------------------

     
    // baseUrl = "https://www.azardio.io/replica/az-api/api/";
    // serve_baseUrl = "https://www.azardio.io/replica/az-api/api/";
    // assetsUrl = "https://www.azardio.io/replica/az-api/public/user_files";
    // domainname = "https://www.azardio.io/";
    // domainReferral_link = "https://www.azardio.io/az/";


 ///---------------------------------------------------------




    ///----------------------- Replia -----------------------------------


    // baseUrl = "http://92.38.133.170/earndepo-api/api/";
    // serve_baseUrl = "http://92.38.133.170/earndepo-api/api/";
    // assetsUrl = "http://92.38.133.170/replica/earndepo/public/user-assets"; 
    // domainname = "http://92.38.133.170/";
    // domainReferral_link = "http://92.38.133.170/replica/earndepo/";

     ///---------------------------------------------------------


} else {
    apiurl = "http://localhost/api/";
    serve_baseUrl = "http://localhost:8080/api/";
    //serve_baseUrl = "http://localhost/api/";
    assetsUrl = "http://localhost/earndepo-vue/user_panel/public/user-assets";
    domainname = "http://localhost:8080/";
    domainReferral_link = "http://localhost:8080/";
}


export const apiUserHost = baseUrl;
export const serveApiUserHost = serve_baseUrl;
export const userAssets = assetsUrl;
export const domain = domainname;
export const url = apiurl;
export const domainReferralLink = domainReferral_link;