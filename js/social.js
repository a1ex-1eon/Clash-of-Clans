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
    var s = new Array('http://vkontakte.ru/share.php?url=' + u + '" title="���������� � ��������"', 'http://www.facebook.com/sharer.php?u=' + u + '&t=' + t + '" title="���������� � Facebook"', 'http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl=' + u + '&title=' + t + '" title="�������� � �������������"', 'http://twitter.com/home?status=' + t + ' - ' + u + '" title="�������� � Twitter"', 'http://connect.mail.ru/share?url=' + u + '&title=' + t + '" title="���������� � ���� ����@Mail.Ru"', 'http://www.google.com/bookmarks/mark?op=edit&output=popup&bkmk=' + u + '&title=' + t + '" title="��������� �������� � Google"', 'http://zakladki.yandex.ru/newlink.xml?url=' + u + '&name=' + t + '" title="�������� � ������.��������"');
    for (i = 0; i < s.length; i++) document.write('<a style="background:url(http://' + window.location.hostname + '/templates/clash/images/social.png) -' + 24 * i + 'px 0" href="' + s[i] + '" target="_blank"></a>')
}

