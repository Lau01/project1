
$(document).ready(function () {
  TweenMax.to('.infoCard', 1, {
    left: '50vw',
    ease: Power1.easeOut,
  })

  TweenMax.to('.textCard', 1, {
    css:{
      opacity: '1'
    },
    delay: 0.5,
    ease: Power3.easeOut,
  })


  // TweenMax.to('.restaurantImg', 3, {
  //   'width':'50vw'
  // })
//
//   $('.restaurantBox').click(function () {
//     TweenMax.to(this, 2, {
//       'max-width':'100vw'
//     })
//   })
//
});
