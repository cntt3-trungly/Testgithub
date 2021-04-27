package com.modal;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginModal {
	
	@NotBlank(message="User không được để trống")
    @Length(min=0, max=40, message="Không nhập quá 40 kí tự")
    private String username;
   
    @NotBlank(message="Passwork không được để trống")
    @Length(min=0, max=40, message="Không nhập quá 40 kí tự")
    private String password;
}
