/**
 * 
 */

var userAgent = navigator.userAgent;
document.write(userAgent + "<br/>")

var mobile = [ "iphone", "ipad", "android" ];

var pcos = [ "mac", "windows" ];

// userAgent에 mobile에 있는 텍스트가 있는지 확인
var result = false;
for ( var idx in mobile) {
	if (userAgent.toLowerCase().indexOf(mobile[idx]) >= 0) {
		result = true;
		break;
	}
}

if (result == true) {
	document.write("스마트폰에서 접속" + "<br/>");
} else {
	// PC 운영체제를 별로
	for ( var idx2 in pcos) {
		if (userAgent.toLowerCase().indexOf(pcos[idx2]) == 0) {
			document.write(pcos[idx2] + " PC에서 접속" + "<br/>");
			break;
		} else {
			document.write(pcos[idx2] + " PC에서 접속" + "<br/>");
			break;

		}
	}
}
