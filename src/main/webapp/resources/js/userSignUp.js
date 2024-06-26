jQuery(document).ready(function() {
    let emailIsValid = false;
    let passwordIsValid = false;
    let passwordSameIsValid = false;
	let nameCheck = false;
    let nicknameIsValid = false;
	
    $('#emailConfirm').click(function() {
        let emailType = validateEmail($('#email').val());
        if (emailType == true && $('#email').val() != '') {
            $.ajax({
                url: "emailDuplicate",
                data: {
                    email: $('#email').val()
                },
                success: function(result) {
                    if (result == 0) {
                        emailIsValid = true;
                        alert('사용 가능한 이메일입니다.');
                        let inputElement = document.getElementById("email");
                        inputElement.readOnly = true;
                    } else {
                        emailIsValid = false;
                        alert('이미 가입된 이메일입니다.');
                    }
                }
            });
        } else {
            alert('이메일 입력칸이 비어있거나 이메일 형식이 아닙니다.');
        }
    });
	
	$('#showPassword').click(function() {
        var passwordInput = $('#password');
        if (passwordInput.attr('type') === 'password') {
            passwordInput.attr('type', 'text');
        } else {
            passwordInput.attr('type', 'password');
        }
    });
    
	$('#showPassword2').click(function() {
        var passwordInput = $('#password2');
        if (passwordInput.attr('type') === 'password') {
            passwordInput.attr('type', 'text');
        } else {
            passwordInput.attr('type', 'password');
        }
    });
    
    $('#password').on('blur', function() {
        passwordIsValid = validatePassword($(this).val());
        if (passwordIsValid && $(this).val() != '') {
            passwordMessage.textContent = "사용 가능한 비밀번호 입니다.";
            passwordMessage.style.color = "green";
            passwordMessage.style.display = "block";
            passwordBox.style.marginBottom = "30px";
        } else {
            passwordMessage.textContent = "8자 이상, 대소문자, 숫자, 특수문자(@$!%*?&) 포함";
            passwordMessage.style.color = "red";
            passwordMessage.style.display = "block";
            passwordBox.style.marginBottom = "30px";
        }
    });

    $('#password2').on('blur', function() {
        if ($('#password').val() == $(this).val() && $(this).val() != '') {
            passwordSameIsValid = true;
            passwordMessage2.textContent = "비밀번호가 일치합니다.";
            passwordMessage2.style.color = "green";
            passwordMessage2.style.display = "block";
			passwordBox2.style.marginBottom = "30px";
        } else {
           	passwordMessage2.textContent = "비밀번호가 일치하지 않습니다.";
            passwordMessage2.style.color = "red";
            passwordMessage2.style.display = "block";
            passwordSameIsValid = false;
            passwordBox2.style.marginBottom = "30px";
        }
    });

	$('#name').on('blur', function() {
	    let nameValue = $(this).val();
	    if (nameValue !== '') {
	        let regex = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
	        if (!regex.test(nameValue)) {
	            alert('이름에는 특수문자를 포함할 수 없습니다.');
	            $(this).val('');
	            nameCheck = false;
	        } else {
	            nameCheck = true;
	        }
	    }
	});
    
     $('#nicknameConfirm').click(function() {
        if ($('#nickname').val() != '') {
            $.ajax({
                url: "nicknameConfirm",
                data: {
                    nickname: $('#nickname').val()
                },
                success: function(result) {
                    if (result == 0) {
                        nicknameIsValid = true;
                        alert('사용 가능한 닉네임입니다.');
                        let inputElement = document.getElementById("nickname");
                        inputElement.readOnly = true;
                    } else {
                        nicknameIsValid = false;
                        alert('이미 사용중인 닉네임입니다.');
                    }
                }
            });
        } else {
            alert('닉네임 입력칸이 비어있거나 닉네임 형식이 아닙니다.');
        }
    });
    
    $('#termsCheckbox').change(function() {
         if ($(this).is(':checked')) {
             // 체크됐을 때의 동작
            let emailConfirm = $('#emailConfirm');
            if (nameCheck == true && nicknameIsValid == true && emailIsValid == true && passwordIsValid == true && passwordSameIsValid == true) {
                submitButtons[0].disabled = false;
            } else {
                submitButtons[0].disabled = true;
            }
         }
    });
    
    $('#signup-form').submit(function(event) {
        if (!emailIsValid) {
        	event.preventDefault();
            alert('이메일 중복확인이 필요합니다.');
        } else if (!passwordIsValid) {
            event.preventDefault();
            alert('비밀번호 조건을 확인해주세요.');
        } else if (!passwordSameIsValid) {
            event.preventDefault();
            alert('비밀번호가 일치하지 않습니다.');
        } else if (!nameCheck) {
            event.preventDefault();
            alert('이름 형식이 올바르지 않습니다.');
        } else if (!nicknameIsValid) {
            event.preventDefault();
            alert('닉네임 중복확인이 필요합니다.');
        }
    });
});

function validatePassword(password) {
	if (password.length < 8) {
		return false;
	}
				 
	const regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/;
	if (!regex.test(password)) {
		return false;
	}
	return true;
}

function validateEmail(email) {
    let emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

    if (emailRegex.test(email)) {
        return true;
    } else {
        return false;
    }
}