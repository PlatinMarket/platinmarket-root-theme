// Add animate css func
$.fn.animateCss = function(animationName) {
  const animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
  this.addClass('animated ' + animationName).one(animationEnd, function() {
    $(this).removeClass('animated animateStart ' + animationName);
  });
};

// Run animation
$(window).one('focus', function(){
  const isPostBack = $('form').hasClass('post_back');
  $('.card').animateCss(isPostBack ? 'shake' : 'pulse');
  $('.header').animateCss(isPostBack ? 'shake' : 'pulse');
  if (!isPostBack) {
    $('.back').animateCss('slideInDown');
    $('.copyright').animateCss('fadeInDown');
  }
});

// Check focus state
if (!document.hidden) $(window).triggerHandler('focus');

// On submit form
$('form').on('submit', (e) => {
  $('input').blur().attr('readonly', 'readonly');
  $('.btn').attr('disabled', 'disabled');
});

// Change focus state to proper element
const inputs = $('input').toArray().filter(e => $(e).attr('type') !== 'hidden');
const input = inputs.find(i => i.closest('.has-danger')) || inputs.find(i => !i.value) || inputs.slice(-1).pop();
setTimeout(() => $(input).select(), 0);



