# Modern front-end with Rails 5

This dummy app build with modern front-end practice based on components (no React involved).

Demo: https://modern-frontend-rails.herokuapp.com

## Description

App has two different layouts. First default application layout and second control panel layout.
All front-end placed in frontend folder.

#### Front-end structure:
```
frontend
   ├── components
   │   ├── public
   │   │   ├── ...
   │   └── cp
   │       ├── ...
   ├── pages
   │   ├── public
   │   │   ├── ...
   │   └── cp
   │       ├── ...
   └── packs
       ├── application.js
       ├── application.css
       ├── cp.js
       └── cp.css
```

Also this app used **rails ujs** and **turbolinks** via yarn.

#### Use helpers for render pages or components in rails views
```
<%= p("main") %>
<%= c("auth-form") %>
```

#### Use generator for automatically create pages and components on front-end
```
$ rails g page NAME LAYOUT
```
This command generate frontend page with this structure:
```
frontend
   └── pages
       └── LAYOUT
           ├── _NAME.html.erb
           ├── NAME.js
           └── NAME.css
```

```
$ rails g component NAME LAYOUT
```
This command generate frontend component with this structure:
```
frontend
   └── components
       └── LAYOUT
           ├── _NAME.html.erb
           ├── NAME.js
           └── NAME.css
```