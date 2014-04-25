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

    $('[data-animate]')
        .each(function(){
            var $dom = $(this);
            var tar = $dom.data('animate');
            var time = parseInt( $dom.data('time') );
            var delay = $dom.data('delay') || 0;
            var easing = $dom.data('easing');
            var begin = $dom.data('begin');
            tar = tar.split(';');
            var tarCss = {} , tmp;
            for (var i = tar.length - 1; i >= 0; i--) {
                tmp = tar[i].split(':');
                if( tmp.length == 2 )
                    tarCss[ tmp[0] ] = $.trim(tmp[1]);
            }
            // if( isUglyIe && tarCss.opacity !== undefined ){
            //     delete tarCss.opacity;
            // }
            $dom.delay( delay )
                .animate( tarCss , time , easing );
            // if( begin ){
            //     setTimeout(function(){
            //         animation_begins[begin].call( $dom );
            //     } , delay);
            // }
        });

    // 页面内容淡出 
    $.when( $('.pbd').hide()
        .delay(500)
        .fadeIn(500) )
        .done(function(){
            $('.sec_propage')
                .find('img')
                .eq(1)
                .delay(200)
                .fadeIn(500);
        });

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

});
