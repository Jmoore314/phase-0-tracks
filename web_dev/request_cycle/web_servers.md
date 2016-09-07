# What are some of the key design philosophies of the Linux operating system?

An operating system, by its nature, embodies the philosophy of its creators... The creators of the Unix operating system started with a radical concept: they assumed that the user of their operating system would be computer literate from the start. The entire Unix philosophy revolves around the idea that the user knows what he or she is doing.

Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things.

# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

virtual in that it is a chunk of memory set aside to act as a computer. private in that it is not open to the public but a set of users with passwords.
server, in that it acts as a server.

More stability and reliability for basic web hosting needs
More control compared to shared hosting
Green technology, environmentally friendly, and more efficient use of resources
Easy scalability when needed
Cost effective solutions for small websites

# Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

You're logged as root = all applications are running with root privilegies -- every vulnerability in Firefox, Flash, OpenOffice etc. now can destroy your system, because possible viruses now have access everywhere. Yes, there are only few viruses for Ubuntu/Linux, but it's also because of good security and default unprivileged user.

It's not only about viruses -- small bug in an application could erase some system files or...

When your're logged as root, you can do everything -- the system won't ask! Do you want to format this disk? Ok, just one click and it's done, because you're root and you know what you're doing...
