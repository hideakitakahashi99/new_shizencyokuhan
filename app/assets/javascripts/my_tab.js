$(function (){
$(".contents:gt(0)").css("display","none");

$("#tab li").click(function() {
var num = $("#tab li").index(this);
$("#tab li").removeClass("now");
$(this).addClass("now");

$(".contents").css("display","none");
$(".contents").eq(num).css("display","block");
});
});