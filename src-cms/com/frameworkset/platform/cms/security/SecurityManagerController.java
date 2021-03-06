/**
 *  Copyright 2008 biaoping.yin
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.  
 */
package com.frameworkset.platform.cms.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.frameworkset.util.annotations.ResponseBody;

import com.frameworkset.common.poolman.DBUtil;
import com.frameworkset.platform.sysmgrcore.manager.RoleManager;
import com.frameworkset.platform.sysmgrcore.manager.SecurityDatabase;

/**
 * <p>Title: SecurityManagerController.java</p>
 *
 * <p>Description: </p>
 *
 * <p>Copyright: Copyright (c) 2007</p>
 *
 * <p>bboss workgroup</p>
 * @Date 2013-9-13
 * @author biaoping.yin
 * @version 1.0
 */
public class SecurityManagerController {
	
	/**
	 * 角色管理＝资源操作授予＝站点应用授权 add xinwang.jiao
	 * 
	 * @param resId
	 * @param resTypeId
	 * @param opId
	 * @param roleId
	 * @param Flag
	 * @param isRecursion
	 * @return
	 */
	public @ResponseBody String siteAppAuthorization(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			String[] opid = request.getParameterValues("alloper");
			//String isRecursion = request.getParameter("isRecursion");
			String resTypeId = request.getParameter("resTypeId");
			String resid = request.getParameter("resid");
			String roleid = request.getParameter("roleid");
			String[] tmp = roleid.split(",");
			String role_type = request.getParameter("role_type");
			request.setAttribute("resTypeId",resTypeId);
			request.setAttribute("siteid",resid);
			request.setAttribute("isOk","1");
			
			HttpSession session = request.getSession();
			session.setAttribute("currRoleId", roleid);
			session.setAttribute("role_type", role_type);
			
			
			DBUtil db = new DBUtil();
			//根据站点id取站点名称
			//SiteManager sm = new SiteManagerImpl();
			String resname = (String)session.getAttribute("resname");//sm.getSiteInfo(resid).getName();
			session.removeAttribute("resname");
			request.setAttribute("resname",resname);
			
			
			RoleManager roleManager = SecurityDatabase.getRoleManager();
			for(int k=0;k<tmp.length;k++){
				//操作和递归为空的话删除当前站点所有操作
				if(opid==null){
					roleManager.deletePermissionOfRole(resid,resTypeId,tmp[k],role_type);
					
				}
				
				//操作不为空和递归为空的话授权当前站点相关操作（先删后存）
				if(opid!=null){
					roleManager.deletePermissionOfRole(resid,resTypeId,tmp[k],role_type);
					roleManager.storeRoleresop(opid,resid,tmp[k],resTypeId,resname,role_type);
					try
					{
						Integer.parseInt(resid);
						//递归给该站点的父站点授可见权限
						String str="SELECT t.site_id,t.name FROM TD_cms_site t START WITH "+
							 " t.site_id="+ resid +" CONNECT BY PRIOR t.mainsite_ID=t.site_id";
						db.executeSelect(str);
						if(db.size()>1){
							for(int j=0;j<db.size();j++)
							{
								String siteid = db.getInt(j,"site_id")+"";
								String name = db.getString(j,"name");
								roleManager.storeRoleresop("write",siteid,tmp[k],resTypeId,name,role_type);
							
							}
						}
					}
					catch(Exception e)
					{
						
					}
				}
			}
		
			return "success";
	}

}
