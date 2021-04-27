package com.modal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostUpdateModal {
	private String id;
	private String title;
	private String content;
	private String tags;
	private String status;
}
