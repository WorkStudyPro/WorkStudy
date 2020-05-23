$(document).ready(function () {

	//Execute the slideShow
	slideShow();

});

function slideShow() {
	$('#gallery a').css({ opacity: 0.0 });
	$('#gallery a:first').css({ opacity: 1.0 });
	$('#gallery .caption').css({ opacity: 0.0 });
	$('#gallery .caption').css({ width: $('#gallery a').find('img').css('width') });
	$('#gallery .content').html($('#gallery a:first').find('img').attr('rel'))
		.animate({ opacity: 0.0 }, 400);
	setInterval('gallery()', 6000);
}

function gallery() {
	var current = ($('#gallery a.show') ? $('#gallery a.show') : $('#gallery a:first'));
	var next = ((current.next().length) ? ((current.next().hasClass('caption')) ? $('#gallery a:first') : current.next()) : $('#gallery a:first'));
	var caption = next.find('img').attr('rel');
	next.css({ opacity: 0.0 })
		.addClass('show')
		.animate({ opacity: 1.0 }, 1000);
	current.animate({ opacity: 0.0 }, 1000)
		.removeClass('show');
	$('#gallery .caption').animate({ opacity: 0.0 }, { queue: false, duration: 50 }).animate({ height: '1px' }, { queue: true, duration: 300 });
	$('#gallery .caption').animate({ opacity: 0.0 }, 100).animate({ height: '100px' }, 6000);
	$('#gallery .content').html(caption);


}


$(document).ready(function () {


	$(".official-plat ul li:first-child").hover(function () {
		$(".weixin").show();
		$(".weibo").hide();
	});
	$("li[title='点击打开官方微博']").hover(function () {
		$(".weixin").hide();
		$(".weibo").show();
	});

	//href="#a_null"的统一设置为无效链接
	$("a[href='#a_null']").click(function () {
		return false;
	});


});

//波浪动画
$(function () {
	var marqueeScroll = function (id1, id2, id3, timer) {
		var $parent = $("#" + id1);
		var $goal = $("#" + id2);
		var $closegoal = $("#" + id3);
		$closegoal.html($goal.html());
		function Marquee() {
			if (parseInt($parent.scrollLeft()) - $closegoal.width() >= 0) {
				$parent.scrollLeft(parseInt($parent.scrollLeft()) - $goal.width());
			}
			else {
				$parent.scrollLeft($parent.scrollLeft() + 1);
			}
		}

		setInterval(Marquee, timer);
	}
	var marqueeScroll1 = new marqueeScroll("marquee-box", "wave-list-box1", "wave-list-box2", 20);
	var marqueeScroll2 = new marqueeScroll("marquee-box3", "wave-list-box4", "wave-list-box5", 40);
});

