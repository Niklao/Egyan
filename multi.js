

var RenderUrlsToFile, arrayOfUrls, system;
var i=2;
system = require("system");
var stg="final.html?pagN=";

RenderUrlsToFile = function(urls, callbackPerUrl, callbackFinal) {
    var getFilename, next, page, retrieve, urlIndex, webpage;
    urlIndex = 0;
    webpage = require("webpage");
    page = null;
	while(i<=4)
	{var str=stg+i;
	arrayOfUrls.push(str);
	i++;
	}
    getFilename = function() {
        return urlIndex + ".png";
    };
    next = function(status, url, file) {
        //page.close();
        callbackPerUrl(status, url, file);
        return retrieve();
    };
    retrieve = function() {
        var url;
        if (urls.length > 0) {
            url = urls.shift();
            urlIndex++;
			
            page = webpage.create();
            page.viewportSize = {
                width: 500,
                height: 700
            };
            page.settings.userAgent = "Phantom.js bot";
            return page.open( url, function(status) {
                var file;
                file = getFilename();
		console.log(file);
                if (status === "success") {
                    return window.setTimeout((function() {
                        page.render(file);
                        return next(status, url, file);
                    }), 200);
                } else {
                    return next(status, url, file);
                }
            });
        } else {
            return callbackFinal();
        }
    };
    return retrieve();
};

arrayOfUrls = null;

if (system.args.length > 1) {
    arrayOfUrls = Array.prototype.slice.call(system.args, 1);
} else {
    console.log("Usage: phantomjs render_multi_url.js [domain.name1, domain.name2, ...]");
    arrayOfUrls = ["final.html?pagN=1, iwuhf.html"];
}

RenderUrlsToFile(arrayOfUrls, (function(status, url, file) {
    if (status !== "success") {
        return console.log("Unable to render '" + url + "'");
    } else {
        return console.log("Rendered '" + url + "' at '" + file + "'");
    }
}), function() {
	console.log("Final");
    return phantom.exit();
});
