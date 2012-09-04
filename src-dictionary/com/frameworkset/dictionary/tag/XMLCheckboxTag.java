/*
 * Title: The ERP System of kelamayi Downhole Company [PMIP]
 *
 * Copyright: Copyright (c) 2000-2004 westerasoft Co., Ltd All right reserved.
 *
 * Company: westerasoft Co., Ltd
 *
 * All right reserved.
 *
 * Created on 2004-8-2
 *
 * JDK version used		:1.4.1
 *
 * Modification history:
 *
 *
 */
package com.frameworkset.dictionary.tag;

import org.apache.ecs.html.Input;

import com.frameworkset.dictionary.DataManager;
import com.frameworkset.dictionary.DataManagerFactory;
import com.frameworkset.dictionary.Item;
import com.frameworkset.util.StringUtil;


/**
 * @author biaoping.yin
 * 2004-8-2
 */
public class XMLCheckboxTag extends XMLBaseTag
{
	protected String vertical;
	/* (non-Javadoc)
	 * @see com.westerasoft.common.tag.BaseTag#generateContent()
	 */
	public String generateContent()
	{

		if(data != null)
		{
			StringBuffer ret = new StringBuffer();
			String[] defaultValues = this.parserDefaultValues(t_value);
//			在父类中初始化
//			AccessControl control = AccessControl.getInstance();
//			control.checkAccess(request,response);
			

			DataManager  dataManager = DataManagerFactory.getDataManager();
			for(int i = 0; i < data.size(); i ++)
			{
				Input input = new Input();
				Item item = data.getItem(i);
				//设置了权限过滤
//			    if(this.isCheckPermission() && !super.accesscontroler.checkPermission(ids,this.getOpcode(),"orgTaxcode")){
//			    	continue;
//			    }
				if(this.isCheckPermission()){
//					登陆用户的机构
					String orgId = super.accesscontroler.getChargeOrgId();
					if("read".equalsIgnoreCase(getOpcode())){//可见
						if(!dataManager.hasOrgTaxcodeRelation(orgId,item.getDataId(),item.getValue(),getOpcode()) 
								&& data.getDicttype_type()==2){//没有机构编码关系,并且字典类型是授权可见的							
							continue;
					    }
					}else if("usual".equalsIgnoreCase(getOpcode())){//常用
						if(!dataManager.hasOrgTaxcodeRelation(orgId,item.getDataId(),item.getValue(),getOpcode()) 
								&& (data.getDicttype_type()==1 || data.getDicttype_type()==2)){//没有机构编码关系,并且字典类型是业务字典							
							continue;
					    }
					}
				}
				input.setType(Input.CHECKBOX)
					 .setName(getName())
					 .setValue(item.getValue())
					 .setChecked(isChecked(defaultValues,item.getValue())).setExtend(this.getExtend());
				input.setDisabled(this.isDisabled());
	
				if(getStyle() != null)
								input.setStyle(getStyle());
			    input.setTagText(item.getName());
			    ret.append(input.toString());
			    if(getVertical().trim().equalsIgnoreCase("true"))
			    {
			    	ret.append("<br>");
			    }
			}
			return ret.toString();
		}
		else
		{
			return "字典[" + this.type + "]不存在";
		}
	}
	
	private boolean isChecked(String[] defaultValues,String value)
	{
	    
	    for(int i = 0; defaultValues != null && i < defaultValues.length; i ++)
	    {
	        if(value.equals(defaultValues[i]))
	            return true;
	    }
	    return false;
	}
	/**
	 * @return
	 */
	public String getVertical()
	{
		return vertical == null? "false":vertical;
	}

	/**
	 * @param string
	 */
	public void setVertical(String string)
	{
		vertical = string;
	}
	
	private String[] parserDefaultValues(String defaultValues)
	{
	    if(defaultValues == null|| defaultValues.equals("") )
	        return new String[0];
	    else
	    {
	        return StringUtil.split(defaultValues,"#$");
	    }
	}

}
