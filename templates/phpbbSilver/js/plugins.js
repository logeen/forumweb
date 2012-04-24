
// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function(){
  log.history = log.history || [];   // store logs to an array for reference
  log.history.push(arguments);
  if(this.console) {
    arguments.callee = arguments.callee.caller;
    var newarr = [].slice.call(arguments);
    (typeof console.log === 'object' ? log.apply.call(console.log, console, newarr) : console.log.apply(console, newarr));
  }
};

// make it safe to use console.log always
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
{console.log();return window.console;}catch(err){return window.console={};}})());


// place any jQuery/helper plugins in here, instead of separate, slower script files.

//MD5
/*
 * A JavaScript implementation of the RSA Data Security, Inc. MD5 Message
 * Digest Algorithm, as defined in RFC 1321.
 * Version 2.2 Copyright (C) Paul Johnston 1999 - 2009
 * Other contributors: Greg Holt, Andrew Kepert, Ydnar, Lostinet
 * Distributed under the BSD License
 * See http://pajhome.org.uk/crypt/md5 for more info.
 */

function md5(m){function g(b,d,a,c,e,f,g){return h(l(h(h(b,d&a|~d&c),h(e,g)),f),d)}function i(b,d,a,c,e,f,g){return h(l(h(h(b,d&c|a&~c),h(e,g)),f),d)}function j(b,d,a,c,e,f,g){return h(l(h(h(b,d^a^c),h(e,g)),f),d)}function k(b,d,a,c,e,f,g){return h(l(h(h(b,a^(d|~c)),h(e,g)),f),d)}function h(b,d){var a=(b&65535)+(d&65535);return(b>>16)+(d>>16)+(a>>16)<<16|a&65535}function l(b,d){return b<<d|b>>>32-d}return function(b){for(var d="",a,c=0;c<b.length;c++)a=b.charCodeAt(c),d+="0123456789abcdef".charAt(a>>>
4&15)+"0123456789abcdef".charAt(a&15);return d}(function(b){for(var d=Array(b.length>>2),a=0;a<d.length;a++)d[a]=0;for(a=0;a<8*b.length;a+=8)d[a>>5]|=(b.charCodeAt(a/8)&255)<<a%32;b=8*b.length;d[b>>5]|=128<<b%32;d[(b+64>>>9<<4)+14]=b;for(var b=1732584193,a=-271733879,c=-1732584194,e=271733878,f=0;f<d.length;f+=16)var l=b,m=a,n=c,o=e,b=g(b,a,c,e,d[f+0],7,-680876936),e=g(e,b,a,c,d[f+1],12,-389564586),c=g(c,e,b,a,d[f+2],17,606105819),a=g(a,c,e,b,d[f+3],22,-1044525330),b=g(b,a,c,e,d[f+4],7,-176418897),
e=g(e,b,a,c,d[f+5],12,1200080426),c=g(c,e,b,a,d[f+6],17,-1473231341),a=g(a,c,e,b,d[f+7],22,-45705983),b=g(b,a,c,e,d[f+8],7,1770035416),e=g(e,b,a,c,d[f+9],12,-1958414417),c=g(c,e,b,a,d[f+10],17,-42063),a=g(a,c,e,b,d[f+11],22,-1990404162),b=g(b,a,c,e,d[f+12],7,1804603682),e=g(e,b,a,c,d[f+13],12,-40341101),c=g(c,e,b,a,d[f+14],17,-1502002290),a=g(a,c,e,b,d[f+15],22,1236535329),b=i(b,a,c,e,d[f+1],5,-165796510),e=i(e,b,a,c,d[f+6],9,-1069501632),c=i(c,e,b,a,d[f+11],14,643717713),a=i(a,c,e,b,d[f+0],20,-373897302),
b=i(b,a,c,e,d[f+5],5,-701558691),e=i(e,b,a,c,d[f+10],9,38016083),c=i(c,e,b,a,d[f+15],14,-660478335),a=i(a,c,e,b,d[f+4],20,-405537848),b=i(b,a,c,e,d[f+9],5,568446438),e=i(e,b,a,c,d[f+14],9,-1019803690),c=i(c,e,b,a,d[f+3],14,-187363961),a=i(a,c,e,b,d[f+8],20,1163531501),b=i(b,a,c,e,d[f+13],5,-1444681467),e=i(e,b,a,c,d[f+2],9,-51403784),c=i(c,e,b,a,d[f+7],14,1735328473),a=i(a,c,e,b,d[f+12],20,-1926607734),b=j(b,a,c,e,d[f+5],4,-378558),e=j(e,b,a,c,d[f+8],11,-2022574463),c=j(c,e,b,a,d[f+11],16,1839030562),
a=j(a,c,e,b,d[f+14],23,-35309556),b=j(b,a,c,e,d[f+1],4,-1530992060),e=j(e,b,a,c,d[f+4],11,1272893353),c=j(c,e,b,a,d[f+7],16,-155497632),a=j(a,c,e,b,d[f+10],23,-1094730640),b=j(b,a,c,e,d[f+13],4,681279174),e=j(e,b,a,c,d[f+0],11,-358537222),c=j(c,e,b,a,d[f+3],16,-722521979),a=j(a,c,e,b,d[f+6],23,76029189),b=j(b,a,c,e,d[f+9],4,-640364487),e=j(e,b,a,c,d[f+12],11,-421815835),c=j(c,e,b,a,d[f+15],16,530742520),a=j(a,c,e,b,d[f+2],23,-995338651),b=k(b,a,c,e,d[f+0],6,-198630844),e=k(e,b,a,c,d[f+7],10,1126891415),
c=k(c,e,b,a,d[f+14],15,-1416354905),a=k(a,c,e,b,d[f+5],21,-57434055),b=k(b,a,c,e,d[f+12],6,1700485571),e=k(e,b,a,c,d[f+3],10,-1894986606),c=k(c,e,b,a,d[f+10],15,-1051523),a=k(a,c,e,b,d[f+1],21,-2054922799),b=k(b,a,c,e,d[f+8],6,1873313359),e=k(e,b,a,c,d[f+15],10,-30611744),c=k(c,e,b,a,d[f+6],15,-1560198380),a=k(a,c,e,b,d[f+13],21,1309151649),b=k(b,a,c,e,d[f+4],6,-145523070),e=k(e,b,a,c,d[f+11],10,-1120210379),c=k(c,e,b,a,d[f+2],15,718787259),a=k(a,c,e,b,d[f+9],21,-343485551),b=h(b,l),a=h(a,m),c=h(c,
n),e=h(e,o);d=[b,a,c,e];b="";for(a=0;a<32*d.length;a+=8)b+=String.fromCharCode(d[a>>5]>>>a%32&255);return b}(function(b){for(var d="",a=-1,c,e;++a<b.length;)c=b.charCodeAt(a),e=a+1<b.length?b.charCodeAt(a+1):0,55296<=c&&56319>=c&&56320<=e&&57343>=e&&(c=65536+((c&1023)<<10)+(e&1023),a++),127>=c?d+=String.fromCharCode(c):2047>=c?d+=String.fromCharCode(192|c>>>6&31,128|c&63):65535>=c?d+=String.fromCharCode(224|c>>>12&15,128|c>>>6&63,128|c&63):2097151>=c&&(d+=String.fromCharCode(240|c>>>18&7,128|c>>>
12&63,128|c>>>6&63,128|c&63));return d}(m)))};