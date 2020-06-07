require 'csv'
namespace :scraping do
  desc 'Fetches new data from websites'
  task scrape_websites: :environment do
    # Call your scrapping classes/jobs/whatever code here
    scraper = Scraper.new
    vclinks = scraper.scrape('https://www.accel.com/', '.top-of-mind-preview a')
    counter = 0
    CSV.open('accel.csv', 'wb') do |csv|
      vclinks.each do |element|
        counter += 1
        if counter < 11
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end

    vclinks1 = scraper.scrape('https://www.ggvc.com/engage/', '.ct-link')
    counter = 0
    CSV.open('GGVC.csv', 'wb') do |csv|
      vclinks1.each do |element|
        counter += 1
        unless element.children.text.blank?
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end

    vclinks2 = scraper.scrape('https://a16z.com/', '.post-popular h3 a')
    counter = 0
    CSV.open('Andreessen.csv', 'wb') do |csv|
      vclinks2.each do |element|
        counter += 1
        if counter < 11
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end

    vclinks3 = scraper.scrape('https://greylock.com/category/greymatter/', '.post-article__info-title a')
    counter = 0
    CSV.open('Greylock.csv', 'wb') do |csv|
      vclinks3.each do |element|
        counter += 1
        if counter < 11
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end

    vclinks4 = scraper.scrape('https://www.bvp.com/atlas', '.post-title')
    counter = 0
    CSV.open('BVP.csv', 'wb') do |csv|
      vclinks4.each do |element|
        counter += 1
        if counter < 11
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end

    vclinks5 = scraper.scrape('https://www.indexventures.com/perspectives/category/insights/', '.index-grid__list-item a')
    counter = 0
    CSV.open('Index.csv', 'wb') do |csv|
      vclinks5.each do |element|
        counter += 1
        if counter < 11
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end

    vclinks6 = scraper.scrape('https://www.sequoiacap.com/build/', '.build a')
    counter = 0
    CSV.open('Sequoia.csv', 'wb') do |csv|
      vclinks6.each do |element|
        counter += 1
        if counter < 11
          csv << [element.attribute('href').value, element.children.text]
        end
      end
    end
    puts 'Scraping completed'
  end
end
