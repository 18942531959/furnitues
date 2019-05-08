package src.main.java.com.qn.furnitue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/login")
public class loginController{

//    @Autowired
//    private ActivityService activityService;

    @RequestMapping("/dict")
    @ResponseBody
    public Map<String, Object> dict(){
        System.out.println("来了鸭~");
        Map<String, Object> map=new HashMap<String, Object>();
      /*  Map<String, Object> maps = activityService.querySelective();
        map.put("success", maps);*/
        map.put("message","返回成功");
        return null;
    }
   /* @Action(value="customer_sendSms")
    @RequestMapping("/login")
    public  String sendSms(Model model) throws IOException {
        //生成短信验证码
        String randomCode = RandomStringUtils.randomNumeric(4);
        //将短信验证码保存到session中
        ServletActionContext.getRequest().getSession().setAttribute(model.getClass().getName(),randomCode);
        //编辑短信内容
        String msg = "你好！本次获取的验证码位："+randomCode;
        //调用SMS服务发送短信
        //String result = SmsUtils.sendSmsByHTTP(model.getTelephone(),msg);
        String result = "000/XXX";
        if(result.startsWith("000")){
            //以"000"开头表示短信发送成功
            return "";
        }else{
            //发送失败，就抛出一个运行期异常
            throw new RuntimeException("短信发送失败,信息码："+result);
        }
    }

    //属性驱动接收页面填写的验证码
    private String checkCode;
    public void setCheckCode(String checkCode) {
        this.checkCode = checkCode;
    }
    @Action(value="customer_regist")
    @RequestMapping("/login2")
    public String regist(Model model){
        //先校验短信验证码，如果不通过就跳回登录页面
        //从session中获取之前生成的短信验证码
        String checkcodeSession = (String) ServletActionContext.getRequest().getAttribute(model.toString());
        System.out.println(checkcodeSession);
//        if(checkcodeSession==null||!checkcodeSession.equals(checkCode)){
//            System.out.println("短信验证码错误！");
//            //短信验证码错误
//            return "producer/producerLogin";
//        }
        //调用webservice连接crm保存客户信息
        System.out.println("客户注册成功...");
        return "producer/producer-index";
    }*/
}


