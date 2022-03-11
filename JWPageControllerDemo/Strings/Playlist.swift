//
//  Playlist.swift
//  JWPageControllerDemo
//
//  Created by Amitai Blickstein on 3/10/22.
//

import Foundation

enum Playlist {
    enum HardCoded {
        static let jwp_adUrlString     = "https://playertest.longtailvideo.com/pre-60s.xml"
        static let jwp_videoUrlString  = "https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8"
        static let imdb_adUrlString    = "https://patrickdanino.github.io/Test/4.2/VMAP-Inline_Skippable.xml"
        
        static let imdb_videos_10March2022 = [
            "https://imdb-video.media-imdb.com/vi2954085145/hls-1642781123476-master.m3u8?Expires=1647026095&Signature=jLZAk2TM6betgAG6xGynqR7uanXCF0~RzL6lVGF-IKj7dSso6hnqxQ23ufaKCqgK0AwjKyFDCEwysBq6pKX2UIJ8qToJIBo2VaLSrrrPIDHHdnF4QHkQXA2kGEbhuuwDAkNqKeNV7~sI7ZLFePV3I1GCS7~olasPeavkonkeFRqjc0y55qzE9WtTb5wq1qjrc6BjQiS5ZAIHSh-XjlI38MKtO1-cSBVYb-YnLdSXzNuDES9hXmludk-CbsRcmg-uf4pY3yv8DCigdyn-W6IO52Uo0cjMeAoDz4pBjvbZthKxv1MIeJQB9tfv94qSNKPKgDHLZ64X4zuc48q-1eZuPg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi1512358681/hls-1642012595924-master.m3u8?Expires=1647026095&Signature=N3ZB~Dl3uqkJ1phhSLFiZsSDk4ttF6YI~SZOl1MTHVYiY35ecpHYucSu5fudiB6u~L7KxP4~O2vsL5Cd9qqkgfDf1KY2OaERnAPCunZBiewUpIqQS9pQ3mNhhffESSYF4kKdwdQa63TRt2se1mq~E~8SqeN7rG2rAAm~8BaYEt7DQXRxyl~YLK7rWLqYcvrgKw9sPRd5y1enpynIm3DYQuGl~yoiYNFVbxZfZEB7CVT5a3Q2ldJaDZiTLpQVSc0BYJvDVvwjEG5ZWsmtBMSszSc3A4xq3NwEnpyrAR0DsNoVaXnCsBk~cXsfUhWy2GTp2u-pyzo1WSd-63EcljQIEQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi2529739545/hls-1639498191183-master.m3u8?Expires=1647026095&Signature=GG-wpOvt4ILtTsF15um3YKtykw7q7Qs2eJRAngfCvNd1wEDnJHeZGgLaY7mtCEvohAWkZafcMMHmyDGAXNlr9iBxst0LaZlrihBE71NZEJXIgV-teFQLzwF0WeQvHbWQGk4Dvz2qiUK1FVkIDz5kPyxIvCdfl0cjutT6H~SQc1Fu2gKZxuIs50IvcJhmoR-PtPJ0SVwZF~AuPOfa5AE8ZDiIBEPpe9-ppDu0xd-0g2U5VJBWsjBFE5p2D0PyvgEV18hRxJluvsAhBeURnL0KQH6Ztww3uexXTMmgyMF1TJlu8~3DvkraMukAxjfw2e7jm5HOBeIE8yTUKr~UIXFZ2Q__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi1401073433/hls-1564491220234-master.m3u8?Expires=1647026095&Signature=VZrFHaYyKRW8yWLnOIvLfCvjaBHnsopb~hM-bkV3CccVV2CzxfiSP17sPM4NGMeZdtkHaAFOUN1xc9OKLzdKiWlQ9ZJTxGeTAxrw19e8uNXVa55x3M1VHPU-J3iEH7OqGvUE36HiSFGeFzKT0CxzU0KjCfHgA99yWB3yuGfYqsnCda1eruVrjjz8m9yZ3A5Pe4Wveyv50Gli-UzyYfDenLJGg5BdKy0hG1~5J3uPM4pFyr4Oa2aAaaIVfW7Phz~xEpqjcMicz-HSlS6Quryz9bn5HRao0qk2rfSjVYIH-SEqYd-fvo3gM5s3GKkbEQKwVbboiLY7AXpdd4qhGVDdFA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi3829121817/hls-1641485055460-master.m3u8?Expires=1647026095&Signature=SLHeHRYrsG16C6lkcnJbsMrOuDo7PMVtbqwPE4fDNqdMmb2WX5DrVjQI9c3VrHuzKfioslvxAXug2LE1fX1jNAPzLrwYFGpfFkkquZ~1D880JwVv8tv-YHe4Y5rRqy4-GOqyMXF2X7OnlrXrW49~rvFZLY6Ul2SFMoJgO228A7WyCd3OT9GHKK3~V11aYlLeyENGmPC9Et29TgKUm5XdijpXoYHSYCOJtX5~KX9rmob9n-EPyrcBxdLNxCfadpXP1cjjGLvVzKTZMt3SKgsUgIg0eDkf~71CKd9FgY1fPIB9zuKlBT5-SAi41W~jOi02X9lB~-NQ37LedgQ8mVUaVQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi3711222553/hls-1640798599375-master.m3u8?Expires=1647026095&Signature=r3XahGmkIKT3AJshqzkhIAx8GN9V99Ses9Yu6dsm9UB2FVRw3krRNd37aIHGG8jq5fDMWZ5i-5OVY~RAG9qjkGBdVoFufpJNCYqVFcK4nx7AUuzSMHDiY~uHC~B-GACb3XvSiOlJaJT-2gEHh4BmTmWhRvSAz-NiyQppas0kUdnr3B3op2WHOfBD1f0TXQXfkWeG4RIHOtTeop8bH0eYKIxxCYoGaYRkiIvHqdNdbvK~z8tITUEbnS2jJNm9h1E-X4LX1-~BIzXwmDaPdIPPHC8lxR21X~Cyg7KSb8PeFVBDyjC1CbzCeMao~qNZ9q0zJuDcA4xpQZz5BVdktohYFw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi2669855513/hls-1641925219845-master.m3u8?Expires=1647026095&Signature=Nj4CsQvuDgtgk14qhc5qIYGmdGO~thr~UIvshBUjgj8qocsZ3GlLVcThcvkRpQALGTeUt6zABtR9RoFHhaB8wl95i0S2IwNsCIOVPrxaiq-5gqhDlgJrcG1A58USq9jCSw1BoNyq-1kmN3HWC4GZX6QT6Di8XGiGLxVmU5qxr2-fi8CZl4Rvc2iD7KYBsXl3WmaIlcMwC80JpTrX6kfrcBldcRnO~HztkTu7vnRwU18dRMM1IiipnKO7RqfWqfDDll0EVcwGnnFCxSJKDVy6-d5x~0WomBQgbODORzBThLKJayyCwf3kEXxnTV99AI8XCm3uTh-uAHCfOuuZ4wnvSw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi1640940313/hls-1640103079040-master.m3u8?Expires=1647026095&Signature=ISuxRufOgeV8lviRzrif8M1fNlmoQOyGwJ4Wi7HPWS3wpeYvbMG4kjNLOxG8z3C1aw9akEIeVs5khE5qo8y2b0lidX252d6BUx-8985kqTld78vlaEb-r-t~0m6bDAigythdb-9q2SfWNLV5jJg1B4Gyk3~0fw6cMMa3QDgCgku4OZOYSqpxr7ubPcGx6POSJ6i2t-UFL62G4dxtDe6UtBjDtfdunr5lxyvyvfPiZynk7s3j9zfHGjfaxJIryDSGKDaMHwtLIyqTiq0XGbfUkOhVTR4ISW6uXXg1pu7FqU6h5tQn8nqDNxGyFgU2QOmyImnOrOrYU-MnguJvC4gO6Q__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi4093755417/hls-1625753654496-master.m3u8?Expires=1647026095&Signature=oJCewQHYUtjjR4ylT5WjxgYpLQvPkSO9eK6GgNMOV5vdQwM1Z647dsZXHyYAGMCFa5qtz02PrYwwVl8fXznTW8n5phR14NiWsDBoWaqdYi7iLjCxBqN4fTnJJSJISSAoBI-m6R8~~KM--d6eMTghNtpgfUE24-25OVjG4O4WThCfUvlBZ4EQupfn0EATK8DVPL2SiyYdTpWaKp733WZavLRYNuZ6uyBOYLiJAoaip-RnieWU0EodotUo-FnKQHSxlE4aeP8g3sM8IwUHiPLqgV5yn7ukv9bfdlbdaNH75qjwwdSbx7jqxdwETQai~3OqGVs4vSvstc-Q4PRYe5qh-A__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi691258137/hls-1640648850491-master.m3u8?Expires=1647026095&Signature=WQoQxD6RtSF5DBJdLLIiTP-S-l5tniOMSESfi~AryC6a1xFM7laiE51g6fQfm0ZodwzJoGG2ipkGehfASrFaKCdsaVUT4fmK7z-tyriXCc0gHd9zeKlGGIdk5bfWuC-IhwVGqwA8Dxv6PJBjDhjBSDPUyeWMIMMiE4fgFrFBN510YoR1tMCknfoHH5TfB9a2I1xtMbrODdhHVvOeqqjHT651FH37TxUSoZzU36qTnPna1g6AOnFeTreBDRiCjjPSizeRDo9t~vPkK5e9w46JP9GoqzPHLtzTAzqnVTdjP4QdfUksR3PgqyTh5Qvc5yhi8YTGMq3tHXvd6ZN7RXVJbg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi3793797913/hls-1641823858124-master.m3u8?Expires=1647026095&Signature=dzs1SsQLaNFjuYUUVkmWwUnyHXwFQwE9N-kBaOVd811H8fQPt9F9C7HOFM7xwfF6oQm4hJl3nEvDKt4abohbBBFGt7WADrXY8tFQ7eaV9Rxixm66Z7A1PsB5q3IC2YbbMW8hcdAynSTtj7ucSmriJz8gyeJqz6BHFMF7eKGZd3TNhh0MqPLjEgPLGtR5oAM-vdmepprp-y8jqmZBTb2cPG0UFgsAbLQiU40~pEwwg4IkUhMM~CDGWSzj3dbsgxYwo7WoC59SIMOR3RqzN9TWHPIQFRFcWOd4nvPV4KRewx36Lv3H4QH~yQbslMH7poYpqf0UJx36iMUoo3kS2cDBtQ__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi1390854937/hls-1637114137506-master.m3u8?Expires=1647026095&Signature=QDlxwkcRsPzK4rUJusm981bjGTUF6RzZMO5qlyM8lD0VK1I472VRPhr1yNoXCU8CTTky~nxcSXfM6Fv5KqwwOTgquMqBucI7fMwBgm2yIyaBZraPejFTWgGh9zfvnEy0N5Ot6qhM9pi-tCsC-ss8iTXKwHBphoAF8fOoMfm4Dst~dg4b-d~vHNa7IJpA2VEdUh4oMZwk0po5ZuIfWwzSHHw9V4NqXLViStqh7lUWUUPaEKphfCUVRpceAEo1G-qFGwtJ-OO-gs2UKQ-f678w~-BAj65L-6wx5Sot2iOmBO3zJ2Ylo5GU1Rt25YcC-FNxE7muGo0qZdg9N2O6Jlbfyw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi1490862873/hls-1638559808438-master.m3u8?Expires=1647026095&Signature=gnsajpMLqZOt-mOwSV93PPNDVskMWaUFgMSiyENA7NY9JMx~j4qgFUuwYz0rNIMz1LwB0McP2EiL-NT2ImNA9V5-IfOHMmE6grAi0UopXurtQ3ycolKwMGi9buc8hCI2U5-tJZgXY8rHh8mO5JG4Q0v1cZahHZjjMeRaUvlC4drG7afR~EPpQwTDG2xRo61ME7jEYBWPnwa469cpsco0HqciRxBvXmYXF7qUcsYH77QyudoF56cUIhUWV6lf0XGGiQKvhceYzhjvLjqFBKvrL2ZnqX34PpczdSBo2Q3IJG26Re~3V~IPAZhGsG8yLgXVwr5To7VqDlvDThP-Q7rqTw__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA", "https://imdb-video.media-imdb.com/vi484164377/hls-1638473945296-master.m3u8?Expires=1647026095&Signature=rTL4sbjHEtpDpoIpz6945VSP2z334LrKdn41G7vSwOSmGwwuAYXm5H6uGOt9G4UxDZyiUu~Opmxfvpp5ZrQMrXhIIrnogB5MZexQdK6782xi1bzV9v8EgWvHxcF5GoRnYGCLKMYO~SIcKrX1JlFveOxlfcTruRMG6BFxgZVp72xVh1b2cFf1ICIIPLZt0KgguWGTnOjW9U83xqhQJ0Er6wRt9iDZ5PwcCxFB9zqJY0e4CBZioFfezp2ahnLWaXLYOrdN84b3ZbxWihqvDPt97PZw-89oPKhlKFxXjWrrF2erTY1vHfG8BUlnzwXZXkfiGuLISIxGdJZs5WGuAe582A__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
        ]
    }
}
