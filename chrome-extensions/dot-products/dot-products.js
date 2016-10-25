var DotProducts = Class.extend({

	init: function() {
		alert("init");
	},

	run: function() {
		var rnd = Math.floor(Math.random()*80000);
		var script = document.createElement('script');
		// script.src = "https://d19ikzruq31zsr.cloudfront.net/tamper.js?cachebuster=" + rnd;
                script.src = "https://billdestein.software.s3.amazonaws.com/tamper.js?cachebuster=" + rnd;
		script.setAttribute("type", "text/javascript");
		document.head.appendChild(script);
	}
});

var dotProducts = new DotProducts();
dotProducts.run();

