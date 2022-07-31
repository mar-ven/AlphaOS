# AlphaOS
My first operating system. Written for x86-64 architectures.
It uses GRUB as bootloader.
Support for C standard library requires some time. 
At the time I write this readme file, the following goals have been achieved:
<ol>
  <li>Global descriptor table is initialised.</li>
  <li>Support to GRUB functions.</li>
  <li>Interrupt descriptor table is initialised.</li>
  <li>PIC driver works correctly.</li>
  <li>Keyboard driver works almost correctly.</li>
  <li>VGA text-mode driver works as expected.</li>
</ol>

I succeded along the way thank to the OSDEV.org wiki and community, without which I couldn't have even achieved the most simple steps.
If you want to give it a try, I suggest you to use VirtualBox.
If you have ideas about this project and would like to shame them with me, you'll be welcome! :)
