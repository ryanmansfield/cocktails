import AOS from 'aos';
import 'aos/dist/aos.css';

const initAOS = () => {
  $ (function () {
    AOS.init ();
  });
};

export { initAOS };
