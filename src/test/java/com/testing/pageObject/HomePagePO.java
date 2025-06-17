package com.testing.pageObject;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePagePO {

    // Stage 1 - Element Locators

    @FindBy(linkText = "Create an Account")
    public static WebElement CreateAccountLink;


    @FindBy(linkText = "Sign In")
    public static WebElement SignInLink;


    // Stage 2 - initialise Web elements using selenium webdriver

    public HomePagePO(WebDriver driver){
        PageFactory.initElements(driver, this);


    }

    // Stage 3 - Page Specific Methods
    public void clickCreateAccountLink(){
        CreateAccountLink.click();
    }

    public void clickSignInLink(){
        SignInLink.click();
    }























}
