# Create placeholder images for social media dashboard

Add-Type -AssemblyName System.Drawing

# Function to create a placeholder image
function Create-PlaceholderImage {
    param(
        [string]$Text,
        [string]$OutputPath,
        [int]$Width = 60,
        [int]$Height = 60,
        [System.Drawing.Color]$BackgroundColor = [System.Drawing.Color]::LightGray,
        [System.Drawing.Color]$TextColor = [System.Drawing.Color]::Black
    )

    $bitmap = New-Object System.Drawing.Bitmap($Width, $Height)
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    
    # Fill background
    $graphics.Clear($BackgroundColor)
    
    # Create font
    $font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Bold)
    
    # Draw text
    $brush = New-Object System.Drawing.SolidBrush($TextColor)
    $format = New-Object System.Drawing.StringFormat
    $format.Alignment = [System.Drawing.StringAlignment]::Center
    $format.LineAlignment = [System.Drawing.StringAlignment]::Center
    
    $graphics.DrawString($Text, $font, $brush, 
        (New-Object System.Drawing.RectangleF(0, 0, $Width, $Height)), 
        $format)
    
    # Save image
    $bitmap.Save($OutputPath, [System.Drawing.Imaging.ImageFormat]::Png)
    
    # Cleanup
    $graphics.Dispose()
    $bitmap.Dispose()
}

# Create profile images
Create-PlaceholderImage -Text "FB" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\facebook-profile.png" -BackgroundColor Blue -TextColor White
Create-PlaceholderImage -Text "TW" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\twitter-profile.png" -BackgroundColor Cyan -TextColor White
Create-PlaceholderImage -Text "IG" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\instagram-profile.png" -BackgroundColor Purple -TextColor White

# Create user profile images
Create-PlaceholderImage -Text "TI" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\facebook-user1.jpg" -BackgroundColor Green -TextColor White
Create-PlaceholderImage -Text "TT" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\twitter-user1.jpg" -BackgroundColor Orange -TextColor White
Create-PlaceholderImage -Text "TE" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\instagram-user1.jpg" -BackgroundColor Red -TextColor White

# Create post images
Create-PlaceholderImage -Text "Post1" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\facebook-post1.jpg" -Width 300 -Height 200
Create-PlaceholderImage -Text "Post2" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\twitter-post1.jpg" -Width 300 -Height 200
Create-PlaceholderImage -Text "Post3" -OutputPath "c:\Users\PC\Desktop\Social Media Dashboard\images\instagram-post1.jpg" -Width 300 -Height 200

Write-Host "Placeholder images created successfully!"
