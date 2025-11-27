Shiva's Spices - Static Website (GitHub Pages)
--------------------------------------------------------

What's included:
- index.html       -> Main website
- assets/          -> Images and styles (hero.jpg, product images, styles.css)
- README.md        -> This file
- LICENSE (optional)

How to publish on GitHub Pages (quick steps):

1) Create a new repository on GitHub (for example: Shiva-chilli-site).
2) On your local machine:
   git clone https://github.com/YOUR_USERNAME/Shiva-chilli-site.git
   cp -r /path/to/unzipped/site/* Shiva-chilli-site/
   cd Shiva-chilli-site
   git add .
   git commit -m "Add initial site"
   git push origin main

3) On GitHub, go to repository -> Settings -> Pages:
   - Select branch: main
   - Folder: / (root)
   - Save. The site will be published at https://YOUR_USERNAME.github.io/Shiva-chilli-site/

Alternative: Use GitHub Desktop to drag-and-drop files then publish.

Need help connecting a custom domain? Add a CNAME file with your domain and set DNS:
- Create CNAME file containing your domain (e.g. Shivachilli.com)
- In your domain DNS, add A records pointing to GitHub Pages IPs and/or a CNAME to yourusername.github.io
See: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

If you'd like, I can:
- Create the GitHub repo and push files (I cannot access your GitHub; you'll need to run the push step)
- Walk you through any step in real time
- Add custom content (logo, real product images) if you upload them
