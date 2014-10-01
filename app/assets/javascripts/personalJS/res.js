$(window).resize(function(){
		doRes();
		
	});
function doRes(){
	var a=1;
	var s=$('.contentI').width();
	var h=$(window).height();
	var aux=200;
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
	if(s<=imgGrind*6 && h<833){
			imgGrind=100;
	
			$('.basic').each(function(){
				doGrow(0,$(this));
			});
		}else{
			$('.basic').css("display","inline");
		}
	if(h<628){
		imgGrind=150;
	
		$('.basic').each(function(){
			doGrow(0,$(this));
		});
	}else{
		imgGrind=aux;
		$('.basic').each(function(){
			doGrow(0,$(this));
		});
	}
}
