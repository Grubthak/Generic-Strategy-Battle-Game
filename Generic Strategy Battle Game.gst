<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="edf2-8863-a472-69ff" name="Generic Strategy Battle Game" revision="1" battleScribeVersion="2.03" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <costTypes>
    <costType id="b853-595d-9b44-a445" name="_Gold " defaultCostLimit="-1.0" hidden="false"/>
    <costType id="4604-99fe-c5ac-d7cb" name="_Upkeep " defaultCostLimit="-1.0" hidden="false"/>
    <costType id="1cca-1aee-2903-5763" name="Ammo" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="4786-b5a5-f4d7-352b" name="Fighter">
      <characteristicTypes>
        <characteristicType id="67ae-7984-a0ee-ffda" name="Movement"/>
        <characteristicType id="ca43-a71a-c600-120d" name="Melee"/>
        <characteristicType id="194c-5d90-41a2-3b80" name="Ranged"/>
        <characteristicType id="8158-d273-2133-d239" name="Brawn"/>
        <characteristicType id="1428-4aa7-3d51-3c78" name="Agility"/>
        <characteristicType id="3e85-a0a5-f050-4e4c" name="Morale"/>
      </characteristicTypes>
    </profileType>
    <profileType id="b83e-e515-1b26-56be" name="Hero">
      <characteristicTypes>
        <characteristicType id="ff32-937b-577a-f688" name="Might"/>
        <characteristicType id="3fb3-ae6c-abd3-0ee3" name="Will"/>
      </characteristicTypes>
    </profileType>
    <profileType id="75dc-1dba-7112-e066" name="Defence">
      <characteristicTypes>
        <characteristicType id="a901-cc83-55b6-2f17" name="Defence"/>
      </characteristicTypes>
    </profileType>
    <profileType id="eb3b-e859-5330-0545" name="Mount">
      <characteristicTypes>
        <characteristicType id="67d6-3c2d-ee20-164c" name="Movement"/>
        <characteristicType id="150d-40be-7e8d-5622" name="Melee"/>
        <characteristicType id="e61f-cae0-7ed1-bd52" name="Ranged"/>
        <characteristicType id="6508-833d-b556-8e2d" name="Brawn"/>
        <characteristicType id="f7f3-f2ba-1b10-d437" name="Agility"/>
        <characteristicType id="1407-8fef-6ddf-85e9" name="Morale"/>
        <characteristicType id="c0ef-1ad1-6072-b710" name="Defence"/>
      </characteristicTypes>
    </profileType>
    <profileType id="a281-0cd0-c778-4983" name="Structure">
      <characteristicTypes>
        <characteristicType id="e618-7733-3de5-df94" name="Fortitude"/>
        <characteristicType id="2842-e9a7-8e62-73b9" name="Structure Points"/>
      </characteristicTypes>
    </profileType>
    <profileType id="7ad1-7131-348c-882a" name="Warmachine">
      <characteristicTypes>
        <characteristicType id="03bd-c438-285a-5ecd" name="Defence"/>
        <characteristicType id="0b61-4e5d-6001-801d" name="Brawn"/>
        <characteristicType id="6c3f-b3cc-b809-2ffd" name="Strength"/>
        <characteristicType id="49a4-f450-f825-ce1f" name="Crew Required"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="36fb-4363-ba26-c340" name="1. Leaders" hidden="false"/>
    <categoryEntry id="28a4-124e-45de-8c29" name="2. Troops" hidden="false"/>
    <categoryEntry id="bccf-4a7f-6394-16ea" name="3. Warmachine" hidden="false"/>
    <categoryEntry id="235a-496f-a531-bf63" name="4. Structures" hidden="false"/>
    <categoryEntry id="ba57-ebe4-7ebc-710f" name="5. Treasury" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="b255-dfef-7dad-0d69" name="Army" hidden="false">
      <categoryLinks>
        <categoryLink id="26cd-4a6d-e6ff-251d" name="Leaders" hidden="false" targetId="36fb-4363-ba26-c340" primary="false"/>
        <categoryLink id="9499-8076-a165-463a" name="Troops" hidden="false" targetId="28a4-124e-45de-8c29" primary="false"/>
        <categoryLink id="fd9f-e702-bbdb-288b" name="Artillery" hidden="false" targetId="bccf-4a7f-6394-16ea" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <selectionEntries>
    <selectionEntry id="d59a-8ca1-2f19-d0f3" name="Artillery Team " hidden="false" collective="false" import="true" type="unit">
      <categoryLinks>
        <categoryLink id="26bc-34c0-ceed-ab74" name="Warmachine" hidden="false" targetId="bccf-4a7f-6394-16ea" primary="true"/>
      </categoryLinks>
      <selectionEntryGroups>
        <selectionEntryGroup id="818f-5210-b941-d883" name="Artillery Team" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8a55-184d-76bc-bef2" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="84ac-6ecd-4831-b24d" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="a4f5-f346-6713-5eb5" name="Traditional: Bolt Thrower" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="d417-839b-8af7-4665" name="Bolt Thrower" hidden="false" typeId="7ad1-7131-348c-882a" typeName="Warmachine">
                  <characteristics>
                    <characteristic name="Defence" typeId="03bd-c438-285a-5ecd">4/1</characteristic>
                    <characteristic name="Brawn" typeId="0b61-4e5d-6001-801d">3</characteristic>
                    <characteristic name="Strength" typeId="6c3f-b3cc-b809-2ffd">2</characteristic>
                    <characteristic name="Crew Required" typeId="49a4-f450-f825-ce1f">2</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <selectionEntryGroups>
                <selectionEntryGroup id="d7e6-0394-5d07-f485" name="Upgrades" hidden="false" collective="false" import="true">
                  <selectionEntries>
                    <selectionEntry id="acad-99e0-29a4-e99d" name="Fast Reload" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3a29-5ccf-2348-85b5" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="a387-b12a-42d2-228d" name="Fast Reload" hidden="false">
                          <description>Roll an additional dice when determining the attacks, choosing higher result

</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="7bd0-0f76-f268-db68" name="Extra Barrel" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="35b7-840c-7b96-fceb" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="25b7-bfc7-f117-4d1a" name="Extra Barrel" hidden="false">
                          <description>Roll 2D3 instead of 1D6 attacks


</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="c92f-211a-3019-f807" name="Swivel" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ceb8-b3d3-785e-11eb" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="76c1-8340-6a46-fd8b" name="Fast Reload" hidden="false">
                          <description>The bolt thrower has a 360 degree LOS


</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="25.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="3b15-399c-d300-4b3e" name="Traditional: Ballista" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="e9ba-8fb7-50ea-679d" name="Ballista" hidden="false" typeId="7ad1-7131-348c-882a" typeName="Warmachine">
                  <characteristics>
                    <characteristic name="Defence" typeId="03bd-c438-285a-5ecd">5/1</characteristic>
                    <characteristic name="Brawn" typeId="0b61-4e5d-6001-801d">3</characteristic>
                    <characteristic name="Strength" typeId="6c3f-b3cc-b809-2ffd">*</characteristic>
                    <characteristic name="Crew Required" typeId="49a4-f450-f825-ce1f">2</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <selectionEntryGroups>
                <selectionEntryGroup id="323a-deeb-065c-85bb" name="Upgrades" hidden="false" collective="false" import="true">
                  <selectionEntries>
                    <selectionEntry id="79bf-5e54-76ac-f564" name="Accurate" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1a1f-27fe-918a-129d" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="338b-c5af-8563-2511" name="Accurate" hidden="false">
                          <description>After placing the marker, you may move the marker a full 1D3”.
</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="26a2-f3f1-05ae-ceba" name="Superior Construction" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9789-9f45-7f54-8c00" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="f438-8941-14a5-9963" name="Superior Construction" hidden="false">
                          <description>Roll 1D6 instead of 1D3 when determining how far the shot continues.



</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="f2f0-5d90-37b7-0361" name="Siege Ladder" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="335e-1901-1fa5-af89" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="2a4c-cdec-b937-c982" name="Siege Ladder" hidden="false">
                          <description>The ballista can be fired to raise a ladder. If done so the maximum range is reduced to 24”. If the ballista hits a structure, place a ladder against it. Once per game..</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="25.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="a3dc-2b6b-bed1-4f14" name="Traditional: Trebutchet" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="f4bc-ac7a-41e8-92e0" name="Trebutchet" hidden="false" typeId="7ad1-7131-348c-882a" typeName="Warmachine">
                  <characteristics>
                    <characteristic name="Defence" typeId="03bd-c438-285a-5ecd">6/2</characteristic>
                    <characteristic name="Brawn" typeId="0b61-4e5d-6001-801d">4</characteristic>
                    <characteristic name="Strength" typeId="6c3f-b3cc-b809-2ffd">1</characteristic>
                    <characteristic name="Crew Required" typeId="49a4-f450-f825-ce1f">3</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <selectionEntryGroups>
                <selectionEntryGroup id="bab0-1733-9afd-c3bd" name="Upgrades" hidden="false" collective="false" import="true">
                  <selectionEntries>
                    <selectionEntry id="44d2-9cdf-e1da-7504" name="Severed Heads" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5c3c-898a-ad14-ed49" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="9d28-fc54-3cf4-6c43" name="Severed Heads" hidden="false">
                          <description>Instead of placing a 3” blast template, place a 5” blast template. Any fighter caught under this template must immediately pass a courage test or flee. To be fired it requires a prisoner to be executed.

</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="7411-e714-8c9e-636e" name="Expert Crew" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="087a-e178-245f-fa07" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="e7b6-e7ce-d601-7661" name="Expert Crew" hidden="false">
                          <description>Pick two distances and choose which one to use after measuring.




</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="002a-d598-a9a7-50f6" name="Flaming ammunition" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b662-b68c-19a0-8120" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="a171-84a8-a7ae-7c39" name="Flaming ammunition" hidden="false">
                          <description>Instead of dealing damage, leave the template where it scatters. For the rest of the game, any fighter that starts or ends their movement on, or moves through that template, suffers a hit.

</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="25.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9e21-9cc3-928a-0df9" name="Blackpowder: Volley Gun" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="1e16-35fa-3f42-7efc" name="Volley Gun" hidden="false" typeId="7ad1-7131-348c-882a" typeName="Warmachine">
                  <characteristics>
                    <characteristic name="Defence" typeId="03bd-c438-285a-5ecd">4/1</characteristic>
                    <characteristic name="Brawn" typeId="0b61-4e5d-6001-801d">3</characteristic>
                    <characteristic name="Strength" typeId="6c3f-b3cc-b809-2ffd">*2</characteristic>
                    <characteristic name="Crew Required" typeId="49a4-f450-f825-ce1f">2</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <selectionEntryGroups>
                <selectionEntryGroup id="1432-5f06-ef82-968d" name="Upgrades" hidden="false" collective="false" import="true">
                  <selectionEntries>
                    <selectionEntry id="446e-65ad-79b9-53c6" name="Fast Reload" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="624d-41f1-9284-946a" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="5830-cc0f-5b1a-8e91" name="Fast Reload" hidden="false">
                          <description>You may re-roll any 1D3 result when rolling for shots except for a natural 1..</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="ca31-7aff-2645-b27a" name="Extra Barrel" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="802d-f3ff-592d-b7c3" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="6a0f-0bb3-0f41-3dfd" name="Extra Barrel" hidden="false">
                          <description>You must roll an additional 1D3 (2D3-3D3) shots.</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="6942-cd9a-dbcf-bb17" name="Swivel" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4ab4-c982-8814-b92f" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="678d-1b6e-9df1-9bd4" name="Fast Reload" hidden="false">
                          <description>The volley gun has a 360 degree LOS.
</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="25.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="0d45-815c-9d3a-f2c9" name="Blackpowder: Cannon" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="5e2b-7299-bf6f-7a44" name="Cannon" hidden="false" typeId="7ad1-7131-348c-882a" typeName="Warmachine">
                  <characteristics>
                    <characteristic name="Defence" typeId="03bd-c438-285a-5ecd">5/1</characteristic>
                    <characteristic name="Brawn" typeId="0b61-4e5d-6001-801d">3</characteristic>
                    <characteristic name="Strength" typeId="6c3f-b3cc-b809-2ffd">1*</characteristic>
                    <characteristic name="Crew Required" typeId="49a4-f450-f825-ce1f">2</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <selectionEntryGroups>
                <selectionEntryGroup id="36bb-d734-d8f9-c07a" name="Upgrades" hidden="false" collective="false" import="true">
                  <selectionEntries>
                    <selectionEntry id="ce0e-ed6c-3731-0c5a" name="Grapeshot" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1ac2-9d67-ee9a-029b" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="707c-4140-82a5-9242" name="Grapeshot" hidden="false">
                          <description>Declare a distance up to 12”. Place a flame template that many inches away from the tip of the barrel. All fighters under the template take a hit.</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="0f00-479c-bcb6-0000" name="Superior Construction" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0531-bf38-3ebc-e993" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="383e-9d00-4d32-0a79" name="Superior Construction" hidden="false">
                          <description>Roll 1D6 instead of 1D3 when determining how far the shot continues.



