namespace :scraping do
  desc 'Fetches new data from websites'
  task scrape_websites: :environment do
    # Call your scrapping classes/jobs/whatever code here
    scraper = Scraper.new
    vclinks = scraper.scrape('https://www.accel.com/', '.top-of-mind-preview a')
    vclinks1 = scraper.scrape('https://www.ggvc.com/engage/', '.ct-link')
    vclinks2 = scraper.scrape('https://a16z.com/', '.post-popular h3 a')
    vclinks3 = scraper.scrape('https://greylock.com/category/greymatter/', '.post-article__info-title a')
    vclinks4 = scraper.scrape('https://www.bvp.com/atlas', '.post-title')
    vclinks5 = scraper.scrape('https://www.indexventures.com/perspectives/category/insights/', '.index-grid__list-item a')
    vclinks6 = scraper.scrape('https://www.sequoiacap.com/build/', '.build a')
    puts 'Scraping completed'
  end
end
