<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../public/sidebar_jh.jsp" %>
	
	<div class="w3-container">
		<div class="fixedTop_div"></div>
		<font class="large_jh">프로필 관리</font>
		<hr class="title_hr">
		<!-- CONTENT -->

		<div align="center" class="large_jh cont_mar">
			필수정보를 입력하세요.<br>
			<progress id="progress" style="margin-top: 20px; width: 100%; height: 30px;" value="0" min="0" max="100"></progress>
		</div>
		<hr class="title_hr">
		<div class="cont_mar profileEditNav_div">
			<div class="basicInfo nav_items medium_jh" onclick="basicInfo_load('${msel.intro}','${msel.unable_date}','${msel.mentoring_time}')">기본정보</div>
			<div class="personInfo nav_items medium_jh" onclick="personInfo_load()">인적사항</div>
			<div class="serviceChar nav_items medium_jh" onclick="serviceChar_load()">서비스 요금</div>
			<div class="eduInfo nav_items medium_jh" onclick="eduInfo_load()">학력사항</div>
			<div class="expInfo nav_items medium_jh" onclick="expInfo_load()">경력사항</div>
			<div class="techInfo nav_items medium_jh" onclick="techInfo_load()">기술 및 분야</div>
		</div>
			
		<!-- <iframe id="iframe1" name="iframe1" style="display:none"></iframe> sumit 후 페이지 전환 안되게 막기  target="iframe1"  -->
		
		<!-- id="load_location" div 박스에 ajax로 페이지 전환 -->
		<div class="medium_jh" id="load_location">
			<!-- 설명란 start -->
			<div class="cont_mar mentor_info">
				<div style="text-align: center;">
					각 탭에서
					<span style="color: red;">필수로 요구하는 사항을 모두 입력</span>
					해야 
					<span style="color: #004EA2;">[승인 요청]</span>
					이 가능합니다.
				</div>
				<hr class="title_hr">
			
				<div class="medium_jh" style="color:gray; padding: 20px;">
					<div style="margin-bottom: 5px;">
						<!-- 설명1 -->
						<svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 4px;" width="16" height="16" fill="currentColor" class="bi bi-1-square" viewBox="0 0 16 16">
						  <path d="M9.283 4.002V12H7.971V5.338h-.065L6.072 6.656V5.385l1.899-1.383h1.312Z"/>
						  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2Z"/>
						</svg>&nbsp;
						프로필을 입력하던 도중에 해당 페이지를 벗어나면 데이터가 리셋되오니, 
						<span style="color: #004EA2;">[저장하기]</span> 
						버튼을 클릭하여 입력한 데이터를 저장해 주시기 바랍니다.
					</div>
					<!-- 설명2 -->
					<div style="margin-bottom: 5px;">
						<svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 4px;" width="16" height="16" fill="currentColor" class="bi bi-2-square" viewBox="0 0 16 16">
						  <path d="M6.646 6.24v.07H5.375v-.064c0-1.213.879-2.402 2.637-2.402 1.582 0 2.613.949 2.613 2.215 0 1.002-.6 1.667-1.287 2.43l-.096.107-1.974 2.22v.077h3.498V12H5.422v-.832l2.97-3.293c.434-.475.903-1.008.903-1.705 0-.744-.557-1.236-1.313-1.236-.843 0-1.336.615-1.336 1.306Z"/>
						  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2Z"/>
						</svg>&nbsp;
						프로필을 모두 입력한 후, 마지막 페이지인 '기술 및 분야' 탭에서
						<span style="color: #004EA2;">[승인 요청]</span> 
						버튼을 클릭해야 입력하신 자료가 운영팀에게 전달됩니다.
					</div>
					<!-- 설명3 -->
					<div style="margin-bottom: 5px;">
						<svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 4px;" width="16" height="16" fill="currentColor" class="bi bi-3-square" viewBox="0 0 16 16">
						  <path d="M7.918 8.414h-.879V7.342h.838c.78 0 1.348-.522 1.342-1.237 0-.709-.563-1.195-1.348-1.195-.79 0-1.312.498-1.348 1.055H5.275c.036-1.137.95-2.115 2.625-2.121 1.594-.012 2.608.885 2.637 2.062.023 1.137-.885 1.776-1.482 1.875v.07c.703.07 1.71.64 1.734 1.917.024 1.459-1.277 2.396-2.93 2.396-1.705 0-2.707-.967-2.754-2.144H6.33c.059.597.68 1.06 1.541 1.066.973.006 1.6-.563 1.588-1.354-.006-.779-.621-1.318-1.541-1.318Z"/>
						  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2Z"/>
						</svg>&nbsp;
						<span style="color: #004EA2;">[승인 요청]</span>
						 시, 운영팀에서 멘토님의 자료를 검토하여
						 <span style="color: #004EA2;">[승인 완료]</span>
						  처리를 해야 멘토링 활동이 가능합니다.
					</div>
					<!-- 설명4 -->
					<div style="margin-bottom: 5px;">
						<svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 4px;" width="16" height="16" fill="currentColor" class="bi bi-4-square" viewBox="0 0 16 16">
						  <path d="M7.519 5.057c.22-.352.439-.703.657-1.055h1.933v5.332h1.008v1.107H10.11V12H8.85v-1.559H4.978V9.322c.77-1.427 1.656-2.847 2.542-4.265ZM6.225 9.281v.053H8.85V5.063h-.065c-.867 1.33-1.787 2.806-2.56 4.218Z"/>
						  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2Z"/>
						</svg>&nbsp;
						<span style="color: #004EA2;">[승인 완료]</span>까지 최대 7일이 소요됩니다.
					</div>
					<!-- 설명5 -->
					<div>
						<svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 4px;" width="16" height="16" fill="currentColor" class="bi bi-5-square" viewBox="0 0 16 16">
						  <path d="M7.994 12.158c-1.57 0-2.654-.902-2.719-2.115h1.237c.14.72.832 1.031 1.529 1.031.791 0 1.57-.597 1.57-1.681 0-.967-.732-1.57-1.582-1.57-.767 0-1.242.45-1.435.808H5.445L5.791 4h4.705v1.103H6.875l-.193 2.343h.064c.17-.258.715-.68 1.611-.68 1.383 0 2.561.944 2.561 2.585 0 1.687-1.184 2.806-2.924 2.806Z"/>
						  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2Zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2Z"/>
						</svg>&nbsp;
						기타 문의 사항이 있을 경우, <span style="color: #004EA2;">[1:1 문의]</span>를 남겨주시면 답변 드리겠습니다.
					</div>
				</div>
				
			</div>
			<!-- 설명란 end -->
		</div>

		
	<!-- CONTENT end -->
	</div>
	
	<script src="/mentor/js/mentorProfile_ModifyPaging.js"></script>
	<c:if test="${!empty msel.intro}">
		<script>$('#progress').val(25);</script>
	</c:if>
	
	<script>
	
	// [삭제하기] 버튼 클릭 이벤트
	function delete_btn(del_cnt){
		
		$('#del_div'+del_cnt).remove();
		
	}; // 추가,삭제 버튼 구현 end
	
	/* $('#edit_btn').click(function(){
		
	}); */
	
	</script>
	
<%@ include file="../public/sidebar_footer.jsp" %>