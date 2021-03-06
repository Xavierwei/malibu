$(function(){
    var LP = {};
    /**
     * 根据cookie名称取得cookie值
     * @static
     * @param {string} name cookie名称
     * @return {string}
     */
    LP.getCookie = function( name ){
        var doc=document, val = null, regVal;

        if (doc.cookie){
            regVal = doc.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
            if(regVal != null){
                val = decodeURIComponent(regVal[2]);
            }
        }
        return val;
    };
    /**
     * 设置cookie
     * @static
     * @param {string} name cookie名称
     * @param {string} value cookie值
     * @param {int} expire 过期时间(秒)，默认为零
     * @param {string} path 路径，默认为空
     * @param {string} domain 域
     * @return {boolean} 设置成功返回true
     */
    LP.setCookie = function(name, value, expire, path, domain, s){
        if ( document.cookie === undefined ){
            return false;
        }

        expire = parseInt(expire) || 0;
        if (expire < 0){
            value = '';
        }

        var dt = new Date();
        dt.setTime(dt.getTime() + 1000 * expire);

        document.cookie = name + "=" + encodeURIComponent(value) +
            ((expire) ? "; expires=" + dt.toGMTString() : "") +
            ((s) ? "; secure" : "");

        return true;
    };

    /**
     * 移除cookie
     * @static
     * @param {string} name cookie名称
     * @param {string} path 路径，默认为空
     * @param {string} domain 域
     * @return {boolean} 移除成功返回true
     */
    LP.removeCookie = function(name, path, domain){
        return LP.setCookie(name, '', -1, path, domain);
    };

//    $('[data-animate]')
//        .each(function(){
//            var $dom = $(this);
//            var tar = $dom.data('animate');
//            var time = parseInt( $dom.data('time') );
//            var delay = $dom.data('delay') || 0;
//            var easing = $dom.data('easing');
//            var begin = $dom.data('begin');
//            tar = tar.split(';');
//            var tarCss = {} , tmp;
//            for (var i = tar.length - 1; i >= 0; i--) {
//                tmp = tar[i].split(':');
//                if( tmp.length == 2 )
//                    tarCss[ tmp[0] ] = $.trim(tmp[1]);
//            }
//            // if( isUglyIe && tarCss.opacity !== undefined ){
//            //     delete tarCss.opacity;
//            // }
//            $dom.delay( delay )
//                .animate( tarCss , time , easing );
//            // if( begin ){
//            //     setTimeout(function(){
//            //         animation_begins[begin].call( $dom );
//            //     } , delay);
//            // }
//        });

    // 页面内容淡出 
//    $.when( $('.pbd').hide()
//        .delay(500)
//        .fadeIn(500) )
//        .done(function(){
//            $('.sec_propage')
//                .find('img')
//                .eq(1)
//                .delay(200)
//                .fadeIn(500);
//        });

    jQuery('#mycarousel').jcarousel({
            wrap: 'circular'
        });


    function showAgeCheckPanel(){
        $('.shade').fadeIn(200);
        $('.pop').show()
            .delay( 200 )
            .animate({
                opacity: 1,
                top: '50%'
            } , 500 , 'easeOutQuart');
    }

    // bind validate event for login panel

    $('.ipt.ipt1')
        .bind('blur' , function(){
            if( !this.value.match(/^\d+$/) 
            || this.value < 1900
            || this.value > (new Date).getFullYear()  ){
                this.style.border = "1px solid red";
                this.setAttribute('error' , 1);
            } else {
                this.style.border = "";
                this.setAttribute('error' , 0);
            }
        });
    $('.ipt.ipt2')
        .bind('blur' , function(){
            if( !this.value.match(/^\d+$/) 
            || this.value > 12
            || this.value == 0 ){
                this.style.border = "1px solid red";
                this.setAttribute('error' , 1);
            } else {
                this.style.border = "";
                this.setAttribute('error' , 0);
            }
        });
    $('.ipt.ipt3')
        .bind('blur' , function(){
            if( !this.value.match(/^\d+$/) 
            || this.value > 31 
            || this.value == 0){
                this.style.border = "1px solid red";
                this.setAttribute('error' , 1);
            } else {
                this.style.border = "";
                this.setAttribute('error' , 0);
            }
        });
    $('.login').click(function(){
        var errorHappened = false;
        $( '.ipt' ).each(function(){
            if( !this.value || this.getAttribute( 'error' ) == 1 ){
                errorHappened = true;
                return false;
            }
        });
        if( errorHappened ){
            alert( '年龄输入有错，请检查标红的输入框' );
            return false;
        }

        // check 18 years old
        if( (new Date).getFullYear() - $( '.ipt' ).eq(0).val() <= 18 ){
            $('.pop .age-input').hide();
            $('.pop .age-error').show();
        } else {
            $('.pop').fadeOut();
            $('.shade').fadeOut();
            // save cookie
            if( $('#remember').is(':checked') ){
                LP.setCookie('_age_checked_' , 1 , 24 * 60 * 31 );
            }
        }
        return false;
    });

    $('.return').click(function(){
        $('.pop .age-input').show();
        $('.pop .age-error').hide();
    });


    // panel event

    if( !LP.getCookie('_age_checked_') ){
        //showAgeCheckPanel();
    }

    //计算星级别
    function  getStar(num){
        if(!num)
            return 0;
        else if(num <= 10)
            return 20;
        else if(num <= 50)
            return 40;
        else if(num <= 200)
            return 60;
        else if(num <= 500)
            return 80;
        else
            return 100;
    }

    //投票页面
    $('.video_setstar').click(function(){
        videourl=$(this).attr("href");
        video = $(this);
        $.ajax({
            type: "get",
            url: videourl,
            dataType: "json",
            success: function (data) {
                if(data.success)
                {
                    star=video.next("span").children("em");
                    star.html(parseInt(star.html()) + 1);
                    video.parent("div").next("div").children(".act_votestat").css("width",getStar(star.html())+"%");
                    //alert(data.message);
                    var videoWrap = video.parents('li').find('.act_video');
                    videoWrap.append('<div class="msg">'+data.message+'</div>');
                }
                else
                {
                    var videoWrap = video.parents('li').find('.act_video');
                    videoWrap.append('<div class="msg">'+data.message+'</div>');
                    //alert(data.message);
                }
                videoWrap.find('.msg').fadeIn();
                videoWrap.find('.msg').delay(1000).fadeOut();

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                //TODO
            }
        });
        //alert($(this).attr("href"));
        return false;
    });

    $('.nav1').click(function(){
        ga('send', 'event', 'nav', 'brand', 'brand');
    });

    $('.nav2').click(function(){
        ga('send', 'event', 'nav', 'products', 'products');
    });

    $('.nav3').click(function(){
        ga('send', 'event', 'nav', 'media', 'media');
    });

    $('.tmalllink').click(function(){
        ga('send', 'event', 'nav', 'tmalllink', 'tmalllink');
    });

    $('.pt_pro1 a').click(function(){
        ga('send', 'event', 'nav', 'tmalllink', 'tmalllink');
    });

    $('.pt_pro2 a').click(function(){
        ga('send', 'event', 'nav', 'tmalllink', 'tmalllink');
    });

    $('.sec_prolist li').eq(0).find('a').click(function(){
        ga('send', 'event', 'nav', 'original_drink2', 'original_drink2');
    });

    $('.sec_prolist li').eq(1).find('a').click(function(){
        ga('send', 'event', 'nav', 'original_drink1', 'original_drink1');
    });

    $('.sec_prolist li').eq(2).find('a').click(function(){
        ga('send', 'event', 'nav', 'original_drink3', 'original_drink3');
    });

    $('.sec_prolist li').eq(3).find('a').click(function(){
        ga('send', 'event', 'nav', 'original_drink4', 'original_drink4');
    });

    $('.sec_prolist li').eq(4).find('a').click(function(){
        ga('send', 'event', 'nav', 'original_drink5', 'original_drink5');
    });

    $('.sec_prolist li').eq(5).find('a').click(function(){
        ga('send', 'event', 'nav', 'original_drink6', 'original_drink6');
    });

    $('.vjs-big-play-button').live('click',function(){
        ga('send', 'event', 'nav', 'home_video', 'home_video');
    })
});
