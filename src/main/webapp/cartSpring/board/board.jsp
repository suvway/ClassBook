<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/web/cartSpring/css/default.css" />

</head>

<body style="background:url('/DosiAir/img/airplane4.jpg') top no-repeat;" >

<!--Wrap-->
 <div id="wrap">
   <!--Header-->
      <jsp:include page="/cartSpring/include/topGnb.jsp"></jsp:include>
   <!--END Header-->

   <!--Container-->
   <div id="sub_container">
      <div class="sub_con3">
         <div class="board_form">   
            <div class="con_title">
               <p>�����Խ���</p>   
            </div>
            
            <div class="board_form01">
               <div class="board_search">
                  <ul>
                     <li>
                        <select id="category">
                           <option value="">�Ӹ���(��ü)</option>
                           <option value="����">����</option>
                                   <option value="����">����</option>
                                   <option value="����/���">����/���</option>
                                   <option value="�⳻����">�⳻����</option>
                                   <option value="���Ϲ�">���Ϲ�</option>
                                   <option value="�߱�/Ƽ�ϼ���">�߱�/Ƽ�ϼ���</option>
                                   <option value="��Ÿ">��Ÿ</option>
                        </select>
                     </li>
                     <li>
                        <input type="text" id="search" name="search">
                        <input type="button" value="�˻�" onclick="location.href='.jsp'">
                     </li>
                  </ul>
               </div>
            <table cellpadding="0" cellspacing="0">
                  <thead>
                     <th width="100px">NO</th>
                     <th width="100px">ī�װ�</th>
                     <th width="200px">����</th>
                     <th width="340px">����</th>
                     <th width="100px">�ۼ���</th>
                     <th width="120px">�ۼ���</th>
                  </thead>
                  <tbody>
                     <tr>
                        <td>1</td>
                        <td>��Ÿ</td>
                        <td><a href="info.jsp">�����̵��ϴ�.</a></td>
                        <td>�����̵��ϴ�.</td>
                        <td>�ۼ��ھ��̵�</td>
                        <td>2015-12-15</td>
                     </tr>
                  </tbody>
               </table>
               
               
               <!-- paging ���� -->
               <div class="board_page" style="font-family: verdana;">

               <a href="#">������ </a>
               <font color="#ccc">������ </font>
               <span>
                   <a href="#"><font color="red" style="font-weight: bold;">
                   </font></a>               
                   <a href="#"></a>
               </span>
               <a>1</a>
                     <a href="#">������</a>
                     <font color="#ccc">������</font>
                     <a href="#"></a>
               <div class="board_page" style="font-family: verdana;">

               <!-- �۾��� ��ư -->
               <p>
               <a href="writer.jsp">
               <button type="button" class="board_button"  onclick="location.href='writer.jsp'">�۾���</button></a></p>
               
               </div>
            <!-- paging �� -->
               
            </div>
            <div>
            </div>
         </div>
      </div>   
   <!--END Container-->
   </div>
      
   <!--Footer-->
      <jsp:include page="/cartSpring/include/footer.jsp"></jsp:include>
   <!--END Footer-->
 </div><!--END Wrap-->
    
</body>
</html>