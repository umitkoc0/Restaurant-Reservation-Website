function myFunction(resimler){
    var fullImg=document.getElementById('imgBox')
    fullImg.src=resimler.src
}

$(document).ready(function(){
    $('.kucuk-resimler .resimler').click(function(){
      $(this).addClass('active').siblings('.resimler').removeClass('active');
    });

    $('.menu-button').click(function(){
        $('.menu-wrapper').toggleClass('open');
    });

    $('.menu-wrapper .menu>li .glyphicon').click(function(){
        $(this).parent('li').toggleClass('open');
    });
    $('.menu li').click(function(){
        $(this).addClass('open').siblings('li').removeClass('open');
      });
});