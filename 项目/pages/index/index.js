Page({
  //数组
  data: {
    //轮播图
    lunbo: [],
    //小图标
    samll: [],
    //音乐
    music:[]
  },
  //跳转到详情页
  tiao: function (event) {
    //获取图片的ID
    var id = event.target.dataset.id;
    //把ID传给去，并跳转过去
    wx.navigateTo({
      url: '/pages/detail/detail?id=' + id
    })
  },
  //加载
  onLoad: function () {
    //轮播图部分
    wx.request({
      url: 'http://www.wxapi.com/lunbo',
      success: (res) => {
        this.setData({
          lunbo: res.data.data
        })
      }
    }),
    //小图标部分
    wx.request({
      url: 'http://www.wxapi.com/litte',
      success: (res) => {
        this.setData({
          samll: res.data.data
        })
      }
    }),
    //更多部分
    wx.request({
      url: 'http://www.wxapi.com/project',
      success: (res) => {
        this.setData({
         music: res.data.data
        })
      }
    })
  }
})
