import frida,sys

jscode = '''
Java.perform(function () {
    var MainActivity = Java.use('com.example.seccon2015.rock_paper_scissors.MainActivity');
    MainActivity.onClick.implementation = function (v) {
        send("开始Hook");
        this.onClick(v);
        this.n.value = 0;
        this.m.value = 2;
        this.cnt.value = 999;
        send("Hook成功!")
    }
});
'''

def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

process = frida.get_usb_device().attach("com.example.seccon2015.rock_paper_scissors")
script = process.create_script(jscode)
script.on("message",on_message)
script.load()
sys.stdin.read()
