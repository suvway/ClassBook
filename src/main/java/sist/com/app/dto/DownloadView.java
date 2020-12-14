package sist.com.app.dto;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView{
	//download view 생성단
	public DownloadView() {
		this.setContentType("application/download;utf-8");
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType(this.getContentType());
		File file=(File)model.get("action");
		response.setContentLength((int)file.length());
		String userAgent=request.getHeader("user-Agent");
		String filename="";
		filename=new String(file.getName().getBytes());
		response.setHeader("content-Disposition", "attachment;fileName=\""+filename);
		response.setHeader("content-Transfer-Encoding", "binary");
		//disposition으로 헤더에 파일 위치 지정 encoding 맞춰서 동영상도 지원해준다.
		OutputStream out=response.getOutputStream();
		FileInputStream fis=null;
		try {
			fis=new FileInputStream(file);
			FileCopyUtils.copy(fis,out);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		out.flush();
	}

	
}
