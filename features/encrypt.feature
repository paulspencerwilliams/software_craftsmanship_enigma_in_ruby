Feature: To enable me to send messages to others, as a message operator, I want to be able encrypt messages

@wip
Scenario: Encrypt a message
Given I have loaded an Enigma machine with the following rotors
| rotor | start letter |
|   I   |     M        |
|   II  |     C        |
|   III |     K        |
When I type "ENIGMAREVEALED"
Then I should see "QMJIDOMZWZJFJR"