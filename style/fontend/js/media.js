/**
 *
 * MALIBU madia
 * zx 2014 04 25
 *
 */
(function ($) {
    var MADIA={
        /**
         * 初始化方法,用于功能函数的入口
         * @param {string}
         * @example
         **/
        init:function(){
            //事件绑定
            this.bindEvent();
        },
        /**
         * 事件绑定
         * @param {string}
         * @example
         **/
        bindEvent:function(){
            $('.madiapho_slide').live({
                'mouseenter':function(){
                    if($(this).children('.madiapho_list').children('li').length != 1){
                        $(this).children('.madia_arr').show()
                    }
                },
                'mouseleave':function(){
                    $(this).children('.madia_arr').hide()
                }
            })
            $('.madia_next').live('click',function(){
                var thisimg  = $(this).siblings('.madiapho_list').children('.on')
                thisimg.next('li').addClass('on')
                thisimg.removeClass('on')
                $(this).siblings('.madiapho_list').append(thisimg)

            })
            $('.madia_prev').live('click',function(){
                var thisimg  = $(this).siblings('.madiapho_list').children('.on')
                $(this).siblings('.madiapho_list').prepend($(this).siblings('.madiapho_list').children('li').eq(-1))
                thisimg.prev('li').addClass('on')
                thisimg.removeClass('on')
            })
            $('.madiapho_list').each(function(){
                $(this).children('li').eq(0).addClass('on')
            })
        }
    };
    MADIA.init();  
})(jQuery);




