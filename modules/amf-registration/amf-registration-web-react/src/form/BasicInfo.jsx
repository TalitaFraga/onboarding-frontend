import React from "react";
import ClayIcon from "@clayui/icon";
import Input from "../components/Input";
import Select from "../components/Select";

function BasicInfo({
  handleBlur,
  handleChange,
  setFieldValue,
  errors,
  touched,
  values,
  }){
    return(
        <>
      <h2 style={{ marginBottom: "20px" }}>
        <ClayIcon fontSize={15} symbol="user" />{" "}
        {Liferay.Language.get("basic-info")}
      </h2>
        <Input 
        id="first_name"
        error={touched?.first_name && errors?.first_name}
        label="First Name"
        name="first_name"
        onBlur={handleBlur}
        onChange={handleChange}
        required
        value={values?.first_name}
        />

        <Input 
        id="last_name"
        error={touched?.last_name && errors?.last_name}
        label="Last Name"
        name="last_name"
        onBlur={handleBlur}
        onChange={handleChange}
        required
        value={values?.last_name}
        />

        <Input 
        id="email_address"
        error={touched?.email_address&& errors?.email_address}
        label="Email Address"
        name="email_address"
        onBlur={handleBlur}
        onChange={handleChange}
        required
        value={values?.email_address}
        />

        <Input 
        id="userName"
        error={touched?.userName&& errors?.userName}
        label="User Name"
        name="userName"
        onBlur={handleBlur}
        onChange={handleChange}
        required
        value={values?.userName}
        />

        {/* <Select
        label="Genre"
        name="Genre"
        required
        value={values.genre}
        /> */}
        </>
    )
}
export default BasicInfo;