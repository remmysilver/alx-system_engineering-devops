<h1 class="gap">0x09. Web infrastructure design</h1>


<h4 class="task">
    0. Simple web stack
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>A lot of websites are powered by simple web infrastructure, a lot of time it is composed of a single server with a <a href="/rltoken/lBFrw_pTU3_sMuYFptFFsw" target="_blank" title="LAMP stack">LAMP stack</a>.</p><p>On a whiteboard, design a one server web infrastructure that hosts the website that is reachable via <code>www.foobar.com</code>. Start your explanation by having a user wanting to access your website.</p><p>Requirements:</p><ul>
<li> You must use:

<ul>
<li>1 server</li>
<li>1 web server (Nginx)</li>
<li>1 application server</li>
<li>1 application files (your code base)</li>
<li>1 database (MySQL)</li>
<li>1 domain name <code>foobar.com</code> configured with a <code>www</code> record that points to your server IP <code>8.8.8.8</code></li>
</ul></li>
<li>You must be able to explain some specifics about this infrastructure:

<ul>
<li>What is a server</li>
<li>What is the role of the domain name</li>
<li>What type of DNS record <code>www</code> is in <code>www.foobar.com</code></li>
<li>What is the role of the web server</li>
<li>What is the role of the application server</li>
<li>What is the role of the database</li>
<li>What is the server using to communicate with the computer of the user requesting the website</li>
</ul></li>
<li>You must be able to explain what are the issues with this infrastructure:

<ul>
<li>SPOF</li>
<li>Downtime when maintenance needed (like deploying new code web server needs to be restarted)</li>
<li>Cannot scale if too much incoming traffic</li>
</ul></li>
</ul><div class="blog_post_div">
<h4> Add URLs here:</h4>
<div class="form-group row">
<div class="col-sm-11">
<input class="form-control" id="input_1754" type="text" value=""/>
</div>
<div class="col-sm-1">
<button class="add_task_url" data-task-id="1754" data-task-requesting="0" data-user-id="144" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
</button>
</div>
</div>
<ul class="list_1754">
<li>
<button class="remove_blog_post" data-task-id="1754" data-task-requesting="0" data-task-url-id="726" id="1754" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-minus"></span>
</button>
<a href="https://imgur.com/a/knmud" target="_blank">https://imgur.com/a/knmud</a>
</li>
</ul>
</div>


<h4 class="task">
    1. Distributed web infrastructure
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>On a whiteboard, design a three servers web infrastructure that host the website <code>www.foobar.com</code>.</p><p>Requirements:</p><ul>
<li> You must add:

<ul>
<li>2 servers</li>
<li>1 web server (Nginx)</li>
<li>1 application server</li>
<li>1 load-balancer (HAproxy)</li>
<li>1 application files (your code base)</li>
<li>1 database (MySQL)</li>
</ul></li>
<li>You must be able to explain some specifics about this infrastructure:

<ul>
<li>For every additional element, why you are adding it</li>
<li>What distribution algorithm your load balancer is configured with and how it works</li>
<li>Is your load-balancer enabling an Active-Active or Active-Passive setup, explain the difference between both</li>
<li>How a database Primary-Replica (Master-Slave) cluster works</li>
<li>What is the difference between the Primary node and the Replica node in regard to the application</li>
</ul></li>
<li>You must be able to explain what are the issues with this infrastructure:

<ul>
<li>Where are SPOF</li>
<li>Security issue (no firewall, no HTTPS)</li>
<li>No monitoring</li>
</ul></li>
</ul><div class="blog_post_div">
<h4> Add URLs here:</h4>
<div class="form-group row">
<div class="col-sm-11">
<input class="form-control" id="input_1755" type="text" value=""/>
</div>
<div class="col-sm-1">
<button class="add_task_url" data-task-id="1755" data-task-requesting="0" data-user-id="144" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
</button>
</div>
</div>
<ul class="list_1755">
<li>
<button class="remove_blog_post" data-task-id="1755" data-task-requesting="0" data-task-url-id="727" id="1755" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-minus"></span>
</button>
<a href="https://imgur.com/a/knmud" target="_blank">https://imgur.com/a/knmud</a>
</li>
</ul>
</div>


<h4 class="task">
    2. Secured and monitored web infrastructure
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>On a whiteboard, design a three servers web infrastructure that host the website <code>www.foobar.com</code>, it must be secured, serve encrypted traffic and be monitored.</p><p>Requirements:</p><ul>
<li> You must add:

<ul>
<li>3 firewalls </li>
<li>1 SSL certificate to serve <code>www.foobar.com</code> over HTTPS</li>
<li>3 monitoring clients (data collector for Sumologic or other monitoring services)</li>
</ul></li>
<li>You must be able to explain some specifics about this infrastructure:

<ul>
<li>For every additional element, why you are adding it</li>
<li>What are firewalls for</li>
<li>Why is the traffic served over HTTPS</li>
<li>What monitoring is used for</li>
<li>How is the monitoring tool collecting data</li>
<li>Explain what to do if you want to monitor your web server QPS</li>
</ul></li>
<li>You must be able to explain what are the issues with this infrastructure:

<ul>
<li>Why terminating SSL at the load balancer level is an issue</li>
<li>Why having only one MySQL server capable of accepting writes is an issue</li>
<li>Why having servers with all the same components (database, web server and application server) might be a problem</li>
</ul></li>
</ul><div class="blog_post_div">
<h4> Add URLs here:</h4>
<div class="form-group row">
<div class="col-sm-11">
<input class="form-control" id="input_1756" type="text" value=""/>
</div>
<div class="col-sm-1">
<button class="add_task_url" data-task-id="1756" data-task-requesting="0" data-user-id="144" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
</button>
</div>
</div>
<ul class="list_1756">
<li>
<button class="remove_blog_post" data-task-id="1756" data-task-requesting="0" data-task-url-id="728" id="1756" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-minus"></span>
</button>
<a href="https://imgur.com/a/knmud" target="_blank">https://imgur.com/a/knmud</a>
</li>
</ul>
</div>


<h4 class="task">
    3. Scale up
      <span class="alert alert-info mandatory-optional">
        #advanced
      </span>
</h4><p>Readme</p><ul>
<li><a href="/rltoken/XuhRS6VTEMuBHiZU5vo-sQ" target="_blank" title="Application server vs web server">Application server vs web server</a></li>
</ul><p>Requirements:</p><ul>
<li> You must add:

<ul>
<li>1 server</li>
<li>1 load-balancer (HAproxy) configured as cluster with the other one</li>
<li>Split components (web server, application server, database) with their own server</li>
</ul></li>
<li>You must be able to explain some specifics about this infrastructure:

<ul>
<li>For every additional element, why you are adding it</li>
</ul></li>
</ul><div class="blog_post_div">
<h4> Add URLs here:</h4>
<div class="form-group row">
<div class="col-sm-11">
<input class="form-control" id="input_1793" type="text" value=""/>
</div>
<div class="col-sm-1">
<button class="add_task_url" data-task-id="1793" data-task-requesting="0" data-user-id="144" type="button">
<span aria-hidden="true" class="glyphicon glyphicon-plus"></span>
</button>
</div>
</div>
<ul class="list_1793">
</ul>
</div>

