<h1 class="gap">0x0D Configuration management</h1>


<h4 class="task">
    0. Create a file
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Using Puppet, create a file in <code>/tmp</code>.</p><p>Requirements:</p><ul>
<li>File path is <code>/tmp/holberton</code></li>
<li>File permission is <code>0744</code></li>
<li>File owner is <code>www-data</code></li>
<li>File group is <code>www-data</code></li>
<li>File contains <code>I love Puppet</code></li>
</ul><p>Example:</p>


<h4 class="task">
    1. Install a package
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Using Puppet, install <code>puppet-lint</code>.</p><p>Requirements:</p><ul>
<li>Install <code>puppet-lint</code></li>
<li>Version must be <code>2.1.1</code></li>
</ul><p>Example:</p>


<h4 class="task">
    2. Execute a command
      <span class="alert alert-warning mandatory-optional">
        mandatory
      </span>
</h4><p>Using Puppet, create a manifest that kills a process named <code>killmenow</code>.</p><p>Requirements:</p><ul>
<li>Must use the <code>exec</code> Puppet resource</li>
<li>Must use <code>pkill</code> </li>
</ul><p>Example:</p><p>Terminal #0 - starting my process</p>