</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="ffd6-d6ef-2e05-4691" name="Great Cannon" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1cca-bd1f-8b1e-44bd" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="ecd8-db2d-184f-32f1" name="Siege Ladder" hidden="false">
                          <description>The maximum range is changed to 48”.</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="25.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="230c-d6e4-af6e-3027" name="Blackpowder: Mortar" hidden="false" collective="false" import="true" type="upgrade">
              <profiles>
                <profile id="efdc-ee46-9e2f-399b" name="Mortar" hidden="false" typeId="7ad1-7131-348c-882a" typeName="Warmachine">
                  <characteristics>
                    <characteristic name="Defence" typeId="03bd-c438-285a-5ecd">6/2</characteristic>
                    <characteristic name="Brawn" typeId="0b61-4e5d-6001-801d">4</characteristic>
                    <characteristic name="Strength" typeId="6c3f-b3cc-b809-2ffd">1</characteristic>
                    <characteristic name="Crew Required" typeId="49a4-f450-f825-ce1f">3</characteristic>
                  </characteristics>
                </profile>
              </profiles>
              <selectionEntryGroups>
                <selectionEntryGroup id="372d-5037-31f5-42cf" name="Upgrades" hidden="false" collective="false" import="true">
                  <selectionEntries>
                    <selectionEntry id="4903-09f8-3d82-aa28" name="Targeted Explosion" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="13d2-e1b9-943b-d99b" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="c605-dea5-8c16-9594" name="Severed Heads" hidden="false">
                          <description>Instead of placing a 5” blast template, place a 3” blast template. Any fighter caught under this template takes a hit that ignores armour and shields.


</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="cf58-1a29-8046-5720" name="Expert Crew" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="422a-176c-5385-02d2" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="1672-1831-e71e-9076" name="Expert Crew" hidden="false">
                          <description>Pick two distances and choose which one to use after measuring.




</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                    <selectionEntry id="78c9-c63b-1c4b-a6d2" name="Smoke" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3b80-baa2-aeb4-af88" type="max"/>
                      </constraints>
                      <rules>
                        <rule id="d843-3adb-2857-4082" name="Smoke" hidden="false">
                          <description>Each fighter under the template reduces their Combat and Ranged by 2 and gain a 4+ Cover save until the end of the turn.


