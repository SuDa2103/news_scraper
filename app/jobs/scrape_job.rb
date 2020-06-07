class ScrapeJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    scraper = Scraper.new
    $links = scraper.scrape('https://www.accel.com/', '.top-of-mind-preview a')
    $links1 = scraper.scrape('https://www.ggvc.com/engage/', '.ct-link')
    $links2 = scraper.scrape('https://a16z.com/', '.post-popular h3 a')
    $links3 = scraper.scrape('https://greylock.com/category/greymatter/', '.post-article__info-title a')
    $links4 = scraper.scrape('https://www.bvp.com/atlas', '.post-title')
    $links5 = scraper.scrape('https://www.indexventures.com/perspectives/category/insights/', '.index-grid__list-item a')
    $links6 = scraper.scrape('https://www.sequoiacap.com/build/', '.build a')
  end
end
