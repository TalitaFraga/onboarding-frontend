<%@ include file="/init.jsp" %>

<aui:form name="fm" onsubmit="register(event)">
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="basic-info">
			<aui:row>
				<aui:col width="50">
					<aui:input label="first-name" name="firstName" required="true" type="text">
					<aui:validator name="alphanum" />
					<aui:validator name="maxLength">50</aui:validator>
					</aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="last-name" name="lastName" required="true" type="text">
						<aui:validator name="alphanum" />
						<aui:validator name="maxLength">50</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="email-addresss" name="emailAddress" required="true" type="email" placeholder="email-placeholder">
						<aui:validator name="email" />
						<aui:validator name="maxLength">255</aui:validator>
					</aui:input>

				</aui:col>

				<aui:col width="50">
					<aui:input label="username" name="userName" required="true" type="text">
						<aui:validator name="alphanum" />
						<aui:validator name="minLength">4</aui:validator>
						<aui:validator name="maxLength">16</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="password" name="password" required="true" type="password" >
						<aui:validator errorMessage="password-validation-message" name="custom" >
							function customValidator(password) {
								const regex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;
								return regex.test(password);
							}		
						</aui:validator>
					</aui:input>
				</aui:col>

				<aui:col width="50">
					<aui:input label="confirm-password" name="confirmPassword" required="true" type="password">
						<aui:validator name="equalTo">'#<portlet:namespace />password'</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:select label="genre" name="genre" required="true">
						<aui:option label="genre-1" value="Male"/>
						<aui:option label="genre-2" value="Female"/>
						<aui:option label="genre-3" value="Other"/>
					</aui:select>
				</aui:col>
				<aui:col width="50">
					<aui:input label="birthday" name="birthday" type="date" required="true">
						<aui:validator name="date"/>	
						<aui:validator errorMessage="birthday-validation-message" name="custom">
							function birthdayValidator (date){
								const today = new Date().getTime();
								const birthday = new Date(date + "T00:00:00").getTime();
								const age = Math.abs(Math.round((((birthday - today)/1000)/(60*60*24))/365.25));
								return age >=13;
							}
						</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="phone">
			<aui:row>
				<aui:col width="50">
					<aui:input label="home-phone" name="homePhone" type="number" placeholder="phone-placeholder">
						<aui:validator name="number"/>
						<aui:validator errorMessage="phone-validation-message" name="custom">
							function phoneValidator (phone){
								var regex =  /^\d{10}$/;
								return regex.test(phone);
							}
						</aui:validator>
					</aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="mobile-phone" name="mobilePhone" type="number" placeholder="mobile phone">
						<aui:validator name="number"/>
						<aui:validator errorMessage="mobile-phone-validation-message" name="custom">
							function mobilePhoneValidator (phone){
								var regex =  /^\d{11}$/;
								return regex.test(phone);
							}
						</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="address">
			<aui:row>
				<aui:col width="50">
					<aui:input label="address-1" name="address1" type="text" required="true" >
						<aui:validator name="maxLength">255</aui:validator>
					</aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="address-2" name="address2" type="text">
						<aui:validator name="maxLength">255</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="city" name="city" type="text" required="true" >
						<aui:validator name="maxLength">255</aui:validator>
					</aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="state" name="state" type="text" required="true"></aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="zip-code" name="zipCode" type="text" required="true" placeholder="zip-code-placeholder">
						<aui:validator errorMessage="zip-code-validation-message" name="custom">
							function zipCodeValidator(zip){
								var regex = /^\d{5}$/;
								return regex.test(zip);
							}
						</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="misc">
			<aui:row>
				<aui:col width="50">
					<aui:select label="security-question" name="securityQuestion" required="true" >
						<aui:option label="security-question-1" value="What is your mother's maiden name?" />
						<aui:option label="security-question-2" value="What is the make of your first car?" />
						<aui:option label="security-question-3" value="What is your high school mascot?"/>
						<aui:option label="security-question-4" value="Who is your favorite actor?"/>
					</aui:select>
				</aui:col>
				<aui:col width="50">
					<aui:input label="answer" name="answer" type="text" required="true" >
						<aui:validator name="maxLength">255</aui:validator>
					</aui:input>
				</aui:col>
			</aui:row>
			<aui:row width="100">
				<aui:input label="terms-of-use" name="termsOfUse" type="checkbox" required="true" />
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:button-row cssClass="mt-5">
		<aui:button name="submitButton" type="submit" value="submit" />
	</aui:button-row>
</aui:form>
<aui:script>
	function register(event) {
		event.preventDefault();

		const formData = new FormData(event.target);
		const formProps = Object.fromEntries(formData);

		const data = Object.entries(formProps).reduce((previousValue, currentValue) => {
			const [key, value] = currentValue;
			const newKey = key.split('_').pop();
			return { ...previousValue, [newKey]: value };
		}, {});

		function formatDate(date) {
			const dd = date.getDate().toString().padStart(2, '0');
			const MM = (date.getMonth() + 1).toString().padStart(2, '0');
			const yyyy = date.getFullYear().toString().padStart(4, '0');
			const HH = date.getHours().toString().padStart(2, '0');
			const mm = date.getMinutes().toString().padStart(2, '0');
			const ss = date.getSeconds().toString().padStart(2, '0');
			return yyyy + "-" + MM + "-" + dd + " " + HH + ":" + mm + ":" + ss;
		}

		const registerData = {
			firstName: data.firstName,
			lastName: data.lastName,
			emailAddress: data.emailAddress,
			userName: data.userName,
			genre: data.genre,
			birthday: formatDate(new Date(data.birthday + "T00:00:00")),
			createDate: formatDate(new Date()),
			modifiedDate: formatDate(new Date()),
			password: data.password,
			confirmPassword: data.confirmPassword,
			homePhone: data.homePhone,
			mobilePhone: data.mobilePhone,
			address1: data.address1,
			address2: data.address2,
			city: data.city,
			state: data.state,
			zipCode: data.zipCode,
			securityQuestion: data.securityQuestion,
			answer: data.answer,
			termsOfUse: data.termsOfUse === "on" ? true : false,
		};

		const isFormNotFilled = 
			registerData.firstName === "" ||
			registerData.lastName === "" ||
			registerData.emailAddress === "" ||
			registerData.userName === "" ||
			registerData.birthday === "0NaN-NaN-NaN NaN:NaN:NaN" ||
			registerData.password === "" ||
			registerData.confirmPassword === "" ||
			registerData.address1 === "" ||
			registerData.city === "" ||
			registerData.state === "" ||
			registerData.zipCode === "" ||
			registerData.answer === "" ||
			registerData.termsOfUse === false

		if(isFormNotFilled) {
			alert("Please fill the required inputs.")
		} else {
			Liferay.Util.fetch("http://localhost:8080/o/accounts/add", {
				method: "POST",
				headers: {
					"Content-Type": "application/json",
				},
				body: JSON.stringify(registerData),
			}).then(() => alert("Registered!"));
		}
	}
</aui:script>