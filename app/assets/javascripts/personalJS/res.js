$(window).resize(function(){
		doRes();
	});
function doRes(){
	var a=1;
	var s=$('.contentI').width();
	if(s<=imgGrind*6){
		$('.spacer').html("");
		a=1;
		$('.remove').remove();
		if(s<imgGrind*3){
			$('.basic').each(function() {
				if(a%3==0){
					$(this).after("<span class='remove'><br></span>")
				}
				a++;
			});
		}
	}
	if(s>=imgGrind*6){
		$('.spacer').html("<br>");
	}
}
