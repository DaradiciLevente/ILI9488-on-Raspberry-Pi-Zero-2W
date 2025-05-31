# ILI9488-on-Raspberry-Pi-Zero-2W
How to use an ILI9488 SPI display on a Raspberry Pi Zero 2W.

ATTENTION! This procedure only works correctly on 32-bit systems! Unfortunately, I have not yet found a solution to use this display on a 64-bit system!
If anyone has the solution, I would be happy if they would also provide us with the 64-bit solution.

First, we need to make the hardware connections between the ILI9488 display and the Raspberry Pi Zero 2W.

I used these hardware connections:

<img width="357" alt="pi2ILI9488displayPinout" src="https://github.com/user-attachments/assets/39603568-4b69-46e7-b80c-c274a247b4b1" />

After making the hardware connections, after the first boot, I did this.
Edit the file:
```sudo nano /boot/config.txt```

And if you find the line:

```dtparam=spi=on```

put a # in front of that line so that the line looks like this:

```#dtparam=spi=on```

I found this procedure on the page: https://bytesnbits.co.uk/retropie-raspberry-pi-0-spi-lcd/
which helped me a lot to solve this challenge.
Thanks to the author for the documentation he made available to us!
