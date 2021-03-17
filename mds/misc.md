# misc

<details>
    <summary>TwoWayBinding</summary>
    
    final binding = TwoWayBinding<String>()
        .bindDataRule(RequiredRule());
        
    // Please close the 2-way binding if it is not useful anymore.
    await binding.close();
</details>

<details>
    <summary>Localized</summary>
    
    A generic class able to localize and translate messages to the GUI (users).
</details>

<details>
    <summary>Data rules</summary>
        
    Here the list of all possible data rules.
    * `ConfirmedRule`, a bool is true.
    * `EmailRule`, an email is syntactically correct.
    * `MaxRule`, max value possible.
    * `MinRule`, min value possible.
    * `RegexRule`, define a regex for validating.
    * `RequiredRule`, data required.
    * `SameRule`, same data of another field.
    * `SizeRule`, size value possible.
    * `TrimRule`, get the string without any leading and trailing whitespace.
</details>
