let apiurl = "";
let baseUrl = "";
let assetsUrl = "";
let domainname = "";
let serve_baseUrl = "";

if (process.env.NODE_ENV === "production") {

    ///----------------------- Live ----------------------------------- 

    // baseUrl = "https://www.kinjatoken.com/kinja-api/api/";
    // serve_baseUrl ="https://www.kinjatoken.com/kinja-api/api/admin/";
    // assetsUrl = "https://www.kinjatoken.com/kinja-admin/admin-assets";
    // domainname = "https://www.kinjatoken.com/";


    ///----------------------- Replia -----------------------------------


    // baseUrl = "http://92.38.133.170/earndepo-api/api/admin/";
    // serve_baseUrl = "http://92.38.133.170/earndepo-api/api/admin/";
    // assetsUrl = "http://92.38.133.170/replica/earndepo-admin/admin-assets"; 
    // domainname = "http://92.38.133.170/";

     ///---------------------------------------------------------

} else {
    apiurl="http://localhost/api/admin/";
    //serve_baseUrl = "http://localhost:8081/api/admin/";
    serve_baseUrl = "http://localhost:8080/api/admin/";
    assetsUrl = "http://localhost/earndepo-vue/admin_panel/public/admin-assets";
    // domainname = "http://localhost:8080/";
    domainname = "https://www.earndepo.com/";
}
export const apiUserHost = baseUrl;
export const serveApiUserHost = serve_baseUrl;
export const adminAssets = assetsUrl;
export const domain = domainname;
export const url = apiurl;