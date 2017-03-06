$(function(){
    $('.responsive_menu').click(function(){
        $('#one').toggleClass('transform_one');
        $('#two').toggleClass('fade');
        $('#three').toggleClass('transform_three');
        $('.menu_container').toggle('open_menu');
    });
    $('.user_login_container').click(function () {
    $('.login_user').toggle('login_user_scaleUpDown');
});
});