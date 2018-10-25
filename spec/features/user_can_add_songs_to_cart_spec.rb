require 'rails_helper'

describe 'Cart' do
  before do
    @song_1, @song_2, @song_3, @song_4, @song_5 = create_list(:song, 5)
    visit songs_path
  end

  subject{page}

  context 'unregistrated user add songs to cart' do
    it { is_expected.to have_current_path(songs_path) }
    it { is_expected.to have_http_status("200") }
    it { is_expected.to have_http_status("200") }
    it { is_expected.to have_css("#to_the_cart-#{@song_1.id}") }
  end

  context 'add items to the cart' do
    subject{click_on "to_the_cart-#{@song_1.id}"; page}

    it { is_expected.to have_content("Added #{@song_1.title} to the cart") }
  end
end
