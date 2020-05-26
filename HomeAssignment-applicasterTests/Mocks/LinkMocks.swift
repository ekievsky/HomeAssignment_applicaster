//
//  LinkMocks.swift
//  HomeAssignment-applicasterTests
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

import Foundation

@testable import HomeAssignment_applicaster

extension Link {
    
    static var mock: String {
        return """
        {
        "type": {
        "value": "link"
        },
        "title": "נתניהו בראיון: מאשימים אותי בבגידה? את כולם אני אתבע",
        "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
        "id": "343297",
        "link": {
        "rel": "alternate",
        "type": "text/html",
        "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
        },
        "media_group": [
          {
            "type": "image",
            "media_item": [
              {
                "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                "type": "image",
                "scale": "small",
                "key": "image_base"
              },
              {
                "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                "type": "image",
                "scale": "large",
                "key": "image_base_2"
              }
            ]
          }
        ]
        }
        """
    }
    
    static var mocksArray: String {
        return """
        [
            {
            "type": {
                "value": "link"
            },
            "title": "title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "1",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
                "value": "link"
            },
            "title": "super title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "2",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "mega title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "3",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "cool title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "4",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "mega one",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "5",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "awesome title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "6",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "perfect title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "7",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "not good one",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "8",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "wonderful title",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "9",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "bad one",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "10",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            },
            {
            "type": {
            "value": "link"
            },
            "title": "נתניהו בראיון: מאשימים אותי בבגידה? את כולם אני אתבע",
            "summary": "ראש הממשלה סבור כי הרמטכלים לשעבר של 'כחול לבן' יודעים שלא קיבל כסף ממכירת צוללות ומשיב אש: אותי אתם מאשימים בבגידה? את מי שנלחם נגד כל העולם כדי למנוע מאיראן את ההסכם שאתם תמכתם בו? | הראיון המלא הערב בחדשות 20",
            "id": "343297",
            "link": {
            "rel": "alternate",
            "type": "text/html",
            "href": "https://www.20il.co.il/mobile-post/?id=343297&native=true&shareable=true&showcontext=true&title=%D7%90%D7%A7%D7%98%D7%95%D7%90%D7%9C%D7%99%D7%94%20%D7%95%D7%97%D7%93%D7%A9%D7%95%D7%AA"
            },
            "media_group": [
              {
                "type": "image",
                "media_item": [
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "small",
                    "key": "image_base"
                  },
                  {
                    "src": "https://www.20il.co.il/wp-content/uploads/2019/03/%D7%A0%D7%AA%D7%A0%D7%99%D7%94%D7%95-%D7%91%D7%A8%D7%90%D7%99%D7%95%D7%9F-1270x714.jpg",
                    "type": "image",
                    "scale": "large",
                    "key": "image_base_2"
                  }
                ]
              }
            ]
            }
          ]
"""
    }
}

