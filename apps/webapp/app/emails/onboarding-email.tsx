/**
 * THis is the text version of the onboarding email
 */
export const onboardingEmailText = ({
  firstName,
}: {
  firstName: string;
}) => `Hi ${firstName},

Thrilled to have you on the Shelf! 

Please note that the players use https://shelf-webapp-live.fly.dev to access the system, so you can bookmark that link.

Watch out for generic (paid) shelf.nu links, these refer to the commercial version which is mostly the same, but a bit different.

Once logged in you need to find the 'HurstPlayers' workspace - separate from the 'Personal' workspace.
This can be found normally in the top left corner of the screen, the you should find all our assets.

Ask for help if you need it, and enjoy the shelf!

-Sam (or whoever took over from him)
`;
