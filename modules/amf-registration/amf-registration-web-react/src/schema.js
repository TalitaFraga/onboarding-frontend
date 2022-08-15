import * as Yup from "yup";
import { differenceInYears } from "date-fns";

const schema = Yup.object({
    // ### Basic Info ####
    first_name: Yup.string().required("Required").max(50, "Must be 50 characters or less"),
    last_name: Yup.string().required("Required").max(50, "Must be 50 charactyers or less"),
    email_address: Yup.string().required("Required").max(255, "Must be 255 characters or less").email("Invalid email address"),
    userName: Yup.string().required("Required").min(4, "Must be 4 character or more").max(16, "Must be 16 character or less"),
    genre: Yup.string().required("Required"),
    birthday: Yup.date().required("Required").test("hasEnoughAgeToRegister", "Must be at least 13 years old to register", (value) => differenceInYears(new Date(), new Date(value)) >=13),
    
    // #### Billing Address #### //
    address: Yup.string().required("Required").max(255, "Must be 255 characters or less"),

})

export default schema;