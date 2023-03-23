<h1 class="gap">Attack is the best defense</h1>


<h4 class="task">
    0. ARP spoofing and sniffing unencrypted traffic
      <span class="alert alert-info mandatory-optional">
        #advanced
      </span>
</h4><p><img alt="ARP spoofing and sniffing telnet traffic" src="http://i.imgur.com/UPbRObm.png"/></p><p>Security is a vast topic, and network security is an important part of it. A lot of very sensitive information is going over networks which are used by many people, and some of them might have bad intention. Traffic going on a network can be intercepted by pretending to be another network device. Once the traffic is redirected to the malicious machine, the hacker can keep a copy of it and analyze it for potential interesting information. It is important to note that the traffic must then be forwarded to the actual device it was supposed to go (so that users and system keep going as nothing was happening).</p><p>Any information that is not encrypted and sniffed by an attacker will appear in clear, that could be your email password or credit card information. While today’s network security is much stronger than it used to be, there are still some legacy systems that are using unencrypted communication means, a popular one is <code>telnet</code>.</p><p>In this project, we will not go over ARP spoofing but start by sniffing unencrypted traffic and getting information out of it.</p><p><a href="/rltoken/oDy03DMGmlBnuQ3CjFD7Zg" target="_blank" title="Sendgrid offers">Sendgrid offers</a> is an emailing service that provides state of the art secure system to send emails, but also supports legacy unsecured way: <code>telnet</code>. You can create an account for free, which is what I did, and send an email using <code>telnet</code>:</p>


<h4 class="task">
    1. Dictionary attack
      <span class="alert alert-info mandatory-optional">
        #advanced
      </span>
</h4><p>Password based authentication systems can be easily broken by using a dictionary attack (you’ll have to find your own password dictionary) let’s try it on an SSH account.</p><ul>
<li>Install Docker on your machine Ubuntu Vagrant machine</li>
<li>Pull and run the Docker image <code>sylvainkalache/264-1</code> with the command <code>docker run -p 2222:22 -d -ti sylvainkalache/264-1</code></li>
<li>Find a password dictionary (you might need multiple of them)</li>
<li>Install and use <code>hydra</code> to try to brute force the account <code>sylvain</code> via SSH on the Docker container</li>
<li>Because the Docker container is running locally, <code>hydra</code> should access the SSH account via IP <code>127.0.0.1</code> and port <code>2222</code></li>
<li>Hint: the password is 11 characters long</li>
</ul><p>Once you found the password, share it in your answer file.</p>