</description>
                        </rule>
                      </rules>
                      <costs>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                </selectionEntryGroup>
              </selectionEntryGroups>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="25.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
        <selectionEntryGroup id="59ba-6d33-229c-c484" name="Bombadier" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f189-42b1-c848-2aee" type="max"/>
          </constraints>
          <entryLinks>
            <entryLink id="cec4-c563-e2a2-32fa" name="Character" hidden="false" collective="false" import="true" targetId="93ca-5a5c-774a-705e" type="selectionEntry"/>
            <entryLink id="03bb-e5bb-29b0-28fe" name="Hero" hidden="false" collective="false" import="true" targetId="3f9d-4bf0-f52a-96f2" type="selectionEntry"/>
            <entryLink id="a1fb-d3eb-c5eb-e3ab" name="Lord" hidden="false" collective="false" import="true" targetId="348a-f738-1411-cbd6" type="selectionEntry"/>
          </entryLinks>
        </selectionEntryGroup>
        <selectionEntryGroup id="1575-f7e9-486c-78bd" name="Crew" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="4.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f8bb-3d30-dc6d-da64" type="max"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="450b-893c-185f-0e50" type="min"/>
          </constraints>
          <entryLinks>
            <entryLink id="62ed-f2ca-c315-7eb1" name="Troop" hidden="false" collective="false" import="true" targetId="7dc2-7114-e0b1-9aff" type="selectionEntry"/>
          </entryLinks>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0251-2178-8804-3245" name="Weapon Team" hidden="false" collective="false" import="true" type="unit">
      <categoryLinks>
        <categoryLink id="3391-b63d-9a9e-85dd" name="Warmachine" hidden="false" targetId="bccf-4a7f-6394-16ea" primary="true"/>
      </categoryLinks>
      <selectionEntryGroups>
        <selectionEntryGroup id="9949-49ff-5d28-9383" name="Crew - (Can only take Sidearm)" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="065c-9df5-e0dc-84e9" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fc26-be94-3e17-11aa" type="min"/>
          </constraints>
          <entryLinks>
            <entryLink id="7ff7-7bc4-32df-e843" name="Character" hidden="false" collective="false" import="true" targetId="93ca-5a5c-774a-705e" type="selectionEntry"/>
            <entryLink id="7072-f4ec-72b1-9d08" name="Troop" hidden="false" collective="false" import="true" targetId="7dc2-7114-e0b1-9aff" type="selectionEntry"/>
            <entryLink id="db96-4ee7-2701-53b6" name="Hero" hidden="false" collective="false" import="true" targetId="3f9d-4bf0-f52a-96f2" type="selectionEntry"/>
            <entryLink id="ce5e-5d6c-8f90-7906" name="Lord" hidden="false" collective="false" import="true" targetId="348a-f738-1411-cbd6" type="selectionEntry"/>
          </entryLinks>
        </selectionEntryGroup>
        <selectionEntryGroup id="f7c6-f433-0f5e-6b1b" name="Weapon Team" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="75af-879d-1b68-4d93" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="72b7-d7bd-af49-eccd" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="3af4-82e9-6824-9436" name="Demolition Charge" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="10.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="ad8b-145d-d0f1-55b4" name="Flame Thrower" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="10.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="c6ec-d546-7b95-b7a5" name="Gatling Gun" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="10.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="6150-08aa-dee9-8a03" name="Stone Grinder" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="10.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="cca3-5931-78f1-ee41" name="Mortar" hidden="false" collective="false" import="true" type="upgrade">
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="10.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="439c-cf77-2344-e67d" name="Structures" hidden="false" collective="false" import="true" type="upgrade">
      <entryLinks>
        <entryLink id="459f-3650-ce89-7deb" name="Structures" hidden="false" collective="false" import="true" targetId="01c6-70f7-addc-5ace" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="17ff-14d0-978c-e928" name="Treasury" hidden="false" collective="false" import="true" type="upgrade">
      <entryLinks>
        <entryLink id="c0ff-e0f7-3aa4-3505" name="Mounts" hidden="false" collective="false" import="true" targetId="1c6c-830c-d028-698d" type="selectionEntryGroup"/>
        <entryLink id="aeb2-2fb6-6e56-b9a5" name="Weapons" hidden="false" collective="false" import="true" targetId="ac4a-6177-8520-fe5d" type="selectionEntryGroup"/>
        <entryLink id="c03e-57e3-13ec-c9fe" name="Armour" hidden="false" collective="false" import="true" targetId="70e1-6fd2-2ddf-2d43" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
      </costs>
    </selectionEntry>
  </selectionEntries>
  <entryLinks>
    <entryLink id="90e2-e7f7-e127-7ea9" name="Character" hidden="false" collective="false" import="true" targetId="93ca-5a5c-774a-705e" type="selectionEntry">
      <categoryLinks>
        <categoryLink id="fcbe-b133-b26d-1f98" name="New CategoryLink" hidden="false" targetId="36fb-4363-ba26-c340" primary="true"/>
      </categoryLinks>
    </entryLink>
    <entryLink id="b8ee-a3d9-0cce-ba26" name="Troop" hidden="false" collective="false" import="true" targetId="7dc2-7114-e0b1-9aff" type="selectionEntry">
      <categoryLinks>
        <categoryLink id="7d51-f8b8-2af2-1e4c" name="New CategoryLink" hidden="false" targetId="28a4-124e-45de-8c29" primary="true"/>
      </categoryLinks>
    </entryLink>
    <entryLink id="9be9-f15e-9e88-5e8c" name="Lord" hidden="false" collective="false" import="true" targetId="348a-f738-1411-cbd6" type="selectionEntry">
      <categoryLinks>
        <categoryLink id="6857-cd0d-a0dd-fa1f" name="New CategoryLink" hidden="false" targetId="36fb-4363-ba26-c340" primary="true"/>
      </categoryLinks>
    </entryLink>
    <entryLink id="5042-99c4-7f80-6f82" name="Hero" hidden="false" collective="false" import="true" targetId="3f9d-4bf0-f52a-96f2" type="selectionEntry">
      <categoryLinks>
        <categoryLink id="fd54-bf53-d3d6-c693" name="New CategoryLink" hidden="false" targetId="36fb-4363-ba26-c340" primary="true"/>
      </categoryLinks>
    </entryLink>
  </entryLinks>
  <sharedSelectionEntries>
    <selectionEntry id="2c63-1fb8-1abb-6d12" name="Two Handed Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <entryLinks>
        <entryLink id="8f39-445b-1eaa-e5d3" name="Two Handed Weapon" hidden="false" collective="false" import="true" targetId="ec18-4ac3-e196-4681" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b7b2-3ff0-9d4e-bfde" name="Ranged Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <entryLinks>
        <entryLink id="7bd0-7b1b-1778-f4e4" name="Ranged Weapon" hidden="false" collective="false" import="true" targetId="bc92-cc97-b91c-c854" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d2c8-3f78-0c13-7e69" name="Melee Weapon" hidden="false" collective="false" import="true" type="upgrade">
      <entryLinks>
        <entryLink id="228d-1d88-df04-039e" name="Melee Weapon" hidden="false" collective="false" import="true" targetId="34e1-f558-7326-0527" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="7dc2-7114-e0b1-9aff" name="Troop" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f157-7ce0-e361-8643" name="Troop" hidden="false" targetId="6068-0446-b0f9-2f53" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="c0be-5cbb-ce2d-4fc6" name="4. Troops" hidden="false" targetId="28a4-124e-45de-8c29" primary="true"/>
      </categoryLinks>
      <selectionEntryGroups>
        <selectionEntryGroup id="559a-f009-e2a6-ffde" name="0. Profile Selection" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="f96f-89ce-ed59-31fd" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="99cf-db64-e8f0-d0b3" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="58dd-8e6f-8b9d-23d8" name="2. Warrior" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="7fec-0cfb-636f-d2f9" name="Warrior" hidden="false" targetId="77e4-ceac-27e2-99af" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="d723-35ee-45d7-e6b2" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="95a7-844b-a0b8-5d84" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4be9-7f3d-e81f-484e" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="4c6f-ac80-9ac3-dd96" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b95b-3d58-685a-598f" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="483a-7392-7ffc-a4f1" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="741a-edbe-3ba8-b046" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8edf-b53b-97b5-2035" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a394-d4eb-b198-6d24" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="9e8b-1224-8821-ebeb" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="cca7-82ed-dd05-4938" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bd01-b589-2c52-a531" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="36b1-244a-56f6-d2cf" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="fd89-7e78-719b-e1c7" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="937a-002f-f2c8-a0ba" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7144-2dab-97e1-0857" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bea5-4101-a138-7fb9" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="fc49-0df1-a767-6a90" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="66ff-0c8c-08be-3b20" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="dfdf-431b-59ee-6083" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8f02-7044-0a98-6dfc" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="200.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="31c1-ca2a-8a32-15d5" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="3.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="7101-f46a-3d1e-6253" name="3. Veteran" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="cb90-2786-e1f0-9562" name="Veteran" hidden="false" targetId="8e83-d76f-a754-d538" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="9adb-7f0c-1d3f-644b" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b8e2-ba7a-8bf5-c44d" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0435-8e27-5a32-174b" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="0e68-edff-d808-f460" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="56bf-f898-f69c-057b" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="52b5-1124-2d05-7a0c" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="cd9b-af3a-24f4-69a6" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7985-b66a-27c4-4b6b" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d96e-9336-030e-1429" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="f57b-c260-f4d9-89c2" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="e0c2-a17a-315d-abb3" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6994-c3fb-3cf1-0e67" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="de4e-f758-29e5-c06b" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="80.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="05d4-e8d2-6cdc-2f32" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="d42f-03b4-6db4-35d5" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="470a-e77e-fbe4-3e96" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5e4f-ad87-9828-bc35" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="160.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="f207-6ae9-ec17-d21b" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="8b4e-e09d-6f8d-a6fb" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a9b7-f690-dd81-f45a" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7c5c-6982-c29c-132d" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="320.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="fd00-5cea-c175-327e" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="80.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="4.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="2fa1-4c2f-9782-fcf5" name="1. Citizen" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="a0d2-078e-043a-a5a6" name="Citizen" hidden="false" targetId="fe52-7181-c5b2-2514" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="e42c-0af3-4e80-d7d8" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="09de-fec6-b4c1-10af" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b985-a590-df42-7932" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="b00d-2fa7-c49c-3f3e" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2995-bb7e-5eb3-863c" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="920d-1f01-1b82-594e" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="c0c2-d499-cb2b-eb49" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="885c-72a6-4585-a8ff" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9aba-5593-304d-bb59" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="74eb-57d1-86af-790b" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="781b-27bd-9183-6dff" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6707-4f1c-775b-9716" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="491f-4ea1-5d66-79d7" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="6703-9aa2-8d18-2a86" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="e0d3-e13c-7f4e-7440" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d9ca-818f-95ce-72a8" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8d32-1d3e-90a7-6bc1" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="60.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="b9e2-f3da-2381-46aa" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="82a7-6901-4087-c9d8" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3641-fc50-d87c-ccc7" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e898-c412-a313-b6ca" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="120.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="9314-7aef-8501-3a4e" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="2.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="bbb3-9c31-f387-fa44" name="4. Champion" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="c3f6-3b8b-351c-327f" name="Champion" hidden="false" targetId="8dfc-fcdd-a990-8793" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="ca08-fb29-1510-1bdb" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fa26-1f4a-e232-666b" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c445-87e5-c7bd-16cb" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="9dfa-f875-9d68-5619" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fb84-e99a-9ee1-b570" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="7a73-b76b-0ebb-a437" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="4cc4-b971-795b-6c4b" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="be92-e39d-182c-4c70" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b424-7284-4cba-60fc" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="82dc-8207-09c9-8165" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="ccb0-fec5-d34b-ca98" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c59d-39e2-dcbb-9943" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3907-b783-cfe3-5f58" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="120.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="a560-714e-99dc-7563" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="0631-30cf-9564-c83a" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="dc98-f7b9-c049-d32f" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2822-3781-234a-3312" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="b48a-5566-0978-46d3" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="fff2-3dae-4323-8bfa" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="175b-96c8-39dc-7760" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e071-1ded-a49e-8262" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="480.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="1685-6038-dd7c-91b6" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="120.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="5.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <entryLinks>
        <entryLink id="b104-0811-332d-1216" name="1. Armour" hidden="false" collective="false" import="true" targetId="bdc3-4cad-be21-e520" type="selectionEntryGroup"/>
        <entryLink id="da43-64cf-a10f-7fc2" name="4. Equipment" hidden="false" collective="false" import="true" targetId="9ccc-96ef-3ca2-5ed6" type="selectionEntryGroup"/>
        <entryLink id="21f0-5c3b-8579-250d" name="5. Mount" hidden="false" collective="false" import="true" targetId="5542-0d9f-f788-7938" type="selectionEntryGroup"/>
        <entryLink id="35be-3152-b185-d1eb" name="3. Sidearms" hidden="false" collective="false" import="true" targetId="ef78-471f-5a8a-465f" type="selectionEntryGroup"/>
        <entryLink id="6086-3359-5416-06d1" name="6. Talents" hidden="false" collective="false" import="true" targetId="d670-0cc3-226b-e9b3" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="0afc-9a8c-2cff-70b5" value="4.0">
              <conditions>
                <condition field="selections" scope="7dc2-7114-e0b1-9aff" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="7101-f46a-3d1e-6253" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="0afc-9a8c-2cff-70b5" value="5.0">
              <conditions>
                <condition field="selections" scope="7dc2-7114-e0b1-9aff" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="bbb3-9c31-f387-fa44" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="0afc-9a8c-2cff-70b5" value="3.0">
              <conditions>
                <condition field="selections" scope="6086-3359-5416-06d1" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="58dd-8e6f-8b9d-23d8" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0afc-9a8c-2cff-70b5" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="dcd5-5691-5a48-ced2" name="2. Weapon Selection" hidden="false" collective="false" import="true" targetId="141a-c34c-90a3-3a28" type="selectionEntryGroup"/>
        <entryLink id="40ec-047d-39aa-1cef" name="8. Stat Improvements" hidden="false" collective="false" import="true" targetId="9ab6-0afa-3deb-411b" type="selectionEntryGroup"/>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="93ca-5a5c-774a-705e" name="Character" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="394b-e46b-5f83-f64d" name="Character" hidden="false" targetId="df42-7c02-a19d-0267" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="f5b8-70e4-10f9-db9d" name="Leaders" hidden="false" targetId="36fb-4363-ba26-c340" primary="true"/>
      </categoryLinks>
      <selectionEntryGroups>
        <selectionEntryGroup id="9ed9-5ab7-9563-d932" name="0. Profile Selection" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f614-1fc4-c8a1-f7be" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4407-3294-f789-77e5" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="4b25-d3cb-148c-5563" name="2. Warrior" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="eceb-f44e-4582-96d6" name="Warrior" hidden="false" targetId="77e4-ceac-27e2-99af" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="96b2-d709-1277-595a" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="73e1-1530-cbc7-46eb" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f5f8-c3d4-e3bb-0d65" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="95ba-654a-a7a6-6167" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5720-c8ab-cf4e-3e1d" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="a358-d3c3-cc14-b6d7" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="6f2f-2427-9656-a187" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e56b-82c2-c63b-0a74" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8006-9c55-f8e5-0eac" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="cf3f-1126-b430-17b0" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="e676-9356-9c5f-b5cd" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ced7-a000-d9ea-5628" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1d17-af40-da7d-7a1e" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="8e86-f579-1e22-54ed" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="0e6e-8e95-b18e-6b77" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a856-5d54-4e76-35f3" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ed67-12b8-03d1-e526" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="150.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="9dab-deef-3f25-200a" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="d959-cb99-26fd-ac27" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4d01-e1bb-5237-96ba" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3d71-199e-01c6-3eb5" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="300.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="c822-e350-6786-f4e3" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="4.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="4a7e-7915-1680-2f2a" name="3. Veteran" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="9084-646f-2c77-335a" name="Veteran" hidden="false" targetId="8e83-d76f-a754-d538" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="017a-d09b-e340-d495" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8ab4-bcae-1f41-58f5" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0445-8a58-f104-d38c" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="dd08-4978-9f89-a2a0" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7858-ab78-c89c-c9d2" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="090f-c655-b07d-b70c" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="6cfb-1696-5f13-6db8" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c96f-b5f3-c4cd-020a" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="08ac-7066-8f88-8f11" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="df0e-6f97-a6c0-f17a" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="90b8-1fda-ab26-cf59" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9ff0-4e80-dca0-fa2e" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="eb7d-018d-9ddf-df10" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="120.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="1db6-abd4-8645-fbe1" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="30fe-2ee9-e5d4-1a78" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0995-28cc-c3e7-2713" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b1d7-cfba-45cd-7a93" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="14d8-f96d-2f55-0b4e" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="46b7-5ecc-ca23-14a6" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9962-1f52-fa72-d6aa" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3331-8337-fe1d-47c0" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="480.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="59bb-ee4f-3696-2b1e" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="120.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="5.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="9a17-7232-34e8-73ec" name="1. Citizen" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="cf74-eae2-e1aa-2e71" name="Citizen" hidden="false" targetId="fe52-7181-c5b2-2514" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="5ccd-a79b-36b9-1b07" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cdf3-50c9-5716-81e4" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4234-a591-77c6-976d" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="9186-cc8a-240a-1f63" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8a7c-22ec-291c-c235" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="e5d6-5a58-fa41-feea" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="36dd-5626-abe5-9eda" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6d26-55bc-3c13-28e7" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1cc0-8e0a-4ea7-ae1d" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="7d96-9933-b04b-f494" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="f7b6-a355-fd05-4f86" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="32db-8e10-0d28-b8bd" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7f14-033f-c206-f026" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="45.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="08b6-1427-5014-61c0" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="5269-f4fd-3970-3d36" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="140a-2470-f110-6191" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="db59-0a50-c5e0-fa6f" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="90.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="5774-a113-430a-a774" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="b926-caf7-c05d-0287" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e31e-5e37-d928-59ec" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="95e0-fb4b-e9a7-80fd" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="180.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="5683-45e9-60ba-010e" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="45.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="3.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="7c96-e483-8e6e-8471" name="4. Champion" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="c611-a3d1-dcd0-a3ac" name="Champion" hidden="false" targetId="8dfc-fcdd-a990-8793" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="a70c-936c-e138-e128" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="99c1-d784-15b4-7601" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="40bb-1884-05a8-fb89" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="4f15-059c-8cfd-1406" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4604-b360-d8f3-8a20" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="15c9-3538-b097-d283" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="b527-e6a5-5bb5-1ce2" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cc30-72ce-2a5c-7aa2" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1c8d-aa28-720a-3491" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="af07-f4d9-d7b4-130a" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="5616-9c67-93bb-beb3" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e81a-a1b7-4b14-92ba" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f909-9fe1-09da-5717" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="180.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="1aa4-35eb-4f82-169b" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="38a9-70cc-b770-9339" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e85e-4e94-85c0-daef" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bb57-d5d1-54f1-bcc2" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="360.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="0bf6-674e-772e-67e0" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="b9cf-0ea5-d21b-2b68" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c449-3591-2019-f3be" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="35c2-7153-7a84-dee7" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="720.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="e84c-3e90-d74b-b4ce" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="180.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="6.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <entryLinks>
        <entryLink id="1224-a15b-065a-9e03" name="1. Armour" hidden="false" collective="false" import="true" targetId="bdc3-4cad-be21-e520" type="selectionEntryGroup"/>
        <entryLink id="6a90-62d5-99fd-84b4" name="4. Equipment" hidden="false" collective="false" import="true" targetId="9ccc-96ef-3ca2-5ed6" type="selectionEntryGroup"/>
        <entryLink id="fae4-4e10-b5f5-cbc9" name="5. Mount" hidden="false" collective="false" import="true" targetId="5542-0d9f-f788-7938" type="selectionEntryGroup"/>
        <entryLink id="2ac5-8127-cc77-a7c1" name="3. Sidearms" hidden="false" collective="false" import="true" targetId="ef78-471f-5a8a-465f" type="selectionEntryGroup"/>
        <entryLink id="54ef-efce-f456-587f" name="6. Talents" hidden="false" collective="false" import="true" targetId="d670-0cc3-226b-e9b3" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="b2af-4068-710e-c2cb" value="5.0">
              <conditions>
                <condition field="selections" scope="93ca-5a5c-774a-705e" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="4a7e-7915-1680-2f2a" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="b2af-4068-710e-c2cb" value="6.0">
              <conditions>
                <condition field="selections" scope="93ca-5a5c-774a-705e" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="7c96-e483-8e6e-8471" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="b2af-4068-710e-c2cb" value="4.0">
              <conditions>
                <condition field="selections" scope="93ca-5a5c-774a-705e" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="4b25-d3cb-148c-5563" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b2af-4068-710e-c2cb" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="e2b6-8df0-c1b2-afee" name="2. Weapon Selection" hidden="false" collective="false" import="true" targetId="141a-c34c-90a3-3a28" type="selectionEntryGroup"/>
        <entryLink id="e36b-8687-b043-0a52" name="8. Stat Improvements" hidden="false" collective="false" import="true" targetId="9ab6-0afa-3deb-411b" type="selectionEntryGroup"/>
        <entryLink id="648c-319f-548e-4b02" name="7. Traits" hidden="false" collective="false" import="true" targetId="a808-b419-b717-e37f" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="a6fe-20b4-4e2a-7e05" value="2.0">
              <conditions>
                <condition field="selections" scope="93ca-5a5c-774a-705e" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f0b6-534a-8d0f-6706" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a6fe-20b4-4e2a-7e05" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3f9d-4bf0-f52a-96f2" name="Hero" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7183-a75c-5275-93fe" name="Hero" hidden="false" targetId="9510-a885-1332-326c" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="2154-ffd4-142d-3853" name="Leaders" hidden="false" targetId="36fb-4363-ba26-c340" primary="true"/>
      </categoryLinks>
      <selectionEntryGroups>
        <selectionEntryGroup id="bc7b-b6b6-b9b1-0f49" name="0. Profile Selection" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a868-f2df-02ce-4ce2" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ae0d-2ae0-7f9c-dd7f" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="57f3-01e8-7ffd-32d9" name="2. Warrior" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="cd41-2cc6-b3a4-bf8e" name="Warrior" hidden="false" targetId="77e4-ceac-27e2-99af" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="7c3f-f8fd-8331-891b" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fb7a-8361-91f2-31fc" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3432-383b-4aed-8f99" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="1f1a-72d8-b834-207b" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1dad-80cf-5bad-b7fa" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="288b-0c67-2dfb-0bb2" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="eabf-cb0a-cc93-813f" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8587-017b-ba2d-cba8" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ef9a-eae1-499d-36ec" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="3d36-04e8-7d26-d83a" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="5c98-5e8e-9c67-14e7" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="60bf-a4e7-432e-962a" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8cb6-b0e0-6937-a3c9" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="2038-53fb-98b4-850e" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="613d-d200-b3f3-f227" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8c4d-6173-9183-e942" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3ee4-ca4a-d3b6-827f" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="200.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="cea4-8415-80ce-881c" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="8536-a907-6668-8de3" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="463c-7425-71c7-2f7d" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="128e-7482-28a3-b1a8" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="400.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="b4bf-f063-f0a2-f230" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="4.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="a62a-4f4c-0793-d6c1" name="3. Veteran" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="9cf3-9beb-f961-fec6" name="Veteran" hidden="false" targetId="8e83-d76f-a754-d538" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="d92d-fc9b-1b9f-a180" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0dab-3d0e-8ec0-3aed" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f68b-6c1d-7bf1-00e1" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="7f9d-09d3-5f54-5f92" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c24d-1747-1ce6-39d0" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="300b-5c5f-4e79-59b4" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="57e1-0793-9116-595d" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3134-fbac-0448-84a8" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="99f3-c6fa-ea16-f4e8" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="9702-abb7-3799-f9e3" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="9d16-efa2-07ae-574c" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a635-9951-636a-6da9" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3d7d-d7fb-ed80-f6c0" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="160.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="9a8b-af36-08f8-1e24" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="78d5-9d19-d9ad-616c" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5e37-a544-5a85-1236" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="49fa-8060-96eb-4242" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="320.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="8a47-1423-4c64-084e" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="ac1e-de11-1b22-66e1" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0940-9929-52a7-2d3c" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7ac1-36ed-ff0b-3285" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="640.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="bdfd-c4b0-657d-941e" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="160.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="5.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="6722-2949-b088-b61f" name="1. Citizen" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="0814-d370-4f9e-b8ab" name="Citizen" hidden="false" targetId="fe52-7181-c5b2-2514" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="e723-a032-feac-ba1b" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1e54-018d-9b68-6d7b" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d4b2-f18d-c3bc-6279" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="04ad-2ecc-b483-c92c" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c809-bad7-5176-6b69" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="8a29-1c40-1423-4068" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="ff24-9c65-ac77-7810" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7036-1e46-fe8c-ba35" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="25c1-d666-b4de-c4c5" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="9ba0-ea04-a209-5f28" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="4aba-c65d-3e57-8ce3" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6f0b-09ec-bed4-bbd7" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3523-ea0b-f108-0172" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="60.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="bb16-3c69-7041-b8e2" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="094f-fa0b-1aa7-0da7" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a862-b614-231a-9408" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="911c-db30-3a37-8be7" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="120.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="66dd-f21a-61f4-96ec" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="b11a-fffa-7d90-d8c9" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="caca-9ec8-5004-bc0e" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9d16-9ad7-af6e-079b" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="c89e-111a-60b3-ecb5" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="60.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="3.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="65d4-9827-8dce-1c3f" name="4. Champion" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="fc39-6477-a770-66a6" name="Champion" hidden="false" targetId="8dfc-fcdd-a990-8793" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="2901-7563-e1ba-9679" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cb0c-2ded-506a-04f4" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="83ac-b0c2-fada-4af1" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="ad72-9bf7-e983-01ca" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2c7c-469c-e165-9d64" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="0cd5-0a55-75c7-49b8" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="3c1b-74a4-703f-9b44" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e6c3-bb46-6268-fe8c" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5413-7358-5dcd-4f49" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="1473-0d10-b261-78e2" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="9ecb-8101-36a6-e059" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5c5c-3a58-7f07-cae9" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="92e9-6111-03dd-1961" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="23fb-ad77-2a16-5721" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="a78a-25e2-3222-3d96" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e7bf-f8d2-4841-c0e0" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4720-c23f-b57a-1ca2" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="480.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="28a6-89a5-fad2-487a" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="45e7-611c-3def-9f3c" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a95c-e2eb-4088-4272" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="25a5-9cf2-580f-0959" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="960.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="f530-6de7-ca0d-47ec" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="6.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <entryLinks>
        <entryLink id="3b98-ba49-3121-e36c" name="1. Armour" hidden="false" collective="false" import="true" targetId="bdc3-4cad-be21-e520" type="selectionEntryGroup"/>
        <entryLink id="6a64-5c1a-4f99-7707" name="4. Equipment" hidden="false" collective="false" import="true" targetId="9ccc-96ef-3ca2-5ed6" type="selectionEntryGroup"/>
        <entryLink id="c0b9-1b70-fc51-7868" name="5. Mount" hidden="false" collective="false" import="true" targetId="5542-0d9f-f788-7938" type="selectionEntryGroup"/>
        <entryLink id="e8a7-0c95-bea7-99e4" name="3. Sidearms" hidden="false" collective="false" import="true" targetId="ef78-471f-5a8a-465f" type="selectionEntryGroup"/>
        <entryLink id="efcc-3d67-a34d-1a75" name="6. Talents" hidden="false" collective="false" import="true" targetId="d670-0cc3-226b-e9b3" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="d3bb-e4fd-d7cb-536d" value="5.0">
              <conditions>
                <condition field="selections" scope="3f9d-4bf0-f52a-96f2" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="a62a-4f4c-0793-d6c1" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="d3bb-e4fd-d7cb-536d" value="6.0">
              <conditions>
                <condition field="selections" scope="3f9d-4bf0-f52a-96f2" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="65d4-9827-8dce-1c3f" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="d3bb-e4fd-d7cb-536d" value="4.0">
              <conditions>
                <condition field="selections" scope="3f9d-4bf0-f52a-96f2" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="57f3-01e8-7ffd-32d9" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d3bb-e4fd-d7cb-536d" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="97d5-b072-820d-ec80" name="2. Weapon Selection" hidden="false" collective="false" import="true" targetId="141a-c34c-90a3-3a28" type="selectionEntryGroup"/>
        <entryLink id="519a-94b0-fe09-813c" name="8. Stat Improvements" hidden="false" collective="false" import="true" targetId="9ab6-0afa-3deb-411b" type="selectionEntryGroup"/>
        <entryLink id="f4eb-a8e9-6abf-c330" name="7. Traits" hidden="false" collective="false" import="true" targetId="a808-b419-b717-e37f" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="8aa0-46e2-0a41-da18" value="3.0">
              <conditions>
                <condition field="selections" scope="3f9d-4bf0-f52a-96f2" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f0b6-534a-8d0f-6706" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8aa0-46e2-0a41-da18" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="348a-f738-1411-cbd6" name="Lord" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint field="selections" scope="b255-dfef-7dad-0d69" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="397d-5e9b-ee96-70fd" type="max"/>
      </constraints>
      <infoLinks>
        <infoLink id="c5d0-701b-6151-0c5c" name="Lord" hidden="false" targetId="2609-8d5e-656e-d4b7" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="080a-f5f6-d6dd-2ca4" name="Leaders" hidden="false" targetId="36fb-4363-ba26-c340" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="7953-108d-a924-7b64" name="Legendary Lord" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0d3a-7ffe-3c72-73e8" type="max"/>
          </constraints>
          <rules>
            <rule id="7f73-72fb-3cc8-63fb" name="Legendary Lord" hidden="false">
              <description>This fighter may expend a point of might or will for free each turn.




