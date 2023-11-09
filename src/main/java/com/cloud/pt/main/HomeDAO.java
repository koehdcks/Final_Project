package com.cloud.pt.main;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cloud.pt.attendance.AttendanceVO;
import com.cloud.pt.notice.NoticeVO;

@Mapper
public interface HomeDAO {
	
	public List<NoticeVO> getNoticeList()throws Exception;
	
	public AttendanceVO getOnOffTime(AttendanceVO attendanceVO)throws Exception;

}