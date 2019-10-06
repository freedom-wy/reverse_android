import hashlib
import json
import requests
import time
from urllib import parse



class HandleZhiPin(object):
    def __init__(self):
        self.header = {
            "User-Agent":"Dalvik/2.1.0 (Linux; U; Android 6.0; Letv x500 Build/DBXCNOP5902812084S)",
            "Host":"api.dianzhangzhipin.com",
            "Connection":"Keep-Alive",
            "Accept-Encoding":"gzip",
        }
        self.username = '手机号'
        self.password = '密码'
        self.imei = 'imei号码'
        #Secret_Key可以通过反编译拿到
        self.key = '9f738a3934abf88b1dca8e8092043fbd'

    def handle_sig(self,url,secretKey='',t=None,flag=None):
        '''
        /api/user/loginaccount=手机号app_id=1001client_info={"version":"6.0","os":"Android","start_time":"1570343057347","resume_time":"1570343057347","channel":"91","model":"Letv||Letv x500","ssid":"\\u43\\u55\\u5f\\u75\\u72\\u32\\u6b","bssid":"dc:71:37:3c:76:c6","imei":"imei号","dzt":0}password=密码req_time=1570343448802uniqid=B703A8F8264059B4BB0F5B74D40A3F79v=4.289f738a3934abf88b1dca8e8092043fbd
        :return:md5
        '''
        url_param = parse.urlparse(url).path
        data = ''
        if flag == 'login':
            data = 'account='+self.username+'app_id=1001client_info={"version":"6.0","os":"Android","start_time":"'+str(self.time_value)+'","resume_time":"'+str(self.time_value)+'","channel":"91","model":"Letv||Letv x500","ssid":"\\\\u43\\\\u55\\\\u5f\\\\u75\\\\u72\\\\u32\\\\u6b","bssid":"dc:71:37:3c:76:c6","imei":"'+self.imei+'","dzt":0}password='+self.password+'req_time='+str(self.time_value)+'uniqid=B703A8F8264059B4BB0F5B74D40A3F79v=4.28'
        elif flag == 'job':
            data = 'app_id=1001cityCode=7client_info={"version":"6.0","os":"Android","start_time":"'+str(self.time_value)+'","resume_time":"'+str(self.time_value)+'","channel":"91","model":"Letv||Letv x500","ssid":"\\\\u43\\\\u55\\\\u5f\\\\u75\\\\u72\\\\u32\\\\u6b","bssid":"dc:71:37:3c:76:c6","network":"unkonwn","imei":"'+self.imei+'","dzt":0}curidentity=1lat=40.228444lng=116.236754page=2positionCode=41135positionId=109217083req_time='+str(self.time_value)+'roam=-1salaryCode=0sortType=1t='+t+'uniqid=B703A8F8264059B4BB0F5B74D40A3F79v=4.28'
        print(data)
        print(url_param,data,self.key,secretKey)
        val = hashlib.md5((url_param+data+self.key+secretKey).encode('utf-8')).hexdigest()
        print(val)
        return val

    def handle_login(self):
        self.time_value = int(time.time()*1000)
        login_api = "https://api.dianzhangzhipin.com/api/user/login"
        sig = self.handle_sig(url=login_api,flag='login')
        url = login_api+'?account='+self.username+'&password='+self.password+'&v=4.28&app_id=1001&req_time='+str(self.time_value)+'&uniqid=B703A8F8264059B4BB0F5B74D40A3F79&client_info={"version":"6.0","os":"Android","start_time":"'+str(self.time_value)+'","resume_time":"'+str(self.time_value)+'","channel":"91","model":"Letv||Letv x500","ssid":"\\\\u43\\\\u55\\\\u5f\\\\u75\\\\u72\\\\u32\\\\u6b","bssid":"dc:71:37:3c:76:c6","imei":"'+self.imei+'","dzt":0}&sig='+sig
        response = requests.get(url=url,headers=self.header)
        print('登录成功')
        return response.text

    def crawl_job(self):
        job_api = "https://api.dianzhangzhipin.com/api/geek/search/boss/v3"
        login_info = json.loads(self.handle_login())
        t_value = login_info['t']
        secretKey = login_info['secretKey']
        sig = self.handle_sig(url=job_api,secretKey=secretKey,t=t_value,flag='job')
        data = 'page=2&lng=116.236754&lat=40.228444&cityCode=7&district=&area=&salaryCode=0&sortType=1&positionId=109217083&positionCode=41135&roam=-1&curidentity=1&v=4.28&app_id=1001&req_time='+str(self.time_value)+'&uniqid=B703A8F8264059B4BB0F5B74D40A3F79&client_info={"version":"6.0","os":"Android","start_time":"'+str(self.time_value)+'","resume_time":"'+str(self.time_value)+'","channel":"91","model":"Letv||Letv x500","ssid":"\\\\u43\\\\u55\\\\u5f\\\\u75\\\\u72\\\\u32\\\\u6b","bssid":"dc:71:37:3c:76:c6","network":"unkonwn","imei":"'+self.imei+'","dzt":0}&t='+t_value+'&sig='+sig+'&'
        print(data)
        self.header['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8'
        response = requests.post(url=job_api,headers=self.header,data=data)
        print(response.text)



if __name__ == '__main__':
    zhipin = HandleZhiPin()
    zhipin.crawl_job()
