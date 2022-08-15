import React from "react";
import ClayForm, {ClayInput} from "@clayui/form";
import ClayAlert from "@clayui/alert";
import ClayIcon from "@clayui/icon";


function Input ({id, label, placeholder, type = "text", name, value, required}){
    return (
    <ClayForm.Group>
      <label htmlFor={id}>
        {label}{" "}
        {required && <ClayIcon symbol="asterisk" className="reference-mark"/>}
      </label>
      <ClayInput
        id={id}
        placeholder={placeholder}
        type={type}
        name={name}
        value={value}
      />
    </ClayForm.Group>

    )
}
export default Input;