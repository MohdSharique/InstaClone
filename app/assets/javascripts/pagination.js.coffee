jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('.pagination .next_page a').attr('href')
        if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 20
            $('.pagination').html('<img src="https://media.giphy.com/media/y1ZBcOGOOtlpC/giphy.gif" alt="Loading..." title="Loading..." />')
            $.getScript more_posts_url
        return
      return