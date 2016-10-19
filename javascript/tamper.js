if(window.hasOwnProperty('define')) {
	alert("s3: define exists");
} else {
	alert("s3: define does not exist");
}

if(window.hasOwnProperty('require')) {
	alert("s3: require exists");
//	console.log(require.cache);
} else {
	alert("s3: require does not exist");
}
