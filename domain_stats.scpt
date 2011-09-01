on alfred_script(q)
    set competeURL to "http://siteanalytics.compete.com/" & item 1 of q
    set quantURL to "http://www.quantcast.com/" & item 1 of q
    set alexaURL to "http://www.alexa.com/siteinfo/" & item 1 of q

    tell application "Google Chrome"
        set activeIndex to get active tab index of window 1
        tell window 1
            set competeTab to make new tab with properties {URL:competeURL}
            set quantTab to make new tab with properties {URL:quantURL}
            set alexaTax to make new tab with properties {URL:alexaURL}
        end tell
        set active tab index of window 1 to activeIndex
    end tell
end alfred_script
