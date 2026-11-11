import { LightningElement, wire } from "lwc";
import getGreeting from "@salesforce/apex/GreetingService.getGreeting";

export default class GreetingCard extends LightningElement {
  name = "";

  @wire(getGreeting, { name: "$name" })
  greeting;

  handleChange(event) {
    this.name = event.target.value;
  }
}
