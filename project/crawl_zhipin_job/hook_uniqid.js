function isEmpty(str) {
    if (str == null || str.length == 0) {return true;}
    return false;
}
Java.perform(function() {
    var o = Java.use('com.hpbr.directhires.utils.o');
    var ab = Java.use('com.hpbr.directhires.utils.ab');
    var md5 = Java.use('com.monch.lbase.util.MD5');
    ab.g.overload('android.content.Context').implementation = function(ctx) {
        var str = "";
        var b = o.b(ctx);
        console.log("imei:"+b);
        var a2 = o.a();
        var c = o.c(ctx);
        var e = o.e(ctx);
        var d = o.d(ctx);
        if (!isEmpty(b)) {str = str + b;}
        if (!isEmpty(a2)) {str = str + a2;}
        if (!isEmpty(c)) {str = str + c;}
        if (!isEmpty(e)) {str = str + e;}
        if (!isEmpty(d)) {str = str + d;}
        var upperCase = md5.convert(str).toUpperCase();
        console.log('upperCase:', upperCase);
        return upperCase;
    }
});