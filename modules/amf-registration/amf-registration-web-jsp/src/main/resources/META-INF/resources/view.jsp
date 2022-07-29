<%@ include file="/init.jsp" %>

<aui:form name="fm">
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="basic-info">
			<aui:row>
				<aui:col width="50">
					<aui:input label="First Name" name="firstName" required="true" type="text" />
				</aui:col>
				<aui:col width="50">
					<aui:input label="Last Name" name="lastName" required="true" type="text" />
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="Email Addresss" name="emailAddress" required="true" type="email" />
				</aui:col>

				<aui:col width="50">
					<aui:input label="User Name" name="userName" required="true" type="text" />
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="password" name="password" required="true" type="password" />
				</aui:col>

				<aui:col width="50">
					<aui:input label="confirm-password" name="confirmPassword" required="true" type="password" />
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:select label="genre" name="genre" required="true">
						<aui:option label="Male" value="genre-1"/>
						<aui:option label="Female" value="genre-2"/>
						<aui:option label="Other" value="genre-3"/>
					</aui:select>
				</aui:col>
				<aui:col width="50">
					<aui:input label="birthday" name="birthday" type="date" required="true"/>
				</aui:col>
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="phone">
			<aui:row>
				<aui:col width="50">
					<aui:input label="home-phone" name="homePhone" type="number" placeholder="home phone">
					</aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="mobile-phone" name="mobilePhone" type="number" placeholder="mobile phone">
					</aui:input>
				</aui:col>
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="address">
			<aui:row>
				<aui:col width="50">
					<aui:input label="address-1" name="address1" type="text" required="true" ></aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="address-2" name="address2" type="text"></aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="city" name="city" type="text" required="true" ></aui:input>
				</aui:col>
				<aui:col width="50">
					<aui:input label="state" name="state" type="text" required="true"></aui:input>
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col width="50">
					<aui:input label="zip-code" name="zip code" type="text" required="true"></aui:input>
				</aui:col>
			</aui:row>
		</aui:fieldset>
	</aui:fieldset-group>
	<aui:fieldset-group markupView="lexicon">
		<aui:fieldset label="Security">
			<aui:row>
				<aui:col width="50">
					<aui:select label="Security Question" name="securityQuestion" required="true" >
						<aui:option label="What is your mother's maiden name?" value="security-question-1" />
						<aui:option label="What is the make of your first car?" value="security-question-2" />
						<aui:option label="What is your high school mascot?" value="security-question-3"/>
						<aui:option label="Who is your favorite actor?" value="security-question-4"/>
					</aui:select>
				</aui:col>
				<aui:col width="50">
					<aui:input label="answer" name="answer" type="text" required="true" ></aui:input>
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
