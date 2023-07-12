package com.kosa.hrsystem.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class WorkScheduleVO {
	private int emp_num;
	private String emp_name;
	private Date schedule;
	private Date go_work;
	private Date leave_work;
	private String work_name;
	private String dept;
	private String rank;
	private String remarks;
	private double totalTime;

}