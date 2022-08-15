import React from "react";
import ClayForm, { ClaySelect } from "@clayui/form";

function Select({label, placeholder, name, required}){
    const options = [
        {
          label: "Male",
          value: "1"
        },
        {
          label: "Female",
          value: "2"
        }
      ];

    return(
        <ClayForm.Group>
            <label>
                {label}{" "}
                {required && <ClayIcon symbol="asterisk" className="reference-mark" />}
            </label>

            <ClaySelect  name={name}>

              <ClaySelect.Option key={0} disabled label={placeholder} value="" />
                
                {options.map(item => (
                <ClaySelect.Option
                    key={item.value}
                    label={item.label}
                     value={item.value}
                />
               ))}
            </ClaySelect>

        </ClayForm.Group>
    )
}

export default Select;