</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="3fba-9b16-1516-47a2" name="0. Profile Selection" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="875a-7dab-f716-04a9" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d804-57c6-dd9e-c2bc" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="9c09-8c6b-87d1-ddb7" name="2. Warrior" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="6bfb-f647-c29e-81a1" name="Warrior" hidden="false" targetId="77e4-ceac-27e2-99af" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="e02f-b9fc-84e0-eef1" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="054b-634f-9265-c248" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f498-57c7-088a-3949" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="1db3-d8a5-7a16-6e48" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="afc8-561f-1513-b3c7" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="8105-5813-4ebc-8f4b" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="931f-8acf-74d8-2680" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a87a-14cc-c8d9-3519" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="def8-edb4-9f20-e23d" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="8dfa-cee8-21a4-91e6" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="9baa-c5ef-5a25-c803" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3097-8bd4-8002-80e4" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3ccd-6a37-bc4e-15c2" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="150.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="f660-a180-fb13-ffac" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="042e-914f-6806-1caa" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="282e-a7ad-ab63-14c7" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1a01-8adb-79fb-ded5" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="300.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="3839-66e2-7f5a-b417" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="93e7-81f8-9311-85d0" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="21bf-9b29-e07d-0d3e" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="060f-641c-9384-2560" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="600.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="a79d-0b2a-7a66-5a7a" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="150.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="98fc-1508-2db9-9607" name="3. Veteran" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="4b18-268f-d9ce-e2ac" name="Veteran" hidden="false" targetId="8e83-d76f-a754-d538" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="a5b8-2ec7-f0a6-5325" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0f1e-18cb-66fb-c577" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8981-aafb-cae9-30c3" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="11bc-b232-2dc6-4835" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9e42-5b6a-e65b-32cd" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="20a6-9a55-02b1-42ff" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="7fce-ffb4-746e-54b1" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b93a-78ff-50e4-6d5f" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0116-bf7d-b7b9-3284" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="1c24-329e-4179-1c3e" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="1a9d-c006-87ba-2811" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5cb7-d75d-de46-252d" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5266-b996-a8b8-ac67" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="2d91-b4a4-ad70-1ea5" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="2ac6-996d-4418-6017" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="77d8-673b-2465-17c3" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="03ad-70c2-e6ad-55c5" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="480.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="078c-30e4-8c1e-ff8a" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="f258-531b-05cb-dc7e" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="919c-b31d-28ce-b75a" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1de6-031e-98ae-a4aa" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="960.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="debf-7e32-5007-0698" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="240.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="d271-4f36-c8dc-84e2" name="1. Citizen" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="7d61-ca44-a1ba-95e9" name="Citizen" hidden="false" targetId="fe52-7181-c5b2-2514" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="478f-09ba-9986-d816" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9c34-1de5-09a6-d08b" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0a79-9a6e-ab1d-6aac" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="c0dc-1c44-2a01-5668" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="863f-2fc3-b57a-9f74" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="757a-eb63-8a42-dc06" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="961b-9c62-8816-0a9e" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="172e-4182-ed9b-3097" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4791-33f9-0200-936e" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="ef45-4675-2934-8a8e" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="7cc5-ea70-81e6-6b1a" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="685a-777f-c26b-b4dd" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a6fc-14df-640e-2b18" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="90.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="7f38-9058-03c6-1678" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="8f02-5da9-e1f3-517a" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3833-598d-849b-8b52" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e9b6-19e4-51fb-86f7" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="180.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="7854-93bd-f9ad-7115" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="8af4-95b1-39d8-a818" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ce49-0c64-d99a-31c1" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7270-ad4a-0330-5211" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="360.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="553d-8c0a-c449-43d2" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="90.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="1545-3ecf-bb55-7418" name="4. Champion" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="36ff-a813-89dd-1bf3" name="Champion" hidden="false" targetId="8dfc-fcdd-a990-8793" type="profile"/>
              </infoLinks>
              <selectionEntries>
                <selectionEntry id="164a-bef9-c83f-ee56" name="Wizard" hidden="false" collective="false" import="true" type="upgrade">
                  <constraints>
                    <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d633-e46a-02e0-585d" type="max"/>
                    <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1668-815d-e606-97b6" type="min"/>
                  </constraints>
                  <selectionEntries>
                    <selectionEntry id="9442-03ac-221b-1520" name="Weapon Replacement (cannot take weapon)" hidden="false" collective="false" import="true" type="upgrade">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4189-da78-8cf1-9660" type="max"/>
                      </constraints>
                      <entryLinks>
                        <entryLink id="8b98-858c-6844-04c7" name="Weapon Replacement" hidden="false" collective="false" import="true" targetId="7ca4-b103-4d59-3fee" type="selectionEntryGroup"/>
                      </entryLinks>
                      <costs>
                        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                      </costs>
                    </selectionEntry>
                  </selectionEntries>
                  <selectionEntryGroups>
                    <selectionEntryGroup id="545d-fbd6-a8a6-825c" name="Wizard Level" hidden="false" collective="false" import="true">
                      <constraints>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6590-12da-1197-1c30" type="max"/>
                        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fb04-97b6-0215-1eb4" type="min"/>
                      </constraints>
                      <selectionEntries>
                        <selectionEntry id="2408-5b51-3e5e-0559" name="1. Level One" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="0a56-3a56-8664-69c2" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d324-19d7-d615-e754" type="max"/>
                                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="92e6-a147-8c6f-08ad" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="360.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="6bb1-b4ed-0b05-1c68" name="2. Level Two" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="4b86-6f45-3aac-2cef" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cf9e-467c-f660-b1dd" type="max"/>
                                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c751-7fa8-30fa-240e" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="720.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                        <selectionEntry id="d3a9-4195-557e-28e6" name="3. Level Three" hidden="false" collective="false" import="true" type="upgrade">
                          <entryLinks>
                            <entryLink id="0b60-df68-d2bb-1163" name="Spells" hidden="false" collective="false" import="true" targetId="2272-227d-637f-342e" type="selectionEntryGroup">
                              <constraints>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2d21-0e3c-7a23-76ac" type="max"/>
                                <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="46c7-0a2e-acf9-9c1f" type="min"/>
                              </constraints>
                            </entryLink>
                          </entryLinks>
                          <costs>
                            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="1440.0"/>
                            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                          </costs>
                        </selectionEntry>
                      </selectionEntries>
                    </selectionEntryGroup>
                  </selectionEntryGroups>
                  <entryLinks>
                    <entryLink id="46fe-7dc2-ab26-3ed2" name="Wizard Archetype" hidden="false" collective="false" import="true" targetId="6759-2b2e-d9f5-a1de" type="selectionEntryGroup"/>
                  </entryLinks>
                  <costs>
                    <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
                    <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                    <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                  </costs>
                </selectionEntry>
              </selectionEntries>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="360.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <entryLinks>
        <entryLink id="5ad0-b3fe-7194-b00e" name="1. Armour" hidden="false" collective="false" import="true" targetId="bdc3-4cad-be21-e520" type="selectionEntryGroup"/>
        <entryLink id="60e4-085e-c410-9c00" name="4. Equipment" hidden="false" collective="false" import="true" targetId="9ccc-96ef-3ca2-5ed6" type="selectionEntryGroup"/>
        <entryLink id="f491-1a70-65a9-0bc0" name="5. Mount" hidden="false" collective="false" import="true" targetId="5542-0d9f-f788-7938" type="selectionEntryGroup"/>
        <entryLink id="61ca-5b25-5b8b-ea45" name="3. Sidearms" hidden="false" collective="false" import="true" targetId="ef78-471f-5a8a-465f" type="selectionEntryGroup"/>
        <entryLink id="3455-928b-eeb2-3b09" name="6. Talents" hidden="false" collective="false" import="true" targetId="d670-0cc3-226b-e9b3" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="776c-db86-19c2-ef64" value="6.0">
              <conditions>
                <condition field="selections" scope="348a-f738-1411-cbd6" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="98fc-1508-2db9-9607" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="776c-db86-19c2-ef64" value="7.0">
              <conditions>
                <condition field="selections" scope="348a-f738-1411-cbd6" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="1545-3ecf-bb55-7418" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="776c-db86-19c2-ef64" value="5.0">
              <conditions>
                <condition field="selections" scope="348a-f738-1411-cbd6" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="9c09-8c6b-87d1-ddb7" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="4.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="776c-db86-19c2-ef64" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="4272-caaa-1f1c-c90f" name="2. Weapon Selection" hidden="false" collective="false" import="true" targetId="141a-c34c-90a3-3a28" type="selectionEntryGroup"/>
        <entryLink id="f2a8-6be1-310c-6d5e" name="8. Stat Improvements" hidden="false" collective="false" import="true" targetId="9ab6-0afa-3deb-411b" type="selectionEntryGroup"/>
        <entryLink id="bc89-020f-c046-e958" name="7. Traits" hidden="false" collective="false" import="true" targetId="a808-b419-b717-e37f" type="selectionEntryGroup">
          <modifiers>
            <modifier type="set" field="d07e-eaed-1c6d-a3d0" value="4.0">
              <conditions>
                <condition field="selections" scope="348a-f738-1411-cbd6" value="1.0" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="f0b6-534a-8d0f-6706" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d07e-eaed-1c6d-a3d0" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
      <costs>
        <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
        <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
        <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="d670-0cc3-226b-e9b3" name="6. Talents" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="224a-8117-7244-5438" name="Deployment: Scout" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9c45-505b-9588-2277" type="max"/>
          </constraints>
          <rules>
            <rule id="c56f-dac1-2df5-640b" name="Scout" hidden="false">
              <description>This fighter may be deployed 6” outside of its regular deployment zone, and 6” further away from its leader’s zone of influence.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="46e9-314f-6dfd-e787" name="Defence: Hardy" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bf17-a62e-a6a4-a75d" type="max"/>
          </constraints>
          <rules>
            <rule id="d6d8-8ee8-d8a2-f903" name="Hardy" hidden="false">
              <description>This fighter improves its defence by 1 while unarmored.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f1ac-949d-a327-8b65" name="Stealth: Sneak" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6413-19e3-c753-af22" type="max"/>
          </constraints>
          <rules>
            <rule id="ea50-ac2c-c401-e034" name="Sneak" hidden="false">
              <description>While further than 6” away from the enemy this fighter has a 3+ Cover Save if it is in the open, and improves all terrain based cover saves.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="dc9e-6216-4bef-8e42" name="Defence: Shield-Wall" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="14cd-3333-1250-9fa1" type="max"/>
          </constraints>
          <rules>
            <rule id="a82c-4feb-7d62-2a77" name="Shield-Wall" hidden="false">
              <description>If this fighter is in base contact with another friendly fighter who also has this talent, and they both have shields, they both gain +1 Defence.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9fc6-ffca-6c5b-36c4" name="Defence: Sure-Footed" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ca94-bceb-a7f5-5aa6" type="max"/>
          </constraints>
          <rules>
            <rule id="da59-dfe1-bf3d-1f56" name="Sure-Footed" hidden="false">
              <description>When this fighter would be knocked prone roll a dice: on a 4+ they remain standing.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8611-95d6-c1f7-9f8d" name="Movement: Inexorable" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="10bd-56af-68fa-b89e" type="max"/>
          </constraints>
          <rules>
            <rule id="e54f-a7b6-c8d9-ca91" name="Inexorable" hidden="false">
              <description>This fighter suffers no movement penalties for carrying a heavy object.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8844-84d8-dc4d-789f" name="Shooting: Readjust" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c6fd-53c3-a9d8-d1c7" type="max"/>
          </constraints>
          <rules>
            <rule id="0db8-bf5e-87e7-e9e0" name="Readjust" hidden="false">
              <description>This fighter may move 1” without having moved for the purposes of shooting. </description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="fc0e-7e67-709c-d695" name="Shooting: Marksman" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3423-09b6-3a6d-008a" type="max"/>
          </constraints>
          <rules>
            <rule id="8657-736d-563c-1147" name="Skillful Aim" hidden="false">
              <description>This fighter ignores one cover save their opponent has.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="58af-70ec-c83e-3f1b" name="Shooting: Rapid Reload" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="258c-75a6-fd8a-0569" type="max"/>
          </constraints>
          <rules>
            <rule id="b124-d8d8-5c90-12df" name="Rapid Reload" hidden="false">
              <description>This fighter may fire twice per phase if it stands still, unless it is firing an unwieldy weapon.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="877e-754e-4a4f-215a" name="Shooting: Overwatch" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5d82-8fe8-0705-a14a" type="max"/>
          </constraints>
          <rules>
            <rule id="2cbd-ecbc-964a-3e64" name="Overwatch" hidden="false">
              <description>The first time this fighter is charged per turn, if it has not yet moved, it may take a shot. It may not then shoot later this turn.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e0a2-fd88-94e9-9a97" name="Anti-Magic: Incorruptible" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8b77-a0f1-6bb9-14a1" type="max"/>
          </constraints>
          <rules>
            <rule id="a681-bb03-689c-f1ad" name="Incorruptible" hidden="false">
              <description>Cannot be taken by a wizard. This fighter cannot be the target of a spell, nor can it be affected by a spell by being within a certain range of the target.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="950c-4cd1-b210-c89a" name="Melee: Defensive Duelist" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9351-70a9-f4e1-820c" type="max"/>
          </constraints>
          <rules>
            <rule id="4d41-6a98-bfa3-fbd1" name="Defensive Duelist" hidden="false">
              <description>This fighter can block (without a shield).</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ad13-867a-d0f3-20d8" name="Melee: Berserker" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bb0b-4e53-2684-7251" type="max"/>
          </constraints>
          <rules>
            <rule id="117e-7185-2179-a5c4" name="Berserker" hidden="false">
              <description>After rolling to hit but before alternating fighters to strike and parry, this fighter may expend all of its hit dice (at least one) in order to make a strike against every model it is in base contact with.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1316-3447-4eb9-3c9e" name="Melee: Quicksilver" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2cba-b2d3-729b-a84b" type="max"/>
          </constraints>
          <rules>
            <rule id="fec1-e35d-c37b-4b51" name="Quicksilver" hidden="false">
              <description>This fighter is always allocated to strike first, regardless of whether it has priority. If two or more fighters have this ability, alternate via priority order.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ebd3-c229-4e4e-89c5" name="Melee: Feint" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b8c7-c656-2408-932c" type="max"/>
          </constraints>
          <rules>
            <rule id="27be-fd7d-2666-229d" name="Feint" hidden="false">
              <description>This fighter may expend a critical hit to make a strike and a parry (rather than an additional one of each).


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="503f-72a9-dadf-f6be" name="Melee: Second Wind" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b87c-6718-7676-b1de" type="max"/>
          </constraints>
          <rules>
            <rule id="5555-2e16-fe12-aba3" name="Second Wind" hidden="false">
              <description>If this fighter takes an enemy out of action in melee, they regain a wound.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="571e-bc6c-94f7-0005" name="Melee: Frenzy" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ad97-fe9b-8f01-3ef0" type="max"/>
          </constraints>
          <rules>
            <rule id="e6aa-d403-31df-4446" name="Frenzy" hidden="false">
              <description>If this fighter is taken out of action in combat, it remains in play until it expends all of its hits.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3e98-d696-3676-7c37" name="Cavalry: Horse Lord" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="236a-db99-a44c-4233" type="max"/>
          </constraints>
          <rules>
            <rule id="16d3-ded0-9327-88f4" name="Horse Lord" hidden="false">
              <description>When this fighter’s mount takes a hit it may choose to take the hit instead.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7097-76fa-cdc2-235f" name="Cavalry: Expert Rider" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0bb0-2f8f-490e-9523" type="max"/>
          </constraints>
          <rules>
            <rule id="2aed-4789-7f4c-7cf3" name="Expert Rider" hidden="false">
              <description>This fighter always succeeds in its dismount checks.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="0ea9-6a66-6cfe-1545" name="Morale: Devotion" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1c24-fe28-972f-98c9" type="max"/>
          </constraints>
          <rules>
            <rule id="e180-1435-0326-f0cc" name="Devotion" hidden="false">
              <description>This fighter passes all morale checks if it is within the army’s Lord’s zone of influence.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="aca5-bc65-2e20-91c1" name="Morale: Terror" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f4cd-9139-c985-3384" type="max"/>
          </constraints>
          <rules>
            <rule id="da94-3901-3df8-407e" name="Terror" hidden="false">
              <description>If a fighter wishes to charge this fighter, it must pass a morale check. If it fails, it cannot move.

	</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e364-9956-d92d-ad66" name="Morale: Iron Resolve" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="893c-ea8d-9522-1be6" type="max"/>
          </constraints>
          <rules>
            <rule id="95dc-338b-b223-4e60" name="Iron Resolve" hidden="false">
              <description>This fighter treats its army as being one step better for the purposes of morale (therefore ignores ‘confident’ until wavering).


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6f34-f2b1-2df6-0c04" name="Morale: Feel No Pain" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="307e-7c2e-4593-9971" type="max"/>
          </constraints>
          <rules>
            <rule id="12cd-ade0-ea49-92db" name="Feel No Pain" hidden="false">
              <description>This fighter ignores its first wound for the purposes of acting (attacking, morale etc.)

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9ff2-32c7-cf23-91d5" name="Anti-Magic: Fear the Mutant" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fe0d-2afc-b478-f76b" type="max"/>
          </constraints>
          <rules>
            <rule id="1498-cff9-5991-346a" name="Fear the Mutant" hidden="false">
              <description>Cannot be taken by a wizard. This fighter inflicts instant death when striking a model that carries a magic item, is a wizard or is otherwise magical. This fighter cannot carry a magic item or receive assistance from magic.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="fad8-fa79-1069-8b5c" name="Anti-Magic: Deny the Witch" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fe19-4ced-7f36-2df7" type="max"/>
          </constraints>
          <rules>
            <rule id="8a4f-27f2-a63a-5e84" name="Deny the Witch" hidden="false">
              <description>Cannot be taken by a wizard. This fighter can resist magic as though it were a level 1 wizard. It never suffers from magical mishaps.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b358-67b0-88bb-dc84" name="Stealth: Assassinate" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1117-6273-ce2c-a6a5" type="max"/>
          </constraints>
          <rules>
            <rule id="9965-dc06-ea21-77d6" name="Assassinate" hidden="false">
              <description>The damage on all of this fighter’s weapons becomes Instant Death when attacking a fighter that is not alerted.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ee8c-a555-babb-cf81" name="Deployment: Ambush" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7381-9694-1608-5672" type="max"/>
          </constraints>
          <rules>
            <rule id="7da5-7536-4024-2b51" name="Ambush" hidden="false">
              <description>This fighter may be deployed in ambush. During the priority phase of each turn, you may decide if the fighter will come out of ambush. Each turn from then onwards, roll a dice. On a 4+ you have to deploy this fighter anywhere out of LoS or in cover from all enemies, or in base contact with any table edge.

