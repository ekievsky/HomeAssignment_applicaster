//
//  AssetsMediaMocks.swift
//  HomeAssignment-applicasterTests
//
//  Created by Evgenii Kievsky on 25.05.2020.
//  Copyright © 2020 Evgenii Kievsky. All rights reserved.
//

import Foundation

@testable import HomeAssignment_applicaster

extension Video {
    
    static var mock: String {
        return """
        {
          "type": {
            "value": "video"
          },
          "id": "6953449",
          "title": "title",
          "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
          "updated": "2019/03/21 21:30:02 +0000",
          "link": {
            "rel": "self",
            "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
          },
          "author": {
            "name": "applicaster"
          },
          "content": {
            "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
            "type": "video/hls"
          },
          "ui_tag": null,
          "screen_type": null,
          "media_group": [
            {
              "type": "image",
              "media_item": [
                {
                  "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                  "key": "image_base",
                  "type": "image"
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
               "value": "video"
             },
             "id": "1",
             "title": "title",
             "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
             "updated": "2019/03/21 21:30:02 +0000",
             "link": {
               "rel": "self",
               "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
             },
             "author": {
               "name": "applicaster"
             },
             "content": {
               "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
               "type": "video/hls"
             },
             "ui_tag": null,
             "screen_type": null,
             "media_group": [
               {
                 "type": "image",
                 "media_item": [
                   {
                     "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                     "key": "image_base",
                     "type": "image"
                   }
                 ]
               }
             ]
           },
            {
              "type": {
                "value": "video"
              },
              "id": "2",
              "title": "super title",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "3",
              "title": "mega title",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "4",
              "title": "awesome title",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "5",
              "title": "cool title",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "6",
              "title": "much better title",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "7",
              "title": "not good one",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "8",
              "title": "without title",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "9",
              "title": "good one",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            },
            {
              "type": {
                "value": "video"
              },
              "id": "10",
              "title": "perfect one",
              "summary": "הבדרן מוטי גלעדי עם חיקויים לפורים, דיון סוער באולפן על השד העדתי שמפלגת העבודה העירה, סיכום שבועי של הקמפיינים הפוליטיים וגם: שימי תבורי ורעייתו יהודית עם שיר חדש ...",
              "updated": "2019/03/21 21:30:02 +0000",
              "link": {
                "rel": "self",
                "href": "applicaster://fetchData?type=vod_item&itemId=6953449"
              },
              "author": {
                "name": "applicaster"
              },
              "content": {
                "src": "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
                "type": "video/hls"
              },
              "ui_tag": null,
              "screen_type": null,
              "media_group": [
                {
                  "type": "image",
                  "media_item": [
                    {
                      "src": "https://images.applicaster.com/accounts/303/broadcasters/333/vod_items/6953449/image_assets/22083261/original.jpeg?1553203803",
                      "key": "image_base",
                      "type": "image"
                    }
                  ]
                }
              ]
            }
        ]
        """
    }
}

