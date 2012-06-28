Feature: To enable me to send messages to others, as a message operator, I want to be able encrypt and decrypt messages

@wip
Scenario: Encrypt a message
Given I have loaded an Enigma machine with the following rotors
| rotor | start letter |
|   I   |     M        |
|   II  |     C        |
|   III |     K        |
When I type "ENIGMAREVEALED"
Then I should see "QMJIDOMZWZJFJR"


@wip
Scenario: Descrypt a message
Given I have loaded an Enigma machine with the following rotors
| rotor | start letter |
|   I   |     M        |
|   II  |     C        |
|   III |     K        |
When I type "QMJIDOMZWZJFJR"
Then I should see "ENIGMAREVEALED"