$(document).ready(function() {
    $("#social").mouseover(function() {
        $(this).animate({
            width: "24px"
        }, {
            queue: false,
            duration: 80
        })
    });
    $("#social").mouseout(function() {
        $(this).animate({
            width: "24px"
        }, {
            queue: false,
            duration: 100
        })
    });
});


function social(u, t) {
    if (!u) u = location.href;
    if (!t) t = document.title;
    u = encodeURIComponent(u);
    t = encodeURIComponent(t);
    var s = new Array('http://vkontakte.ru/share.php?url=' + u + '" title="Поделиться В Контакте"', 'http://www.facebook.com/sharer.php?u=' + u + '&t=' + t + '" title="Поделиться в Facebook"', 'http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl=' + u + '&title=' + t + '" title="Добавить в Одноклассники"', 'http://twitter.com/home?status=' + t + ' - ' + u + '" title="Добавить в Twitter"', 'http://connect.mail.ru/share?url=' + u + '&title=' + t + '" title="Поделиться в Моем Мире@Mail.Ru"', 'http://www.google.com/bookmarks/mark?op=edit&output=popup&bkmk=' + u + '&title=' + t + '" title="Сохранить закладку в Google"', 'http://zakladki.yandex.ru/newlink.xml?url=' + u + '&name=' + t + '" title="Добавить в Яндекс.Закладки"');
    for (i = 0; i < s.length; i++) document.write('<a style="background:url(http://' + window.location.hostname + '/templates/clash/images/social.png) -' + 24 * i + 'px 0" href="' + s[i] + '" target="_blank"></a>')
}

