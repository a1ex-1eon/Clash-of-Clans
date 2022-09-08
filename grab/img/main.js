$(function(){
    String.prototype.getHostByUrl = function(){
        var url = this;
        if(url.length){
            if(url.substr(0, 7) == 'http://') url = url.substr(7);
            if(!url.length) return false;
            if(url.indexOf('/') != -1) url = url.substr(0, url.indexOf('/'));
            return url;
        }else return false;
    };

    var nowSelected = -1;
    $('.tabs a').click(function(){
        if(nowSelected != -1) $('.tabs a:eq(' + nowSelected + ')').css('background-color', '#7A4635');
        $(this).css('background-color', '#AF2821');
        if(nowSelected != -1) $('.tabContents>div:eq(' + nowSelected + ')').fadeOut();
        $('.tabContents>div:eq(' + $(this).index() + ')').fadeIn();
        nowSelected = $(this).index();
    });

    var hash = window.location.hash;
    if(hash.length){
        $('.tabs>a').each(function(){
            if(this.href.substr(this.href.indexOf('#')) == hash){
                $(this).click();
                return false;
            }
        });
    }else{
        $('.tabs>a:first').click();
    }

    var authLogins = new Array();
    var cookies = document.cookie.split(';');
    if(cookies.length){
        var listLogins = $('#authLogins'), listSites = $('#authSites');
        for(var i = 0; i < cookies.length; i++){
            var cookie = $.trim(cookies[i]);
            if(cookie.substr(0, 11) == "authLogins_"){
                var index = cookie.indexOf("_", 12);
                var login = cookie.substr(11, index - 11).replace("-smll-", "_");
                var host  = cookie.substr(index + 1, cookie.indexOf("=") - index - 1);
                var password = decodeURIComponent(cookie.substr(cookie.indexOf("=") + 1));
                if(authLogins[login] == undefined) authLogins[login] = new Array();
                authLogins[login][host] = password;
            }
        }
    }
    for(var logins in authLogins) $('#authLogins').append('<option value="' + logins + '">' + logins + '</option>');
    $('#authLogins').change(function(){
        var val = $('option:selected', this).attr('value');
        $('#authSites').html('');
        for(var sites in authLogins[val]) $('#authSites').append('<option value="' + sites + '">' + sites + '</option>');
        $('#authSites>option:first').attr('selected', 'selected');
        $('table input', document.getElementById('authTab')).attr('disabled', '');
    });

    $('#authAdd').click(function(){
        var host, login, pass;
        if(!(host = $('#url').val().getHostByUrl())) return false;
        if(!(login = $('#login').val()) || !(pass = $('#password').val())) return false;
        if(authLogins[login] == undefined){
            $('#authLogins').append('<option value="' + login + '">' + login + '</option>');
            authLogins[login] = new Array();
        }
        authLogins[login][host] = pass;
        $.cookie("authLogins_" + login.replace("_", "-smll-") + "_" + host, pass, {expires: 30});
    });
    $('.authorizeBlock>form').submit(function(){ $('#authAdd').click(); return false; });

    $('#deleteLogin').click(function(){
        var login = $('#authLogins>option:selected').attr('value');
        $('#authSites').html('');
        $('#authLogins>option:selected').remove();
        for(var host in authLogins[login]) $.cookie("authLogins_" + login.replace("_", "-smll-") + "_" + host, null);
        authLogins[login] = undefined;
        $('#authLogins>option:first').attr('selected', 'selected');
    });
    $('#deleteSite').click(function(){
        var login = $('#authLogins>option:selected').attr('value');
        var host  = $('#authSites>option:selected').attr('value');
        $.cookie("authLogins_" + login.replace("_", "-smll-") + "_" + host, null);
        authLogins[login][host] = undefined;
        if($('#authSites>option:selected').length == 1){
            authLogins[login] = undefined;
            $('#authLogins>option:selected').remove();
        }
        $('#authSites>option:selected').remove();
    });

    $('#config input').each(function(){
        var val = $.cookie("grab_" + this.id);
        if(val != null){
            if(this.type == "checkbox") this.checked = (val == "1" ? "checked" : "");
            else this.value = val;
        }
    });

    $('#config input').change(function(){
        $.cookie("grab_" + this.id, (this.type == "checkbox") ? $(this).getCheckbox() : $(this).val(), { expires: 30 });
    });

    $('#configResizeImg').attr('checked') ? $('#configMaxWidth').attr('disabled', '') : $('#configMaxWidth').attr('disabled', 'disabled');

    function verifyData(){
        
        var options = new Array();

        var url = $('#url').attr('value');
        if(url.substr(0, 7) != "http://") url = "http://" + url;
        if(url.substr(-1) != "/") url += "/";
        if(url.length - 8 < 1) return false;
        options["url"] = url;
        delete url;

        var startPage  = parseInt($("#startPage").val());
        var finishPage = parseInt($("#finishPage").val());
        if(startPage > finishPage || startPage < 1 || finishPage < 1) return false;
        delete startPage, finishPage;

        options["cats"] = $("#category").val() ? $("#category").val().join(",") : "";

        options["login"] = "";
        options["pass"]  = "";
        var login;
        if($("#chooseLoginAutomatically").getCheckbox()){
            var host = options["url"].getHostByUrl();
            for(login in authLogins){
                for(var hosts in authLogins[login]){
                    if(hosts == host){
                        options["login"] = login;
                        options["pass"]  = authLogins[login][hosts];
                        break;
                    }
                }
            }
            delete host;
        }else{
            options["login"] = login = $('#authLogins').val() ? $('#authLogins').val() : "";
            options["pass"]  = login ? authLogins[login][$('#authSites').val()] : "";
        }
        delete login;

        $('#config input').each(function(){
            if(this.type == "checkbox") options[this.id.substr(6, 1).toLowerCase() + this.id.substr(7)] = $(this).getCheckbox();
            else options[this.id.substr(6, 1).toLowerCase() + this.id.substr(7)] = this.value;
        });
		
		$('#config select').each(function() {
			options[this.id.substr(6, 1).toLowerCase() + this.id.substr(7)] = $('option:selected', this).attr('value');
		});
        
        return options;

    }

    var grab = new Function, view = new Function;

    view.prototype = {

        template: "<div id=\"grab{%id}\"><a href=\"{%url}\">{%url}</a> &mdash; ({%categories}) &mdash; <span>Загружается</span><br /><div class=\"pages\"><a href=\"#\" style=\"display: none;\" title=\"Побробовать еще раз.\"><img src=\"img/refresh.png\" alt=\"\" /></a></div></div>",

        pageTemplate: "<span id=\"pageId{%id}\">Страница №{%num} <img src=\"img/wait.png\" alt=\"\"><span style=\"margin-left: 10px;\"></span></span><br />",

        addProccess: function(options, count){

            var temp = this.template;
            options.id = count;

            for(var k in options) temp = temp.split("{%" + k + "}").join(options[k]);

            $("#grabbing").append(temp);

        },

        viewPage: function(pageNum, id){
            return this.pageTemplate.replace("{%num}", pageNum).replace("{%id}", id);
        }

    };

    grab.prototype = {

        count: 1,

        countGen: 1,

        startGrab: function(options){

            var cats    = (options.cats).split(",");
            var catsStr = "";
            if(!options.cats.length) catsStr = "Категория не выбрана";
            else{
                for(var k in cats){
                    catsStr += $("#category>option[value=" + cats[k] + "]").text() + ", ";
                }
                catsStr = catsStr.substr(0, catsStr.length - 2);
            }

            View.addProccess({
                url: options.url,
                categories: catsStr
            }, this.countGen);

            delete cats;

            var page = new Array;
            page.start  = parseInt($("#startPage").val());
            page.finish = parseInt($("#finishPage").val());

            var url = options.url;
            var i = 0;
            var delay = parseInt(options["delayAfter"]) * 1000;

            $.ajax({
                cache: false,
                type: "GET",
                data: {
                    url: url,
                    pageStart: page.start,
                    pageFinish: page.finish,
                    categories: catsStr
                },
                timeout: 0,
                url: "writeLog.php"
            });

            var prepending = "";

            for(; page.start <= page.finish; page.finish--){
                prepending = View.viewPage(page.finish, this.count) + prepending;
                options.url = url + "page/" + page.finish;
                setTimeout("Grab.setGrab(" + toJSON(options) + ", " + this.count + ");", delay*i);
                i++;
                this.count++;
            }

            $("#grab" + this.countGen + ">.pages").prepend(prepending);

            delete page, url, i, delay, prepending;

            this.countGen++;

        },

        setGrab: function(options, id){

            $("#pageId" + id + ">img").attr("src", "img/loader.gif");

            $.ajax({
                cache: false,
                data: options,
                timeout: 0,
                url: "grabber.php",
                success: function(text){
                    Grab.grabSuccess(text, id, options);
                },
                error: function(err){
                    Grab.grabError(err, id, options);
                }
            });

        },

        grabSuccess: function(text, id, options){
            if(text == "1") $("#pageId" + id + ">img").attr("src", "img/ok.png");
            else{
                $("#pageId" + id + ">img").attr("src", "img/fail.png");
                $("#pageId" + id + ">span").text(text);
            }
        },

        grabError: function(errCode, id, options){
            $("#pageId" + id + ">img").attr("src", "img/fail.png");
            $("#pageId" + id + ">span").html("Ошибка номер: " + errCode.status);
        }

    };

    window.Grab = new grab;
    window.View = new view;

    $('#start').click(function(){

        var options;
        if(!(options = verifyData())) return false;

        Grab.startGrab(options);

    });
	
	if (!$('#configMust_date_rand').attr('checked')) $('.dateSelect select').attr('disabled', 'disabled');
	
	$('#configMust_date_rand').click(function() {
		if (!$(this).attr('checked')) $('.dateSelect select').attr('disabled', 'disabled');
		else $('.dateSelect select').attr('disabled', '');
	});
	
});