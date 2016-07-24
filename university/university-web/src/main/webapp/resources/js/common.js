

$(function() {
    //内容panel最小化 箭头切换
    $(document).on("click", ".tmpl_panel .collapse_btn", function() {
        $(this).find("span").toggleClass("up-icon-chevron-down up-icon-chevron-up");
    });

    //内容全屏 箭头切换
    $(document).on("click", ".tmpl_panel .fullscreen_btn", function() {
        $(this).find("span").toggleClass("up-icon-resize-full up-icon-resize-small");
        $(this).parents(".tmpl_panel").parent().toggleClass("fullscreen");
    });

    //内容panel close
    $(document).on("click", ".tmpl_panel .tmpl_panel_close", function() {
        $(this).parents(".tmpl_panel").parent().remove();
    });

    //侧栏 手风琴
    $(document).on("click", ".nav_ul>li>a", function() {
        $(this).parent().siblings("li").find("ul").collapse('hide');
        $(this).parents("#accordion").parents(".minsidebar").find("#collapsePerson").collapse('hide');
    });

    //侧栏状态切换
    $(document).on("click", ".sidebtn>a", function() {
        $("#collapsePerson").not(".maxperson").collapse('hide').addClass("up-collapse").removeClass("up-in").attr("aria-expanded", false);
        $(".maxperson").collapse('show');
        $(".sidebar .arrow").toggleClass("up-icon-menu-down up-icon-menu-right");
        $(".sidebar").toggleClass("minsidebar");
        $(".main").toggleClass("maxmain");
        $("#collapsePerson").toggleClass("maxperson");
        $("#head").toggleClass("minhead");
    });
    $(document).on("click", ".main,#head", function() {
        $(".minsidebar .up-collapse").collapse('hide');
    });


    $(document).on("click", ".login_code_btn", function() {
        $(".login_code").fadeIn('100');
    });
    $(document).on("click", ".login_code>div>input", function() {
        $(".login_code").fadeOut('100');
    });
    $(document).on("click", ".login_bg_btn>ul>li", function() {
        $(".login_bg li").css("zIndex","1").eq($(this).index()).css("zIndex","2");
    });


    
    $(window).resize(function(){
    	if($(window).width()<=768){
    		$("#collapsePerson").not(".maxperson").collapse('hide').addClass("up-collapse").removeClass("up-in").attr("aria-expanded", false);
	        $(".sidebar .arrow").addClass("up-icon-menu-right").removeClass('up-icon-menu-down');
	        $(".sidebar").addClass("minsidebar");
	        $(".main").addClass("maxmain");
	        $("#collapsePerson").addClass("maxperson");
	        $("#head").addClass("minhead");
    	}
    	else{
    		$(".maxperson").collapse('show');
	        $(".sidebar .arrow").removeClass("up-icon-menu-right").addClass('up-icon-menu-down');
	        $(".sidebar").removeClass("minsidebar");
	        $(".main").removeClass("maxmain");
	        $("#collapsePerson").removeClass("maxperson");
	        $("#head").removeClass("minhead");
    	}
    })
    if($(window).width()<=768){
		$("#collapsePerson").not(".maxperson").collapse('hide').addClass("up-collapse").removeClass("up-in").attr("aria-expanded", false);
	    $(".sidebar .arrow").addClass("up-icon-menu-right").removeClass('up-icon-menu-down');
	    $(".sidebar").addClass("minsidebar");
	    $(".main").addClass("maxmain");
	    $("#collapsePerson").addClass("maxperson");
	    $("#head").addClass("minhead");
	}
	else{
		$(".maxperson").collapse('show');
	    $(".sidebar .arrow").removeClass("up-icon-menu-right").addClass('up-icon-menu-down');
	    $(".sidebar").removeClass("minsidebar");
	    $(".main").removeClass("maxmain");
	    $("#collapsePerson").removeClass("maxperson");
	    $("#head").removeClass("minhead");
	}
})
