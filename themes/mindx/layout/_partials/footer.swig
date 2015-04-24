<div class="footer-tips">莫问前程凶吉，但求落幕无悔。</div>
<div class="copyright">
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  {{ current }}
  <span class="with-love">
    <i class="fa fa-heartbeat faa-burst animated faa-fast" style="font-size: 1em;"></i>
  </span>
  <span class="author">{{ config.author }}</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
  <i class="fa fa-gear faa-spin animated faa-slow" style="font-size: 1em;"></i>
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>

{% block footer %}{% endblock %}