If an entire warband is upgraded with this talent, make a single roll for the whole warband.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="940e-f48d-155e-3e11" name="Movement: Leap" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9249-187d-bf60-57fe" type="max"/>
          </constraints>
          <rules>
            <rule id="b938-dd4d-0c9b-bd14" name="Leap" hidden="false">
              <description>This fighter does not need to make an agility test to move across an obstacle between its height and half its height, instead it subtracts 1 from its movement.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ce36-e94f-d886-cde3" name="Movement: Headlong Charge" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5dc7-32c8-e620-6f61" type="max"/>
          </constraints>
          <rules>
            <rule id="5189-5cd7-b763-2f02" name="Headlong Charge" hidden="false">
              <description>This fighter may charge as part of a heroic march.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2d07-07a4-e499-3cf3" name="Shooting: Dead Eye" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="57b9-2211-8817-cd45" type="max"/>
          </constraints>
          <rules>
            <rule id="aa20-9308-0127-401a" name="Dead Eye" hidden="false">
              <description>If this fighter rolls a hit with a value double or more the value needed, increase the weapon’s damage by 1. </description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3862-c130-6467-1369" name="Melee: Martial Drill" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2547-ff30-72e0-86d5" type="max"/>
          </constraints>
          <rules>
            <rule id="6fed-3b49-4040-37fc" name="Martial Drill" hidden="false">
              <description>As long as this fighter has at least two brawn (remaining) it may contribute two attacks when supporting.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ecc4-7117-bd6b-0b41" name="Melee: Shatter" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6200-d5d9-ec0d-ef4b" type="max"/>
          </constraints>
          <rules>
            <rule id="7884-013a-6ba7-6fe2" name="Shatter" hidden="false">
              <description>This fighter may expend a critical hit to damage a piece of equipment carried by their target. If damage is inflicted on a damaged piece of equipment, that equipment is destroyed.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="6759-2b2e-d9f5-a1de" name="Wizard Archetype" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bafc-3f70-f5e1-bd9c" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="249b-b6c9-e1d8-a272" type="min"/>
      </constraints>
      <selectionEntries>
        <selectionEntry id="ecc3-4527-a8ae-e980" name="Focus" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="85e3-f56c-72c9-593d" name="Blood" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="0425-9a6a-b22c-b9c5" name="Leech" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e1d8-6ce1-1cf9-66b6" name="Death" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9be8-743b-d387-d6e7" name="Mob" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7a07-df14-f653-319b" name="Penitence" hidden="false" collective="false" import="true" type="upgrade">
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="2272-227d-637f-342e" name="Spells" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="e959-5e1c-2d64-90d7" name="Shield" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a177-7adb-211c-bed8" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7433-9dd2-62e8-a2a4" name="Temporal Claws" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d41f-b658-ac10-d000" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c30d-c48b-d00a-aaef" name="Psychosis" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c6d0-9fb3-1c25-228e" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b20a-58b5-f85d-5a99" name="Drain" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b2cc-8838-156f-ddc7" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="000f-edf9-3e16-fa56" name="Heal" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7ea5-fdc0-d322-c4df" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ab58-4eb4-c69f-be20" name="Fast Travel" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="56e2-ba6c-a074-d0e7" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a147-6592-68bc-b27a" name="Incorporeal" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c14b-f321-d79a-1b1e" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a260-0109-9a21-9af8" name="Alter Environment" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="23f6-6fc7-f634-62c2" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b07b-425a-5dde-64c9" name="Magic Missile" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2519-6fa4-3c8e-02b9" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5aa5-b930-ca34-19ef" name="Call of the Wilds" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2672-5f9f-4135-5f01" type="max"/>
          </constraints>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="bdc3-4cad-be21-e520" name="1. Armour" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8cb3-0ecc-b2f4-b672" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="85fd-9c2a-7f1c-88ff" type="min"/>
      </constraints>
      <selectionEntries>
        <selectionEntry id="beaa-6014-a0e8-458a" name="0. No Armour" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="717a-2449-5d6b-460d" name="Armour: None" hidden="false" typeId="75dc-1dba-7112-e066" typeName="Defence">
              <characteristics>
                <characteristic name="Defence" typeId="a901-cc83-55b6-2f17">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="a3a3-ccd4-a958-e69a" name="Armour: None" hidden="false">
              <description>Ignore Difficult Terrain. </description>
            </rule>
            <rule id="ffa4-a6e8-d121-a355" name="Armour: None (1)" hidden="false">
              <description>+1 Agilty</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <entryLinks>
        <entryLink id="59b5-a0d6-0e52-4615" name="1. Light Armour" hidden="false" collective="false" import="true" targetId="d7df-5406-1dc8-eb89" type="selectionEntry"/>
        <entryLink id="24e4-636a-ecf4-a9ca" name="2. Moderate Armour" hidden="false" collective="false" import="true" targetId="fef1-808f-b464-9af4" type="selectionEntry"/>
        <entryLink id="b246-05fa-c8dd-8220" name="3. Heavy Armour" hidden="false" collective="false" import="true" targetId="9dba-6b93-87fc-7b42" type="selectionEntry"/>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="9ccc-96ef-3ca2-5ed6" name="4. Upgrades  - (Can only take Sidearm)" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fc1c-dbd8-83c4-d1ea" type="max"/>
      </constraints>
      <entryLinks>
        <entryLink id="8035-318f-3925-7ab8" name="Medical Equipment" hidden="false" collective="false" import="true" targetId="1b63-2748-392c-8d8a" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2868-9e48-8c23-6cb8" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="5ff2-80b9-d072-336e" name="Horn Blower" hidden="false" collective="false" import="true" targetId="74ee-2e5a-20c9-5163" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="56ac-6e92-99e9-c06b" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="6b25-1f38-f18f-c53b" name="Drummer" hidden="false" collective="false" import="true" targetId="4c58-cd5e-895c-aff2" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="39ec-f890-f016-3be8" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="ed46-109a-f4d4-3727" name="Standard Bearer" hidden="false" collective="false" import="true" targetId="1b6f-244b-3067-70e8" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a15e-001e-b588-6aa4" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="5542-0d9f-f788-7938" name="5. Mount" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fbc9-f731-82d6-d1c2" type="max"/>
      </constraints>
      <entryLinks>
        <entryLink id="5c8b-301f-9382-7911" name="War Horse" hidden="false" collective="false" import="true" targetId="6078-144f-ae81-0085" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a955-81f5-7019-802c" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="0526-e86e-670f-1e03" name="Horse" hidden="false" collective="false" import="true" targetId="51af-4541-02f1-b814" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d6b0-0577-99a1-e9d7" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="358c-3021-a100-75d5" name="Warg" hidden="false" collective="false" import="true" targetId="e84b-9359-af85-c46b" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0513-aded-7d95-f60b" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="a808-b419-b717-e37f" name="7. Traits" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="549c-a0ea-8425-9599" name="Master of Battle" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5a4c-09b7-f093-7ad3" type="max"/>
          </constraints>
          <rules>
            <rule id="9897-2467-26ab-725e" name="Master of Battle" hidden="false">
              <description>When an enemy fighter calls a heroic order within 6” of this fighter, on a 4+ it may call the same heroic order for free.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b460-6352-7503-9cbc" name="Sworn Protector" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6a62-943d-0803-b252" type="max"/>
          </constraints>
          <rules>
            <rule id="690a-e6b8-da48-a7eb" name="Sworn Protector" hidden="false">
              <description>When a friendly fighter in base contact with this fighter suffers a wound, this fighter can choose to expend a will or suffer a wound so that the friendly fighter can call a ‘Heroic Vitality’ for free.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="df37-eee3-6dad-a7fe" name="Voice of Command" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ff6a-7525-367e-8ff9" type="max"/>
          </constraints>
          <rules>
            <rule id="66f1-f23a-eba9-97c1" name="Voice of Command" hidden="false">
              <description>Increase this leader’s Zone of Influence by 3”



