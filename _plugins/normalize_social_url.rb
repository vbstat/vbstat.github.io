module Jekyll
  module SocialMediaUrlsFilter
    def social_media_url(input, platform)
      case platform
      when "github"
        return normalize_github_url(input)
      when "facebook"
        return normalize_facebook_url(input)
      when "twitter"
        return normalize_twitter_url(input)
      when "linkedin"
        return normalize_linkedin_url(input)
      when "instagram"
        return normalize_instagram_url(input)
      when "googlescholar"
        return normalize_googlescholar_url(input)
      when "website"
        return normalize_website_url(input)
      when "youtube"
        return normalize_youtube_url(input)
      else
        return input  # If the platform is not recognized, return the input as is
      end
    end

    def normalize_github_url(input)
      # Check if input is a complete URL or just a username
      if input.start_with?("https://github.com/")
        return input
      else
        return "https://github.com/#{input}"
      end
    end

    def normalize_facebook_url(input)
      # Check if input is a complete URL or just a username
      if input.start_with?("https://www.facebook.com/") || input.start_with?("https://facebook.com/")
        return input
      else
        return "https://www.facebook.com/#{input}"
      end
    end

    def normalize_twitter_url(input)
      # Check if input is a complete URL or just a username
      if input.start_with?("https://twitter.com/")
        return input
      else
        return "https://twitter.com/#{input}"
      end
    end

    def normalize_linkedin_url(input)
      # Check if input is a complete URL or just a username
      if input.start_with?("https://www.linkedin.com/in/") || input.start_with?("https://linkedin.com/in/")
        return input
      else
        return "https://www.linkedin.com/in/#{input}"
      end
    end

    def normalize_instagram_url(input)
      # Check if input is a complete URL or just a username
      if input.start_with?("https://www.instagram.com/") || input.start_with?("https://instagram.com/")
        return input
      else
        return "https://www.instagram.com/#{input}"
      end
    end

    def normalize_googlescholar_url(input)
      # Check if input is a complete URL or just a profile ID
      if input.start_with?("https://scholar.google.com/citations?") || input.start_with?("https://scholar.google.co.in/citations?")
        return input
      else
        return "https://scholar.google.com/citations?user=#{input}"
      end
    end

    def normalize_website_url(input)
      # Check if input starts with "https://" or "http://", or if it's missing both
      if input.start_with?("https://") || input.start_with?("http://")
        return input
      else
        return "https://#{input}"
      end
    end

    def normalize_youtube_url(input)
      # Check if input is a complete URL or just a video/channel ID
      if input.start_with?("https://www.youtube.com/") || input.start_with?("https://youtube.com/")
        return input
      else
        return "https://www.youtube.com/#{input}"
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::SocialMediaUrlsFilter)
