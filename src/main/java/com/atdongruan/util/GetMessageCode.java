package com.atdongruan.util;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GetMessageCode {
    private static final String QUERY_PATH="https://api.miaodiyun.com/20150822/industrySMS/sendSMS";
    private static final String ACCOUNT_SID="e4faa60e5bc74310b39b907aad4e8160";
    private static final String AUTH_TOKEN="0c6ae3c8cbc4491ca30eef6a98d0f074";


    //根据相应的手机号发送验证码
    public static String getCode(String phone){

        String rod=smsCode();
        String timestamp=getTimestamp();
        String sig=getMD5(ACCOUNT_SID,AUTH_TOKEN,timestamp);
        String tamp="【奥德科技】您的验证码为"+rod+"，如非本人操作，请忽略此短信。";
        System.out.println(phone+"电话");
        System.out.println(rod+"验证码");
        System.out.println(sig+"MD5加密  "+tamp);
        /**
         *         这里一定要与新建模板中的短信内容一致，一个空格都不能多，否者短信打死都发不过去哦
         */
        OutputStreamWriter out=null;
        BufferedReader br=null;
        StringBuilder result=new StringBuilder();
        try {
            URL url=new URL(QUERY_PATH);
            HttpURLConnection connection=(HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            /**
             * 设置是否允许数据写入*/
            connection.setDoInput(true);
            /**
             * 设置是否允许参数数据输出*/
            connection.setDoOutput(true);
            /**
             * 设置链接响应时间*/
            connection.setConnectTimeout(5000);
            /**
             * 设置参数读取时间*/
            connection.setReadTimeout(10000);
            connection.setRequestProperty("Content-type","application/x-www-form-urlencoded");
            /**
             *             提交请求
             */
            out=new OutputStreamWriter(connection.getOutputStream(),"UTF-8");
            String args=getQueryArgs(ACCOUNT_SID, tamp, phone, timestamp, sig, "JSON");
            out.write(args);
            out.flush();
            /**
             *             读取返回参数
             */

            br=new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTF-8"));
            String temp="";
            while((temp=br.readLine())!=null){
                result.append(temp);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        JSONObject json=new JSONObject(result.toString());
        String respCode=json.getString("respCode");
        String defaultRespCode="00000";
        if(defaultRespCode.equals(respCode)){
            return rod;
        }else{
            return defaultRespCode;
        }
    }
    /**
     *     定义一个请求参数拼接方法
     */
    public static String getQueryArgs(String accountSid,String smsContent,String to,String timestamp,String sig,String respDataType){
        return "accountSid="+accountSid+"&smsContent="+smsContent+"&to="+to+"&timestamp="+timestamp+"&sig="+sig+"&respDataType="+respDataType;
    }
    /**获取时间戳*/
    public static String getTimestamp(){
        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    }
    /**
     *     sing签名
     */
    public static String getMD5(String sid,String token,String timestamp){

        StringBuilder result=new StringBuilder();
        String source=sid+token+timestamp;
        /**
         获取某个类的实例
         */

        try {
            MessageDigest digest=MessageDigest.getInstance("MD5");
            /**
             *  要进行加密的东西
             */
            byte[] bytes=digest.digest(source.getBytes());
            for(byte b:bytes){
                String hex=Integer.toHexString(b&0xff);
                if(hex.length()==1){
                    result.append("0"+hex);
                }else{
                    result.append(hex);
                }
            }
        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result.toString();
    }
    //创建验证码
    public static String smsCode(){
        String random=(int)((Math.random()*9+1)*100000)+"";
        return random;
    }
}