-- {"id":1,"ver":"1.0.2","libVer":"1.0.0","author":"Jobobby04","dep":["ReadWN>=1.0.7"]}

local GENRES = {
	"All",
	"Action",
	"Adult",
	"Adventure",
	"Comedy",
	"Contemporary Romance",
	"Drama",
	"Eastern Fantasy",
	"Ecchi",
	"Fantasy",
	"Fantasy Romance",
	"Gender Bender",
	"Harem",
	"Historical",
	"Horror",
	"Josei",
	"Lolicon",
	"Magical Realism",
	"Martial Arts",
	"Mature",
	"Mecha",
	"Mystery",
	"Psychological",
	"Romance",
	"School Life",
	"Sci-fi",
	"Seinen",
	"Shoujo",
	"Shounen",
	"Shounen Ai",
	"Slice of Life",
	"Smut",
	"Sports",
	"Supernatural",
	"Tragedy",
	"Video Games",
	"Wuxia",
	"Xianxia",
	"Xuanhuan",
	"Yaoi",
	"Game"
}

return Require("ReadWN")("https://www.lightnovelmeta.com", {
	id = 1308639965,
	name = "LightNovelMeta",
	shrinkURLNovel = "^.-lightnovelmeta%.com",

	genres = GENRES,

	listingsMap = {
		{
			name = "Recently Added Chapters",
			increments = false,
			selector = "#latest-updates .novel-list.grid.col .novel-item a",
			url = function(data)
				return "https://www.lightnovelmeta.com"
			end
		},
		{
			name = "Popular Daily Updates",
			increments = true,
			url = function(data)
				return "https://www.lightnovelmeta.com/list/all/all-lastdotime-" .. (data[PAGE] - 1) .. ".html"
			end
		},
		{
			name = "Most Popular",
			increments = true,
			url = function(data)
				return "https://www.lightnovelmeta.com/list/all/all-onclick-" .. (data[PAGE] - 1) .. ".html"
			end
		},
		{
			name = "New to Web Novels",
			increments = true,
			url = function(data)
				return "https://www.lightnovelmeta.com/list/all/all-newstime-" .. (data[PAGE] - 1) .. ".html"
			end
		}
	},
})