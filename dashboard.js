// Mock data for social media statistics
const socialStats = {
    facebook: {
        followers: 5420,
        likes: 12350
    },
    twitter: {
        followers: 7890,
        retweets: 4560
    },
    instagram: {
        followers: 9870,
        likes: 23450
    }
};

// Mock posts data
const posts = [
    {
        platform: 'Facebook',
        user: {
            name: 'Tech Innovations',
            profileImage: 'images/facebook-user1.jpg'
        },
        content: 'Exciting new features coming soon!',
        likes: 120,
        timestamp: '2 hours ago',
        image: 'images/facebook-post1.jpg'
    },
    {
        platform: 'Twitter',
        user: {
            name: 'Tech Trends',
            profileImage: 'images/twitter-user1.jpg'
        },
        content: 'Check out our latest blog post!',
        retweets: 45,
        timestamp: '4 hours ago',
        image: 'images/twitter-post1.jpg'
    },
    {
        platform: 'Instagram',
        user: {
            name: 'Tech Explorers',
            profileImage: 'images/instagram-user1.jpg'
        },
        content: 'Behind the scenes at our office!',
        likes: 350,
        timestamp: '1 day ago',
        image: 'images/instagram-post1.jpg'
    }
];

// Update social media statistics
function updateSocialStats() {
    // Facebook
    document.getElementById('facebook-followers').textContent = socialStats.facebook.followers;
    document.getElementById('facebook-likes').textContent = socialStats.facebook.likes;

    // Twitter
    document.getElementById('twitter-followers').textContent = socialStats.twitter.followers;
    document.getElementById('twitter-retweets').textContent = socialStats.twitter.retweets;

    // Instagram
    document.getElementById('instagram-followers').textContent = socialStats.instagram.followers;
    document.getElementById('instagram-likes').textContent = socialStats.instagram.likes;
}

// Render recent posts
function renderPosts() {
    const postsContainer = document.getElementById('posts-container');
    
    posts.forEach(post => {
        const postCard = document.createElement('div');
        postCard.classList.add('post-card');
        
        postCard.innerHTML = `
            <div class="post-header">
                <img src="${post.user.profileImage}" alt="${post.user.name} Profile" class="user-profile">
                <span class="user-name">${post.user.name}</span>
            </div>
            <img src="${post.image}" alt="${post.platform} Post" class="post-image">
            <p>${post.content}</p>
            <div class="post-meta">
                <span>${post.platform}</span>
                <span>${post.timestamp}</span>
            </div>
        `;
        
        postsContainer.appendChild(postCard);
    });
}

// Initialize dashboard
function initDashboard() {
    updateSocialStats();
    renderPosts();
}

// Run initialization when page loads
document.addEventListener('DOMContentLoaded', initDashboard);
