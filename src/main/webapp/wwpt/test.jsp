<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <name>高级搜索</name>
    <%@ include file="/common/include_header.jsp" %>
    <script>

        /*关闭iframe*/
        function cancle() {
            closeFrame();
        }

    </script>
</head>
<body>
<div class="pop-name">高级搜索</div>
<div class="pop-box-content" style="width: 780px">
    <form id="ff">
        <div class="h400" style="height: 350px">
            <table border="0" bordercolor="" cellpadding="0" cellspacing="1" class="list bg-grey" width="100%">
                <tr class="tr_tit">
                    <td width="20%" class="td_tit"><label>点位安装位置</label></td>
                    <td width="30%" class="td_det">
                        <input class="easyui-validatebox" name="pointAddr" id="pointAddr" result="text"
                               style="width: 96.7%"/>
                    </td>
                    <td width="20%" class="td_tit"><label>点位状态</label></td>
                    <td width="30%" class="td_det">
                        <input class="easyui-validatebox" name="pointStatusText" id="pointStatusText" result="text"
                               style="width: 96.7%"/>
                    </td>
                </tr>
                <tr class="tr_tit">
                    <td class="td_tit" width="20%">
                        <lable>安装时间</lable>
                    </td>
                    <td class="td_det" width="30%">
                        <input class="easyui-datebox " name="startInstalDate" id="startDate" result="text"
                               style="width: 43.7%"/>
                        至
                        <input class="easyui-datebox " name="endInstalDate" id="endDate" result="text"
                               style="width: 43.7%"/>
                    </td>
                    <td class="td_tit" width="20%">
                        <lable>监控点名称</lable>
                    </td>
                    <td class="td_det" width="30%">
                        <input class="easyui-validatebox" name="pointName" id="pointName" result="text"
                               style="width: 96.7%"/>
                    </td>
                </tr>
                <tr class="tr_tit">
                    <td class="td_tit">
                        <lable>监控目标</lable>
                    </td>
                    <td class="td_det">
                        <input class="easyui-validatebox" name="cameraTarget" id="cameraTarget" result="text"
                               style="width: 96.7%"/>
                    </td>
                    <td class="td_tit">
                        <lable>派出所ODF编号</lable>
                    </td>
                    <td class="td_det">
                        <input class="easyui-validatebox " name="odfNo" id="odfNo" result="text" style="width: 96.7%"/>
                    </td>
                </tr>
                <tr class="tr_tit">
                    <td class="td_tit">
                        <lable>机型</lable>
                    </td>
                    <td class="td_det">
                        <input class="easyui-validatebox" name="deviceTypeText" id="deviceTypeText" result="text"
                               style="width: 96.7%"/>
                    </td>
                    <td class="td_tit">
                        <lable>国际编号</lable>
                    </td>
                    <td class="td_det">
                        <input class="easyui-validatebox " name="gbNo" id="gbNo" result="text" style="width: 96.7%"/>
                    </td>
                </tr>
                <tr class="tr_tit">
                    <td class="td_tit">
                        <lable>施工单位</lable>
                    </td>
                    <td class="td_det">
                        <br/>
                        <select class="select-sgdw" name="sgdw" id="sgdw" style="width: 96.7%"></select>
                    </td>
                    <td class="td_tit">
                        <lable>公安单位</lable>
                    </td>
                    <td class="td_det">
                        <select class="select-police" name="police" id="police" style="width: 96.7%"></select>
                    </td>
                </tr>
                <tr class="tr_tit">
                    <td class="td_tit" width="20%">
                        <lable>最近修改日期</lable>
                    </td>
                    <td class="td_det" width="30%">
                        <input class="easyui-datebox " name="lastMDateStart" result="text" style="width: 43.7%"/>
                        至
                        <input class="easyui-datebox " name="lastMDateEnd" result="text" style="width: 43.7%"/>
                    </td>
                    <td class="td_tit" width="20%"> <lable>安装状态 </lable></td>
                    <td class="td_det" width="30%">
                        <select class = "easyui-combobox" name="stateCode" id="stateCode" style="width: 96.7%" value="">
                            <option value=""></option>
                            <option value="10021">待修正</option>
                            <option value="10002">申报纠错</option>
                            <option value="10010">待审核</option>
                            <option value="10020">待安装</option>
                            <option value="10030">待监理确认</option>
                            <option value="10040">待业主确认</option>
                            <option value="10050">已完成</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div class="table-btn-box">
            <a class="easyui-linkbutton l-btn-blue pd10" onclick="doQuery()" style="height: 28px;">查询</a>
            <a class="easyui-linkbutton pd10" onclick="cancle()" style="height: 30px;">取消</a>
        </div>
    </form>
</div>

</body>
</html>