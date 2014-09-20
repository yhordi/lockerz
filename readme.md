# Lockerz challenge

<p>I was tasked with creating a hotel concierge program used to store bags in lockers. The focus was to use a testing suite like Rspec or Jasmine. I chose Rspec.</p>

The assignment text:
> Write a program for managing locker reservations at a hotel concierge desk. Customers leave bags with the concierge, who then
> uses your program to determine in which locker to place the bag. The program tells the concierge the number of the locker in
> which to place the bag, and prints a ticket to give to the customer. Upon return, the customer provides the ticket, and the
> concierge uses that to look up the corresponding locker, retrieve the bag, and return it to the customer.

> There are 1000 small lockers, 1000 medium-­‐sized lockers, and 1000 large lockers (it’s a big Vegas hotel). You can assume that
> all checked bags fit into one of these three sizes. The program should always assign the smallest available locker that fits the bag

I focused my efforts on building out the model and running validations on it. If I were to put more time into this app (it was recommended that I should put in 2-4 hours) I would have built out the frontend, but I felt it was more important to make sure the foundation was solid.

This app was built in ruby 2.0.0 using rails 4.1.3

### To install

git clone onto your local machine

at the command line:

<pre><code>
  $ bunde
  $ rake db:create
  $ rake db:migrate
  $ rake db:seed
</code></pre>

<p>depending on the version of rails you're using:</p>

<pre><code>
 $ rake db:test:prepare
</pre></code>

<p>then simply run rspec from the project's root directory</p>

<pre><code>
 $ rspec
</pre></code>

### What is the app doing?

<p>The app takes data entered from the user and runs it through the model validations, if for any reason the data isn't valid the data will not be saved in the database. The rspec suite has several stubs passed through to make sure of the following:</p>

<li>
  <ul>A bag belongs to a locker.</ul>
  <ul>The bag is unique</ul>
  <ul>A guest name is present</ul>
  <ul>The size for the bag is present</ul>
  <ul>The size for the bag is greater than zero and less than four(sizes one through three relate to small through large bag sizes respectively>.</ul>
  <ul>The bag cannot be bigger than the locker</ul>
</li>