</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a43c-bbd1-ae85-d4ce" name="Taskmaster" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c16c-caa8-10f0-a607" type="max"/>
          </constraints>
          <rules>
            <rule id="ab7e-58a2-d871-47db" name="Taskmaster" hidden="false">
              <description>When a friendly leader within 6” of this fighter spends a point of will on a heroic action, on a 4+ the will is not expended.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5176-99fc-15f4-1042" name="Glory Seeker" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e17a-e616-1ead-2435" type="max"/>
          </constraints>
          <rules>
            <rule id="e28b-6b7b-3f69-ba59" name="Glory Seeker" hidden="false">
              <description>If this fighter takes an enemy leader out of action, it regains a point of might or will.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e3d5-8b86-734a-0295" name="Beguiling" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b5c9-b94f-2e6a-286d" type="max"/>
          </constraints>
          <rules>
            <rule id="d6c1-bb4e-0561-1bae" name="Beguiling" hidden="false">
              <description>When an enemy calls a heroic action within 6” of this fighter, on a 4+ they either cannot call it or must expend another point of will/might.



</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="771d-0834-857d-6433" name="Etermal Warrior" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9e53-9baf-9c53-14e7" type="max"/>
          </constraints>
          <rules>
            <rule id="3a25-6348-845e-0c03" name="Eternal Warrior" hidden="false">
              <description>If this fighter would be taken out of action by instant death it suffers one wound instead. This may take it out of action regardless.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="ef78-471f-5a8a-465f" name="3. Sidearm" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a490-76c3-9433-8b13" type="max"/>
      </constraints>
      <entryLinks>
        <entryLink id="82d8-582a-c609-9b80" name="Bow" hidden="false" collective="false" import="true" targetId="423a-cf35-af9e-df38" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7d6a-7a6a-68ce-f865" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="a2bd-343d-026e-915b" name="Hand Weapon" hidden="false" collective="false" import="true" targetId="09ad-c2a1-03da-3d2c" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="529d-3db6-ff41-ff44" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="8fae-72f5-62ad-7258" name="Lance" hidden="false" collective="false" import="true" targetId="2ca1-3608-310c-68d9" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8a0d-5ab3-0faf-9a77" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="c7b3-45c1-3d43-3215" name="Additional Lance" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cc9a-190e-f422-5588" type="max"/>
              </constraints>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="5.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </entryLink>
        <entryLink id="705f-92da-b67e-091c" name="Pistol" hidden="false" collective="false" import="true" targetId="8878-b093-7a37-62cb" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4d28-1fc7-eb51-e479" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="7ee3-ed7e-5023-2b4c" name="Throwing Weapons" hidden="false" collective="false" import="true" targetId="f506-b638-5d2c-e304" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="deb5-3a86-ea2e-dd29" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="2b0f-9ad2-9ba7-47a9" name="Additional Throwing Weapons" hidden="false" collective="false" import="true" type="upgrade">
              <constraints>
                <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6903-1220-dbc0-11f8" type="max"/>
              </constraints>
              <costs>
                <cost name="_Gold " typeId="b853-595d-9b44-a445" value="5.0"/>
                <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
                <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="141a-c34c-90a3-3a28" name="2. Weapon Selection" hidden="false" collective="false" import="true">
      <modifiers>
        <modifier type="set" field="b750-a57a-864e-a8e9" value="1.0">
          <conditions>
            <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="2c63-1fb8-1abb-6d12" type="equalTo"/>
          </conditions>
        </modifier>
      </modifiers>
      <constraints>
        <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b750-a57a-864e-a8e9" type="max"/>
      </constraints>
      <entryLinks>
        <entryLink id="aacb-ed67-895e-3a3c" name="Two Handed Weapon" hidden="false" collective="false" import="true" targetId="2c63-1fb8-1abb-6d12" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="26c7-ea80-dad5-30fa" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="755d-420b-d1a6-0be5" name="Melee Weapon" hidden="false" collective="false" import="true" targetId="d2c8-3f78-0c13-7e69" type="selectionEntry"/>
        <entryLink id="d2d9-263d-7f00-8a4c" name="Ranged Weapon" hidden="false" collective="false" import="true" targetId="b7b2-3ff0-9d4e-bfde" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c008-f646-9638-0d27" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="9ab6-0afa-3deb-411b" name="8. Stat Improvements" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="10e5-13e5-cb5f-643e" name="1. Combat" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8daa-f890-9a0a-c301" type="max"/>
          </constraints>
          <rules>
            <rule id="4f1b-e4ad-6dc1-70b3" name="Improvement: Combat" hidden="false">
              <description>+1 Combat</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7541-23b3-c9b1-b03a" name="2. Ranged" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="236d-72c4-6873-88fd" type="max"/>
          </constraints>
          <rules>
            <rule id="e034-c3ee-1282-d09e" name="Improvement: Ranged" hidden="false">
              <description>+1 Ranged</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2784-ca9c-3a22-0c05" name="3. Brawn" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="285d-7b1d-ff71-ab46" type="max"/>
          </constraints>
          <rules>
            <rule id="a0f6-4871-e31b-4235" name="Improvement: Brawn" hidden="false">
              <description>+1 Brawn</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="45.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="be76-043f-4b9b-e04b" name="4. Agility" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7e91-6592-461c-93ee" type="max"/>
          </constraints>
          <rules>
            <rule id="a7e9-4090-6580-5e1f" name="Improvement: Agility" hidden="false">
              <description>+1 Agility</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="0883-9dea-7576-2cf5" name="5. Morale" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2556-f038-dcdc-0703" type="max"/>
          </constraints>
          <rules>
            <rule id="b857-ee3e-504e-3abb" name="Improvement: Morale" hidden="false">
              <description>+1 Morale</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f0b6-534a-8d0f-6706" name="6. Might" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b318-3dbd-ba24-981e" type="max"/>
          </constraints>
          <rules>
            <rule id="e8e2-df48-c87c-7cc6" name="Improvement: Might" hidden="false">
              <description>+1 Might</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="45.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a16b-ed84-ddf8-30b5" name="7. Will" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a58a-f70d-1934-8906" type="max"/>
          </constraints>
          <rules>
            <rule id="5c1b-efac-a705-a789" name="Improvement: Will" hidden="false">
              <description>+1 Will</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="45.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="34e1-f558-7326-0527" name="Melee Weapon" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="35ba-2b83-0b43-b5b9" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c277-82f5-524f-33a6" type="min"/>
      </constraints>
      <entryLinks>
        <entryLink id="66e6-9ef1-b8e2-e8f8" name="Hand Weapon" hidden="false" collective="false" import="true" targetId="09ad-c2a1-03da-3d2c" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="51b8-b860-ffc9-80b6" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="cc3b-dda2-54ea-0a7c" name="Spear" hidden="false" collective="false" import="true" targetId="f267-f383-36c4-673d" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d992-8d47-10fc-15cd" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="9608-84f6-4533-0f04" name="Shield" hidden="false" collective="false" import="true" targetId="b972-6aa0-3ae8-bd93" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fc73-0bed-9c2f-28c6" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="f18e-f4cb-436e-a5e0" name="Polearm" hidden="false" collective="false" import="true" targetId="d64f-ac82-61d2-1330" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="55e9-a433-d4b3-1ea1" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="bc92-cc97-b91c-c854" name="Ranged Weapon" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7e06-b5f7-cb0d-8139" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8924-73f4-3677-0d91" type="min"/>
      </constraints>
      <entryLinks>
        <entryLink id="c42a-0e39-0561-e381" name="Bow" hidden="false" collective="false" import="true" targetId="423a-cf35-af9e-df38" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1183-95a8-db79-55b6" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="aa08-2af8-97a7-80a5" name="Long Rifle" hidden="false" collective="false" import="true" targetId="e262-7490-90fd-1ebb" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e3e2-3be4-1a22-02c8" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="9aaf-d2fc-1f7c-1ffe" name="Crossbow" hidden="false" collective="false" import="true" targetId="11e9-77f9-4e99-fc61" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0078-4818-635e-2e70" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="dfc0-c456-32d4-13fd" name="Handgun" hidden="false" collective="false" import="true" targetId="8cbe-fec8-3a7a-02ff" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="13a5-b9ce-adb0-2e21" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="cb8c-f5d4-478d-7813" name="Repeater" hidden="false" collective="false" import="true" targetId="9acb-687f-04e4-753b" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="18e6-b137-d7ae-ba0c" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="6834-5516-2691-eec7" name="Sling" hidden="false" collective="false" import="true" targetId="9348-c5a2-55d9-c00a" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="91e1-fa78-1339-22b6" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="6264-fab5-249d-3e85" name="Pistol" hidden="false" collective="false" import="true" targetId="8878-b093-7a37-62cb" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c6c8-b456-d2d7-1c97" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="ec18-4ac3-e196-4681" name="Two Handed Weapon" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7dff-0e15-5600-72c1" type="max"/>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="21c4-f186-35e7-5da9" type="min"/>
      </constraints>
      <entryLinks>
        <entryLink id="96b9-0a78-f44f-0d24" name="Great Weapon" hidden="false" collective="false" import="true" targetId="31e8-3b8b-7490-24c2" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4eb5-586e-b8cb-4b0f" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="9af4-8dec-8d5c-b2c1" name="Hand and a Half Weapon" hidden="false" collective="false" import="true" targetId="3909-9054-7ecf-a9c6" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="945e-e673-46b8-418d" type="max"/>
          </constraints>
        </entryLink>
        <entryLink id="44cb-4028-b138-46a0" name="Pike" hidden="false" collective="false" import="true" targetId="d379-90df-a102-f5c4" type="selectionEntry">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="46f9-6097-249c-61d0" type="max"/>
          </constraints>
        </entryLink>
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="ac4a-6177-8520-fe5d" name="Weapons" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="31e8-3b8b-7490-24c2" name="Great Weapon" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="293f-08b4-8555-03d2" name="Great Weapon" hidden="false">
              <description>When a fighter with a two-handed weapon makes a strike, it inflicts two hits on the target. However, it costs an additional hit dice to make a parry. Damage: 2.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3909-9054-7ecf-a9c6" name="Hand and a Half Weapon" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="d1a7-6995-a2ea-81a6" name="Hand and a Half Weapon" hidden="false">
              <description>Can be used as a hand weapon or a great weapon (in both cases at damage 1).</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="d379-90df-a102-f5c4" name="Pike" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="4bca-a602-651a-859d" name="Pike" hidden="false">
              <description>Allows the fighter to support two ranks deep instead of one (supporting via a supporting model). -1 to Melee when not supporting. Damage: 1.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e262-7490-90fd-1ebb" name="Long Rifle" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="d771-c7f9-89e8-ffaf" name="Long Rifle" hidden="false">
              <description>Range: 6-36&quot;. Move: Unwieldy. Blackpowder. Damage: Instant Death.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8cbe-fec8-3a7a-02ff" name="Handgun" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="17cd-b306-518f-7daf" name="Handgun" hidden="false">
              <description>Range: 18&quot;. Move: Unwieldy. Blackpowder. Damage: 3.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="11e9-77f9-4e99-fc61" name="Crossbow" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="f9bb-0d51-2aea-bb66" name="Crossbow" hidden="false">
              <description>Range: 24&quot;. Move: Unwieldy. Ignores Armour. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="25.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="423a-cf35-af9e-df38" name="Bow" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="2b5c-3e2d-b4e3-d4dc" name="Bow (Accurate)" hidden="false">
              <description>Range: 24&quot;. Move: Half. Damage: 2.</description>
            </rule>
            <rule id="6c9b-dc22-2f97-b4fe" name="Bow (Volley)" hidden="false">
              <description>Range: 12-30&quot;. Move: Half. Volley. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="09ad-c2a1-03da-3d2c" name="Hand Weapon" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="b85f-6f5e-ffcc-8fc5" name="Hand Weapon" hidden="false">
              <description>If a fighter attacks with two hand weapons, it makes an additional attack roll. Damage: 1.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="5.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="d64f-ac82-61d2-1330" name="Polearm" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="743c-bc7f-0274-26df" name="Polearm" hidden="false">
              <description>Allows the fighter to support. When not supporting -1 to melee but as a great weapon. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b972-6aa0-3ae8-bd93" name="Shield" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="801b-4d05-53c1-b3cf" name="Shield" hidden="false">
              <description>Confers a Cover Save (4+) against ranged attacks in the fighter’s front arc. Also allows the fighter to block.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="10.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f267-f383-36c4-673d" name="Spear" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="b149-f8c3-60a5-502e" name="Spear" hidden="false">
              <description>Allows the fighter to support. -1 to Melee when not supporting. Damage: 1.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="10.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9acb-687f-04e4-753b" name="Repeater" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="4828-7eb5-751f-3ce3" name="Repeater" hidden="false">
              <description>Range: 12&quot;. Move: Unwieldy. Blackpowder. Fires 1D3 Shots. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="30.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9348-c5a2-55d9-c00a" name="Sling" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="81cf-dec4-39ef-f8a2" name="Sling" hidden="false">
              <description>Range: 12&quot;. Move: Half. +1 Shot if stood still and in half range. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8878-b093-7a37-62cb" name="Pistol" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="21d6-5c11-6148-442c" name="Pistol" hidden="false">
              <description>Range: 6&quot;. Move: Full. Blackpowder. A fighter can fire two pistols at +1 Ranged. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="20.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2ca1-3608-310c-68d9" name="Lance" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="9dda-6b05-4cc2-70e2" name="Lance" hidden="false">
              <description>One use only. Only usable when making impact hits. Ignore the opponents armour when making strikes. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="5.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f506-b638-5d2c-e304" name="Throwing Weapons" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="370f-ba31-dbaa-6736" name="Throwing Weapons" hidden="false">
              <description>Range: 6&quot;. Move: Full. Damage: 2.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="5.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="70e1-6fd2-2ddf-2d43" name="Armour" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="d7df-5406-1dc8-eb89" name="1. Light Armour" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="69b1-3265-a884-69a3" name="Armour: Light" hidden="false" typeId="75dc-1dba-7112-e066" typeName="Defence">
              <characteristics>
                <characteristic name="Defence" typeId="a901-cc83-55b6-2f17">2</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="4c04-dec9-d56a-cb43" name="Armour: Light" hidden="false">
              <description>Ignore Difficult Terrain</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="5.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="fef1-808f-b464-9af4" name="2. Moderate Armour" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="7260-e9e9-ca8b-816f" name="Armour: Moderate" hidden="false" typeId="75dc-1dba-7112-e066" typeName="Defence">
              <characteristics>
                <characteristic name="Defence" typeId="a901-cc83-55b6-2f17">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="25.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9dba-6b93-87fc-7b42" name="3. Heavy Armour" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="7417-17b9-251f-f493" name="Armour: Heavy" hidden="false" typeId="75dc-1dba-7112-e066" typeName="Defence">
              <characteristics>
                <characteristic name="Defence" typeId="a901-cc83-55b6-2f17">4</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="286b-3a99-69bc-f719" name="Armour: Heavy" hidden="false">
              <description>-1 Agility</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="45.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="2006-6a59-6e15-fc0c" name="Upgrades" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="1b6f-244b-3067-70e8" name="Standard Bearer" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="2f55-be13-847f-ed90" name="Standard Bearer" hidden="false">
              <description>Re-roll one failed friendly hit roll in each combat within 3”.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="4c58-cd5e-895c-aff2" name="Drummer" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="9dd2-a6a4-124d-2cf8" name="Drum" hidden="false">
              <description>This fighter may call a 6” Heroic March for free each turn.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="74ee-2e5a-20c9-5163" name="Horn Blower" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="38f2-2bac-2b0c-24ba" name="Horn" hidden="false">
              <description>Troop within 12” of a horn gain +1 Morale.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1b63-2748-392c-8d8a" name="Medical Equipment" hidden="false" collective="false" import="true" type="upgrade">
          <rules>
            <rule id="5fce-ccdc-89f0-6431" name="Medical Equipment" hidden="false">
              <description>Fighter may only take a sidearm. At the end of each movement phase if this fighter and its target remained stationary, are in base contact and not in combat, roll a dice. On a 4+ the target regains one wound (brawn) - may recover from 0.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="1c6c-830c-d028-698d" name="Mounts" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="51af-4541-02f1-b814" name="Horse" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="660f-4fd9-6fea-0d50" name="Horse" hidden="false" typeId="eb3b-e859-5330-0545" typeName="Mount">
              <characteristics>
                <characteristic name="Movement" typeId="67d6-3c2d-ee20-164c">12&quot;</characteristic>
                <characteristic name="Melee" typeId="150d-40be-7e8d-5622">-</characteristic>
                <characteristic name="Ranged" typeId="e61f-cae0-7ed1-bd52">-</characteristic>
                <characteristic name="Brawn" typeId="6508-833d-b556-8e2d">1</characteristic>
                <characteristic name="Agility" typeId="f7f3-f2ba-1b10-d437">+1</characteristic>
                <characteristic name="Morale" typeId="1407-8fef-6ddf-85e9">-</characteristic>
                <characteristic name="Defence" typeId="c0ef-1ad1-6072-b710">2</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="a4b0-a7f9-91ca-ee12" name="No Heavy Armour!" hidden="false">
              <description>No heavy armour on a horse.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="1.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6078-144f-ae81-0085" name="War Horse" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="97fe-32f5-9f1e-1f30" name="War Horse" hidden="false" typeId="eb3b-e859-5330-0545" typeName="Mount">
              <characteristics>
                <characteristic name="Movement" typeId="67d6-3c2d-ee20-164c">10&quot;</characteristic>
                <characteristic name="Melee" typeId="150d-40be-7e8d-5622">5</characteristic>
                <characteristic name="Ranged" typeId="e61f-cae0-7ed1-bd52">-</characteristic>
                <characteristic name="Brawn" typeId="6508-833d-b556-8e2d">2</characteristic>
                <characteristic name="Agility" typeId="f7f3-f2ba-1b10-d437">+0</characteristic>
                <characteristic name="Morale" typeId="1407-8fef-6ddf-85e9">-</characteristic>
                <characteristic name="Defence" typeId="c0ef-1ad1-6072-b710">5</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="1.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e84b-9359-af85-c46b" name="Warg" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="312e-b6fb-5296-eff6" name="Warg" hidden="false" typeId="eb3b-e859-5330-0545" typeName="Mount">
              <characteristics>
                <characteristic name="Movement" typeId="67d6-3c2d-ee20-164c">8&quot;</characteristic>
                <characteristic name="Melee" typeId="150d-40be-7e8d-5622">4</characteristic>
                <characteristic name="Ranged" typeId="e61f-cae0-7ed1-bd52">-</characteristic>
                <characteristic name="Brawn" typeId="6508-833d-b556-8e2d">3</characteristic>
                <characteristic name="Agility" typeId="f7f3-f2ba-1b10-d437">+1</characteristic>
                <characteristic name="Morale" typeId="1407-8fef-6ddf-85e9">3</characteristic>
                <characteristic name="Defence" typeId="c0ef-1ad1-6072-b710">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="0fab-89a0-33f9-073c" name="No Heavy Armour!" hidden="false">
              <description>No heavy armour on a warg.</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="1.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="01c6-70f7-addc-5ace" name="Structures" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="65b3-50ea-1acc-ae80" name="Small Cart" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="2eb7-8b0f-3634-d615" name="Small Cart" hidden="false" typeId="a281-0cd0-c778-4983" typeName="Structure">
              <characteristics>
                <characteristic name="Fortitude" typeId="e618-7733-3de5-df94">1</characteristic>
                <characteristic name="Structure Points" typeId="2842-e9a7-8e62-73b9">2</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="b197-f357-4c84-3333" name="Small Cart" hidden="false">
              <description>Movement 8” when pulled by 1 mount
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="50.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e981-668f-eacf-fecb" name="Large Cart" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="d42a-13e3-826e-44e2" name="Large Cart" hidden="false" typeId="a281-0cd0-c778-4983" typeName="Structure">
              <characteristics>
                <characteristic name="Fortitude" typeId="e618-7733-3de5-df94">1</characteristic>
                <characteristic name="Structure Points" typeId="2842-e9a7-8e62-73b9">3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="cee2-6a50-7b6c-c0e6" name="Large Cart" hidden="false">
              <description>Movement 8” when pulled by 2 mounts, 4” when pulled by 1.
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="75.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5e9e-aeae-62ec-a36b" name="Battering Ram" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="cc15-3220-2f7e-0b17" name="Battering Ram" hidden="false" typeId="a281-0cd0-c778-4983" typeName="Structure">
              <characteristics>
                <characteristic name="Fortitude" typeId="e618-7733-3de5-df94">1</characteristic>
                <characteristic name="Structure Points" typeId="2842-e9a7-8e62-73b9">2</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="5bd3-a1d2-a643-3812" name="Battering Ram" hidden="false">
              <description>Must be carried between 2-6 fighters. The number of fighters equals its movement value. If it is in base contact with a structure at the start of the combat phase, but not in contact with any enemies, roll a dice. If the number is equal to or less than the number of unengaged friendly fighters carrying the ram it deals 1 Structure Damage.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="100.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c19f-39bf-2d72-ba24" name="Siege Tower" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="84cd-54af-6efb-ae8e" name="Siege Tower" hidden="false" typeId="a281-0cd0-c778-4983" typeName="Structure">
              <characteristics>
                <characteristic name="Fortitude" typeId="e618-7733-3de5-df94">2</characteristic>
                <characteristic name="Structure Points" typeId="2842-e9a7-8e62-73b9">4</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="c294-7b7d-fc22-bf79" name="Siege Tower" hidden="false">
              <description>Must be moved between 2-6 fighters. Each mount counts as 2 fighters. The number of fighters equals its movement value. 
