[
  {
    name: '八戸市博物館',
    holiday: '月曜日',
    opening_time: '9:00',
    closing_time: '17:00',
    address: '〒039-1166 青森県八戸市根城東構３５−１',
    phone_number: '0178-44-8111',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipNwAQ76Rv5DuhUDVVvhdqqLiRw23niyR3J-vXkR=w426-h240-k-no'
  },
  {
    name: '八甲田山雪中行軍遭難資料館',
    holiday: 'なし',
    opening_time: '9:00',
    closing_time: '16:30',
    address: '〒030-0943 青森県青森市幸畑阿部野１６３−４',
    phone_number: '017-728-7063',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipOFMjz5FB4B7seQTZggvSuzzX0J6zqyqLqBWRsp=w408-h306-k-no'
  },
  {
    name: '青森近代文学館',
    holiday: 'なし',
    opening_time: '9:00',
    closing_time: '17:00',
    address: '〒030-0111 青森県青森市荒川藤戸１１９−７ 青森県立図書館 2F',
    phone_number: '017-739-2575',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipOV8JC4bDbTLhsjJ9Q3BZisLwN7xCE5ARJn-SfQ=w408-h306-k-no'
  },
  {
    name: '青森市森林博物館',
    holiday: '月曜日',
    opening_time: '9:00',
    closing_time: '16:30',
    address: '〒038-0012 青森県青森市柳川２丁目４−３７',
    phone_number: '017-766-7800',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipMSJmlxVfBvcyrhk1C_cGsfeGd61sUQCRxzyhAB=w408-h306-k-no'
  },
  {
    name: 'あおもり北のまほろば歴史館',
    holiday: 'なし',
    opening_time: '9:00',
    closing_time: '17:00',
    address: '〒038-0002 青森県青森市沖館２丁目２−１',
    phone_number: '017-763-5519',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipPrK92V7ej12hgM5iSlsImO0OS34ljF5kBGOEYO=w408-h272-k-no'
  },
  {
    name: '青森県立郷土館',
    holiday: '現在臨時休館中',
    opening_time: '9:00',
    closing_time: '17:00',
    address: '〒030-0802 青森県青森市本町２丁目８−１４',
    phone_number: '017-777-1585',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipNuutMpy3IGohvJkXFr-DYq0Ner__qrBlMHVxSK=w408-h306-k-no'
  },
  {
    name: '青森市中世の館',
    holiday: '月曜日',
    opening_time: '9:00',
    closing_time: '17:00',
    address: '〒038-1311 青森県青森市浪岡大字浪岡岡田４３',
    phone_number: '0172-62-1020',
    image_url: 'https://lh5.googleusercontent.com/p/AF1QipOTBCH57Uoim1EqUg9UmL1j3tcLeBfSr8LgJYGj=w408-h272-k-no'
  },
].each do |data|
  museum = Museum.find_or_initialize_by(id: data[:id])
  museum.name = data[:name]
  museum.holiday = data[:holiday]
  museum.opening_time = data[:opening_time]
  museum.closing_time = data[:closing_time]
  museum.address = data[:address]
  museum.phone_number = data[:phone_number]
  museum.image_url = data[:image_url]
  museum.save!
end