package connectCode.service;

import java.sql.Timestamp;
import java.util.List;

import connectCode.model.FindMentorDTO;
import connectCode.model.FindMentorInfoDTO;

public interface FindMentorService {

	int getTotal(FindMentorDTO dto);

	List<FindMentorDTO> getMentorList(FindMentorDTO dto);

	List<FindMentorDTO> setRemaining(List<FindMentorDTO> list, String string);

	FindMentorDTO getMentorProfile(int mentor_no);

	List<FindMentorInfoDTO> getCareerList(int mentor_no);

	List<FindMentorInfoDTO> getEducationList(int mentor_no);

	List<FindMentorInfoDTO> getLicenseList(int mentor_no);

	List<FindMentorInfoDTO> getPayment(int mentor_no);

	List<FindMentorInfoDTO> getReviewList(int mentor_no);

	int getReivewAVG(List<FindMentorInfoDTO> review);

	List<String> getDayList();

	String getDayAndTime(int mentor_no);

	List<String> getReservedTime(String reserve_date, int mentor_no);

	FindMentorDTO getMentorInfo(int mentor_no);

	Timestamp getReserveDate(String reserve_day, String reserve_time);

}