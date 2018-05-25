import "bootstrap";
import "../plugins/flatpickr";
import "../plugins/booking";
import {activeTab} from '../components/activeTab';
import "hover.css/css/hover.css";
import "animate.css/animate.css";
import "animate.css/animate.min.css";
import "aos/src/js/aos.js";
import "aos/dist/aos.css";

if (document.getElementsByClassName('nav-tabs')) {
 activeTab();
};

AOS.init();
