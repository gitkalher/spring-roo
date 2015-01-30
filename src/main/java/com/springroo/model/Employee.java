package com.springroo.model;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findEmployeesByLastNameEquals", "findEmployeesByLastNameLike", "findEmployeesByFirstNameLike", "findEmployeesByDateOfBirthBetween" })
public class Employee {

    /**
     */
    @NotNull
    @Column(unique = true)
    private Long id;

    /**
     */
    @Column(name = "F_NAME")
    @Size(min = 2, max = 50)
    private String firstName;

    /**
     */
    @Column(name = "M_NAME")
    @Size(min = 2, max = 50)
    private String middleName;

    /**
     */
    @Column(name = "L_NAME")
    @Size(min = 2, max = 50)
    private String lastName;

    /**
     * this is gender/sex
     */
    @Column(name = "SEX")
    private Boolean gender;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar dateOfBirth;
}
