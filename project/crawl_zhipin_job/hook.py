import frida,sys

def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

process = frida.get_usb_device().attach("com.hpbr.directhires")
with open("test.js",encoding='utf-8') as f:
    jscode = f.read()
script = process.create_script(jscode)
script.on("message",on_message)
script.load()
sys.stdin.read()
