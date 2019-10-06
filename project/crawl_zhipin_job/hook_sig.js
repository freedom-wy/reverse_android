Java.perform(function(){
        // 定位到相关类
        var match_class = Java.use("com.hpbr.directhires.base.Request");
        var f = Java.use("com.hpbr.directhires.a.f");
        var c = Java.use("com.hpbr.directhires.config.c");
        console.log(match_class);
        match_class.a.overload("java.lang.String","java.util.Map","boolean").implementation = function(v1,v2,v3){
            console.log("开始Hook");
            console.log("v1:",v1);
            console.log("v2:",v2);
            var str2 = '9f738a3934abf88b1dca8e8092043fbd';
            var f_c = f.c();
            console.log('f_c:'+f_c);
            str2 = str2 + f_c;
            console.log('str2:'+str2);
            var str = "";
            var c_a = c.a(v1);
            console.log('c_a:'+c_a);
            str = str + c_a;
            console.log('str:'+str);
            var value = this.a(v1,v2,v3);
            console.log("return:"+value);
            console.log("hook结束");
            return value;
        };
        match_class.a.overload("java.util.Map").implementation = function(v1){
            console.log('map_v1:'+v1);
            var value = this.a(v1);
            console.log('map_return:'+value);
            return value;
        };
    });
