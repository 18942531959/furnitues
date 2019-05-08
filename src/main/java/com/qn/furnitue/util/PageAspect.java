package com.qn.furnitue.util;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Aspect
public class PageAspect {

    @Around("execution(* *..*Service.*Pager(..))")
    public Object invoke(ProceedingJoinPoint orgs) throws Throwable{
        Object[] param = orgs.getArgs();
        PageBean pageBean=null;
        for (Object params : param) {
            if(params instanceof PageBean){
                pageBean=(PageBean)params;
                break;
            }
        }
        if(null!=pageBean&&pageBean.isPagination())
            PageHelper.startPage(pageBean.getPage(),pageBean.getRows());

        Object proceed = orgs.proceed(param);

        if(null!=pageBean&&pageBean.isPagination()){
            List lst=(List)proceed;
            PageInfo pageInfo=new PageInfo(lst);
            System.out.println("页码：" + pageInfo.getPageNum());
            System.out.println("页大小：" + pageInfo.getPageSize());
            System.out.println("总记录：" + pageInfo.getTotal());
            pageBean.setTotal(pageInfo.getTotal()+"");
        }


        return proceed;
    }
}
