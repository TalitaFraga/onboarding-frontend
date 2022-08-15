import React from "react"
import ClayIcon from "@clayui/icon"
import Input from "../components/Input"

function BillingAddress ({handleBlur, handleChange, errors, touched, values}){
    return (
        <>

            <h2 style={{ marginBottom: "20px" }}>
                <ClayIcon fontSize={15} symbol="geolocation" />{" "}
                {Liferay.Language.get("billing-address")}
            </h2>
            <Input
                id="address"
                error={touched?.address && error?.address}
                label="Address 1"
                name="address"
                onBlur={handleBlur}
                onChange={handleChange}
                required
                value={values?.address}
            />

        </>

    )
}

export default BillingAddress;