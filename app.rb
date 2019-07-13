require 'sinatra'
require 'tilt/erb'
require_relative 'mock_data.rb'

enable :sessions


get '/' do
    mock = mock_data()
    title = mock[:title]
    nav_btns = mock[:navItems]
    heroText = remove_last_space(mock[:heroText])
    subHeroText = mock[:subHeroText]
    mainCardTitle = mock[:mainCardTitle]
    mainCardText = mock[:mainCardText]
    mainCardText2 = mock[:mainCardText2]
    mainCardLink = mock[:mainCardLink]
    mainLink = mock[:mainLink]
    mainCardText3 = mock[:mainCardText3]
    animals = mock[:animals]
    whtCardInfo = mock[:whtCardInfo]
    constTitle = mock[:constTitle]
    constCont = mock[:constCont]
    thingTitle = mock[:thingTitle]
    thingCont = mock[:thingCont]
    duckTitle = mock[:duckTitle]
    duckCont = mock[:duckCont]
    pictureTitle = mock[:pictureTitle]
    thingImg = mock[:thingImg]
    thingsCont = mock[:thingsCont]
    current_year = Time.new.year
    companyName = mock[:companyName]
    
    erb :index, :layout => :main_layout, locals: {title:title, nav_btns:nav_btns, heroText:heroText, subHeroText:subHeroText, mainCardTitle:mainCardTitle, mainCardLink:mainCardLink, mainCardText:mainCardText, mainCardText2:mainCardText2, mainCardText3:mainCardText3, mainLink:mainLink, animals:animals, whtCardInfo:whtCardInfo, constTitle:constTitle, constCont:constCont, thingTitle:thingTitle, thingCont:thingCont, duckTitle:duckTitle, duckCont:duckCont, pictureTitle:pictureTitle, thingImg:thingImg, thingsCont:thingsCont, current_year:current_year, companyName:companyName}
end

not_found do
    status 404
    erb :oops
end