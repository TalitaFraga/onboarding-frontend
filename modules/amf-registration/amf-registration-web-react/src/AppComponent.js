import React from 'react';
import BasicInfo from './form/BasicInfo';
import BillingAddress from './form/BillingAddress';
import { Formik } from "formik";

function AppComponent(){
	return(
		<Formik
		initialValues={{
			//   #### Basic Info #### //
			  first_name: "",
			  last_name: "",
			  email_address: "",
			  username: "",
			  genre: "",
			  birthday: "",
			  password1: "",
			  password2: "",
			  // #### Billing Address #### //
			  address: "",
			  address2: "",
			  city: "",
			  state: "",
			  zip: "",
		}}
		>	
		<form>
			<BasicInfo/>
			<BillingAddress/>
		</form>
		</Formik>

	)
}
export default AppComponent;