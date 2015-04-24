{% extends '_blank.swig' %}
{% block title %} {{ config.title }} {% endblock %}

{% block page_class %}
  page-home
{% endblock %}

{% block secondHeader %}
  <h2 id="banner-title">Team</h2>
  <div id="banner-start">
    <span id="banner-start-command"><i class="fa fa-terminal faa-flash animated" style="font-size: 1em;"></i> echo everyone > team.md</span>
    <h5>Teams are not closed systems. </h5>
    <h5>It is critical that they interact effectively with their external environments.</h5>
  </div>
  <div id="banner-share">

  </div>
{% endblock %}

{% block content %}
  <div style="text-align: center;">
    <i class="fa fa-connectdevelop faa-spin animated faa-slow" style="font-size: 3em;"></i>
    <h2>『梦想』</h2>
    <div style="color: #777">
      <h4>很多时候都已被人看作是难以启齿的东西...</h4>
      <h4>可是...如果...万一...
      <span style="color: deepskyblue;">成真了呢？</span></h4>
      <h4>不努力一把谁知道？</h4>
      <h4>...</h4>
    </div>
      <strong><i>{{ site.posts.length }}</i></strong> posts in this site.
  </div>
{% endblock %}

