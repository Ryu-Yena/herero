<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body style="background-color: #fff">
	<div id="container"
		style="width: 100%; position: relative; height: 600px;" class="locale-ko ">
		<div class="calendar-container ">
			<div class="header" id="nav1" style="overflow: hidden;">
			</div>
			<div class="view-cap t1-embed">&nbsp;</div>
			<div class="view-cap t2-embed">&nbsp;</div>
			<div class="view-container-border" id="calendarContainer1">
				<div id="viewContainer1" class="view-container" style="height: 600px;">
					<div class="mv-container">
						<table cellspacing="0" class="mv-daynames-table" id="mvDaynamesTable" >
							<tbody>
								<tr>
									<th class="mv-dayname" title="일">일</th>
									<th class="mv-dayname" title="월">월</th>
									<th class="mv-dayname" title="화">화</th>
									<th class="mv-dayname" title="수">수</th>
									<th class="mv-dayname" title="목">목</th>
									<th class="mv-dayname" title="금">금</th>
									<th class="mv-dayname" title="토">토</th>
								</tr>
							</tbody>
						</table>
						<div class="mv-event-container" id="mvEventContainer2">
							<div class="month-row" style="top: 0%; height: 21%">
								<table cellpadding="0" cellspacing="0" class="st-bg-table">
									<tbody>
										<tr>
											<td class="st-bg st-bg-fc">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
										</tr>
									</tbody>
								</table>
								<table cellpadding="0" cellspacing="0" class="st-grid">
									<tbody>
										<tr>
											<td
												class="st-dtitle st-dtitle-fr st-dtitle-fc st-dtitle-nonmonth"><span
												class="ca-cdp26204">28</span></td>
											<td class="st-dtitle st-dtitle-fr"><span
												class="ca-cdp26209">3월 1일</span></td>
											<td class="st-dtitle st-dtitle-fr"><span
												class="ca-cdp26210">2</span></td>
											<td class="st-dtitle st-dtitle-fr"><span
												class="ca-cdp26211">3</span></td>
											<td class="st-dtitle st-dtitle-fr"><span
												class="ca-cdp26212">4</span></td>
											<td class="st-dtitle st-dtitle-fr"><span
												class="ca-cdp26213">5</span></td>
											<td class="st-dtitle st-dtitle-fr"><span
												class="ca-cdp26214">6</span></td>
										</tr>
										<tr>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c"><div class="st-c-pos">
													<div class="ca-evp1  rb-n"
														style=" color:#fff; background-color: #b80f12;">
														<div class="rb-ni">삼일절</div>
													</div>
												</div></td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="month-row" style="top: 20%; height: 21%">
								<table cellpadding="0" cellspacing="0" class="st-bg-table">
									<tbody>
										<tr>
											<td class="st-bg st-bg-fc">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
										</tr>
									</tbody>
								</table>
								<table cellpadding="0" cellspacing="0" class="st-grid">
									<tbody>
										<tr>
											<td class="st-dtitle st-dtitle-fc"><span
												class="ca-cdp26215">7</span></td>
											<td class="st-dtitle"><span class="ca-cdp26216">8</span></td>
											<td class="st-dtitle"><span class="ca-cdp26217">9</span></td>
											<td class="st-dtitle"><span class="ca-cdp26218">10</span></td>
											<td class="st-dtitle"><span class="ca-cdp26219">11</span></td>
											<td class="st-dtitle"><span class="ca-cdp26220">12</span></td>
											<td class="st-dtitle"><span class="ca-cdp26221">13</span></td>
										</tr>
										<tr>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="month-row" style="top: 40%; height: 21%">
								<table cellpadding="0" cellspacing="0" class="st-bg-table">
									<tbody>
										<tr>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
										</tr>
									</tbody>
								</table>
								<table cellpadding="0" cellspacing="0" class="st-grid">
									<tbody>
										<tr>
											<td class="st-dtitle"><span
												class="ca-cdp26222">14</span></td>
											<td class="st-dtitle"><span
												class="ca-cdp26223">15</span></td>
											<td class="st-dtitle"><span class="ca-cdp26224">16</span></td>
											<td class="st-dtitle"><span class="ca-cdp26225">17</span></td>
											<td class="st-dtitle"><span class="ca-cdp26226">18</span></td>
											<td class="st-dtitle"><span class="ca-cdp26227">19</span></td>
											<td class="st-dtitle"><span class="ca-cdp26228">20</span></td>
										</tr>
										<tr>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="month-row" style="top: 60%; height: 21%">
								<table cellpadding="0" cellspacing="0" class="st-bg-table">
									<tbody>
										<tr>
											<td class="st-bg st-bg-fc">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
										</tr>
									</tbody>
								</table>
								<table cellpadding="0" cellspacing="0" class="st-grid">
									<tbody>
										<tr>
											<td class="st-dtitle st-dtitle-fc st-dtitle-down"><span
												class="ca-cdp26229">21</span></td>
											<td class="st-dtitle"><span class="ca-cdp26230">22</span></td>
											<td class="st-dtitle"><span class="ca-cdp26231">23</span></td>
											<td class="st-dtitle"><span class="ca-cdp26232">24</span></td>
											<td class="st-dtitle"><span class="ca-cdp26233">25</span></td>
											<td class="st-dtitle"><span class="ca-cdp26234">26</span></td>
											<td class="st-dtitle"><span class="ca-cdp26235">27</span></td>
										</tr>
										<tr>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="month-row" style="top: 80%; bottom: 0">
								<table cellpadding="0" cellspacing="0" class="st-bg-table">
									<tbody>
										<tr>
											<td class="st-bg st-bg-fc">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
											<td class="st-bg">&nbsp;</td>
										</tr>
									</tbody>
								</table>
								<table cellpadding="0" cellspacing="0" class="st-grid">
									<tbody>
										<tr>
											<td class="st-dtitle st-dtitle-fc"><span
												class="ca-cdp26236">28</span></td>
											<td class="st-dtitle"><span class="ca-cdp26237">29</span></td>
											<td class="st-dtitle"><span class="ca-cdp26238">30</span></td>
											<td class="st-dtitle"><span class="ca-cdp26239">31</span></td>
											<td class="st-dtitle st-dtitle-nonmonth"><span
												class="ca-cdp26241">4월 1일</span></td>
											<td class="st-dtitle st-dtitle-nonmonth"><span
												class="ca-cdp26242">2</span></td>
											<td class="st-dtitle st-dtitle-nonmonth"><span
												class="ca-cdp26243">3</span></td>
										</tr>
										<tr>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
											<td class="st-c st-s">&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				<div id="loading1" class="loading"
					style="right: 25px; display: none;">로드 중...</div>
				<div style="display: none; z-index: 1001; width: 400px;" class="bubble">
					<table cellpadding="0" cellspacing="0" class="bubble-table">
						<tbody>
							<tr>
								<td class="bubble-cell-side"><div class="bubble-corner"
										id="tl:0">
										<div class="bubble-sprite bubble-tl"></div>
									</div></td>
								<td class="bubble-cell-main"><div class="bubble-top"></div></td>
								<td class="bubble-cell-side"><div class="bubble-corner"
										id="tr:0">
										<div class="bubble-sprite bubble-tr"></div>
									</div></td>
							</tr>
							<tr>
								<td colspan="3" class="bubble-mid"><div
										style="overflow: hidden" id="bubbleContent:0"></div></td>
							</tr>
							<tr>
								<td><div class="bubble-corner" id="bl:0">
										<div class="bubble-sprite bubble-bl"></div>
									</div></td>
								<td><div class="bubble-bottom"></div></td>
								<td><div class="bubble-corner" id="br:0">
										<div class="bubble-sprite bubble-br"></div>
									</div></td>
							</tr>
						</tbody>
					</table>
					<div id="bubbleClose:0" class="bubble-closebutton"
						onclick="gcal$func$[2]();"></div>
					<div class="prong" id="prong:0" onclick="gcal$func$[2]()">
						<div class="bubble-sprite"></div>
					</div>
				</div>
				<div style="display: none; z-index: 1001; width: 400px;"
					class="bubble">
					<table cellpadding="0" cellspacing="0" class="bubble-table">
						<tbody>
							<tr>
								<td class="bubble-cell-side"><div class="bubble-corner"
										id="tl:1">
										<div class="bubble-sprite bubble-tl"></div>
									</div></td>
								<td class="bubble-cell-main"><div class="bubble-top"></div></td>
								<td class="bubble-cell-side"><div class="bubble-corner"
										id="tr:1">
										<div class="bubble-sprite bubble-tr"></div>
									</div></td>
							</tr>
							<tr>
								<td colspan="3" class="bubble-mid"><div
										style="overflow: hidden" id="bubbleContent:1"></div></td>
							</tr>
							<tr>
								<td><div class="bubble-corner" id="bl:1">
										<div class="bubble-sprite bubble-bl"></div>
									</div></td>
								<td><div class="bubble-bottom"></div></td>
								<td><div class="bubble-corner" id="br:1">
										<div class="bubble-sprite bubble-br"></div>
									</div></td>
							</tr>
						</tbody>
					</table>
					<div id="bubbleClose:1" class="bubble-closebutton"
						onclick="gcal$func$[4]();"></div>
					<div class="prong" id="prong:1" onclick="gcal$func$[4]()">
						<div class="bubble-sprite"></div>
					</div>
				</div>
			</div>
			<div class="view-cap t2-embed">&nbsp;</div>
			<div class="view-cap t1-embed">&nbsp;</div>
		</div>
	</div>

</body>