[build]
  command = "npm install && npm run build" # Replace with your actual build command
  publish = "dist" # This is the directory where the built site should be published

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200

[[headers]]
  for = "/*"
    [headers.values]
    X-Frame-Options = "DENY"
    X-XSS-Protection = "1; mode=block"
    Content-Security-Policy = "frame-ancestors 'none'"

[netlify]
  auth = "ro2w5lhv55baslhketfh4awyyw2sdsknj66ncqwk6ado5wwn4dpa"
  site = "fe2786f3-5089-4909-ada8-b0e2ebf86a9d"