</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="200.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7853-ad67-ac99-4285" name="Ladder" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="f22f-4891-8be4-c7a0" name="Ladder" hidden="false" typeId="a281-0cd0-c778-4983" typeName="Structure">
              <characteristics>
                <characteristic name="Fortitude" typeId="e618-7733-3de5-df94">1</characteristic>
                <characteristic name="Structure Points" typeId="2842-e9a7-8e62-73b9">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="49e7-f31f-6834-65ce" name="Ladder" hidden="false">
              <description>Heavy object. Must be carried between two fighters, one at each end.


</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="25.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7003-7c2a-5095-b819" name="Palisade" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="8d2a-1620-7e51-498b" name="Palisade" hidden="false" typeId="a281-0cd0-c778-4983" typeName="Structure">
              <characteristics>
                <characteristic name="Fortitude" typeId="e618-7733-3de5-df94">1</characteristic>
                <characteristic name="Structure Points" typeId="2842-e9a7-8e62-73b9">1</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <rules>
            <rule id="6ae6-d9b7-b902-92de" name="Palisade " hidden="false">
              <description>Heavy Object. 5+ Cover. Structure: SP 1, F 1. Successful cover saves hit the palisade.

</description>
            </rule>
          </rules>
          <costs>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="15.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="7ca4-b103-4d59-3fee" name="Weapon Replacement" hidden="false" collective="false" import="true">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c346-2b37-c8c2-56af" type="max"/>
      </constraints>
      <selectionEntries>
        <selectionEntry id="947c-0a25-2511-91d6" name="Staff" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3773-c808-6dd6-fe93" type="max"/>
          </constraints>
          <rules>
            <rule id="54ac-c80a-aff0-a39b" name="Staff" hidden="false">
              <description>Can re-roll a single roll per magic phase</description>
            </rule>
          </rules>
          <costs>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3fcb-26f1-e439-647f" name="Seer&apos;s Ball" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d713-3b31-48d6-7ee6" type="max"/>
          </constraints>
          <rules>
            <rule id="2747-3bf4-2575-9b30" name="Seer&apos;s Ball" hidden="false">
              <description>Generate one additional wild magic dice only useable by friendly wizards
