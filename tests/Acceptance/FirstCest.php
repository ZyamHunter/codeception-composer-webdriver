<?php


namespace Tests\Acceptance;

use Tests\Support\AcceptanceTester;

class FirstCest
{
    public function _before(AcceptanceTester $I)
    {
        $I->amOnPage('/');
    }

    // tests
    public function tryToTest(AcceptanceTester $I)
    {
        $I->waitForElementVisible("#search-form-input", 10);
        $I->fillField("#search-form-input", "Ventilador");
        $I->pressKey("#search-form-input", "ENTER");
    }
}
