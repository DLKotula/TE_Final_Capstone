package com.techelevator.validation.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.validation.annotation.Validated;

import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Registration {

    @NotBlank(message = "Please enter your First Name")
    @Size(max = 20, message = "Your First name must be under 20 characters long")
    private String firstName;

    @NotBlank(message = "Please enter your Last Name")
    @Size(max = 20, message = "Your Last name must be under 20 characters long")
    private String lastName;

    @NotBlank(message = "Please enter your email")
    @Email(message = "Please enter a valid email address")
    private String email;

    @NotBlank(message = "Please enter the email you used above")
    private String emailConfirmation;

    @NotBlank(message = "Please enter a password")
    @Size(min = 8, message = "Your password must be at least 8 characters long")
    private String password;

    @NotBlank(message = "Please enter the password you used above")
    private String passwordConfirmation;

    @NotBlank(message = "Please enter your Birthday")
    //@Past(message="Release date can't be in the future")
 //   @DateTimeFormat(pattern="yyyy-MM-dd")
    private String birthDate;

    @NotBlank(message = "Please enter a number of tickets")
    @Size(min = 1, max = 10, message = "Please enter a number between 1-10")
    private String numberOfTickets;


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmailConfirmation() {
        return emailConfirmation;
    }

    public void setEmailConfirmation(String emailConfirmation) {
        this.emailConfirmation = emailConfirmation;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirmation() {
        return passwordConfirmation;
    }

    public void setPasswordConfirmation(String passwordConfirmation) {
        this.passwordConfirmation = passwordConfirmation;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getNumberOfTickets() {
        return numberOfTickets;
    }

    public void setNumberOfTickets(String numberOfTickets) {
        this.numberOfTickets = numberOfTickets;
    }
}