</description>
            </rule>
          </rules>
          <costs>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="23f0-0030-3d42-afdf" name="Wand" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4820-9883-820b-5283" type="max"/>
          </constraints>
          <rules>
            <rule id="4f72-baf4-eb20-e050" name="Wand" hidden="false">
              <description>Increase range of spells by 6&quot;
</description>
            </rule>
          </rules>
          <costs>
            <cost name="Ammo" typeId="1cca-1aee-2903-5763" value="0.0"/>
            <cost name="_Gold " typeId="b853-595d-9b44-a445" value="0.0"/>
            <cost name="_Upkeep " typeId="4604-99fe-c5ac-d7cb" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedProfiles>
    <profile id="8dfc-fcdd-a990-8793" name="Champion" hidden="false" typeId="4786-b5a5-f4d7-352b" typeName="Fighter">
      <characteristics>
        <characteristic name="Movement" typeId="67ae-7984-a0ee-ffda">6&quot;	</characteristic>
        <characteristic name="Melee" typeId="ca43-a71a-c600-120d">3</characteristic>
        <characteristic name="Ranged" typeId="194c-5d90-41a2-3b80">3</characteristic>
        <characteristic name="Brawn" typeId="8158-d273-2133-d239">4</characteristic>
        <characteristic name="Agility" typeId="1428-4aa7-3d51-3c78">+0</characteristic>
        <characteristic name="Morale" typeId="3e85-a0a5-f050-4e4c">6</characteristic>
      </characteristics>
    </profile>
    <profile id="9510-a885-1332-326c" name="Hero" hidden="false" typeId="b83e-e515-1b26-56be" typeName="Hero">
      <characteristics>
        <characteristic name="Might" typeId="ff32-937b-577a-f688">2</characteristic>
        <characteristic name="Will" typeId="3fb3-ae6c-abd3-0ee3">2</characteristic>
      </characteristics>
    </profile>
    <profile id="fe52-7181-c5b2-2514" name="Citizen" hidden="false" typeId="4786-b5a5-f4d7-352b" typeName="Fighter">
      <characteristics>
        <characteristic name="Movement" typeId="67ae-7984-a0ee-ffda">6&quot;	</characteristic>
        <characteristic name="Melee" typeId="ca43-a71a-c600-120d">5</characteristic>
        <characteristic name="Ranged" typeId="194c-5d90-41a2-3b80">5</characteristic>
        <characteristic name="Brawn" typeId="8158-d273-2133-d239">2</characteristic>
        <characteristic name="Agility" typeId="1428-4aa7-3d51-3c78">+0</characteristic>
        <characteristic name="Morale" typeId="3e85-a0a5-f050-4e4c">3</characteristic>
      </characteristics>
    </profile>
    <profile id="8e83-d76f-a754-d538" name="Veteran" hidden="false" typeId="4786-b5a5-f4d7-352b" typeName="Fighter">
      <characteristics>
        <characteristic name="Movement" typeId="67ae-7984-a0ee-ffda">6&quot;	</characteristic>
        <characteristic name="Melee" typeId="ca43-a71a-c600-120d">3</characteristic>
        <characteristic name="Ranged" typeId="194c-5d90-41a2-3b80">3</characteristic>
        <characteristic name="Brawn" typeId="8158-d273-2133-d239">3</characteristic>
        <characteristic name="Agility" typeId="1428-4aa7-3d51-3c78">+0</characteristic>
        <characteristic name="Morale" typeId="3e85-a0a5-f050-4e4c">5</characteristic>
      </characteristics>
    </profile>
    <profile id="77e4-ceac-27e2-99af" name="Warrior" hidden="false" typeId="4786-b5a5-f4d7-352b" typeName="Fighter">
      <characteristics>
        <characteristic name="Movement" typeId="67ae-7984-a0ee-ffda">6&quot;	</characteristic>
        <characteristic name="Melee" typeId="ca43-a71a-c600-120d">4</characteristic>
        <characteristic name="Ranged" typeId="194c-5d90-41a2-3b80">4</characteristic>
        <characteristic name="Brawn" typeId="8158-d273-2133-d239">3</characteristic>
        <characteristic name="Agility" typeId="1428-4aa7-3d51-3c78">+0</characteristic>
        <characteristic name="Morale" typeId="3e85-a0a5-f050-4e4c">4</characteristic>
      </characteristics>
    </profile>
    <profile id="2609-8d5e-656e-d4b7" name="Lord" hidden="false" typeId="b83e-e515-1b26-56be" typeName="Hero">
      <characteristics>
        <characteristic name="Might" typeId="ff32-937b-577a-f688">3</characteristic>
        <characteristic name="Will" typeId="3fb3-ae6c-abd3-0ee3">3</characteristic>
      </characteristics>
    </profile>
    <profile id="df42-7c02-a19d-0267" name="Character" hidden="false" typeId="b83e-e515-1b26-56be" typeName="Hero">
      <characteristics>
        <characteristic name="Might" typeId="ff32-937b-577a-f688">1</characteristic>
        <characteristic name="Will" typeId="3fb3-ae6c-abd3-0ee3">1</characteristic>
      </characteristics>
    </profile>
    <profile id="6068-0446-b0f9-2f53" name="Troop" hidden="false" typeId="b83e-e515-1b26-56be" typeName="Hero">
      <characteristics>
        <characteristic name="Might" typeId="ff32-937b-577a-f688">0</characteristic>
        <characteristic name="Will" typeId="3fb3-ae6c-abd3-0ee3">0</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
</gameSystem>