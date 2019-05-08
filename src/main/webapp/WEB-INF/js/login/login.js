// var rootPath;
// $(function () {
//     alert("aaa");
//     rootPath = $("#absolutePath").val();
//     alert(rootPath);
// });

// function login() {
//     var uUsername= $('#uUsername').val();
//     var uPass= $('#uPass').val();
//     var opt={
//         uUsername:uUsername,
//         uPass:uPass
//     }
//     $.ajax({
//         url : rootPath+"UserName/login",
//         data:opt,
//         type : "post",
//         cache:false,
//         dataType : "json",
//         async:true,
//         success : function(data) {
//             console.log(data);
//             if (!data.success){
//                 alert(data.message);
//                 location.href=rootPath+"/UserName/tologin";
//             }else {
//                 location.href=rootPath+"/UserName/toindex";
//             }
//         }
//     });
// }