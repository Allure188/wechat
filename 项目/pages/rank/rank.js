// pages/rank/rank.js
Page({
  data: {
    data:[]
  },
  onLoad: function () {
    wx.request({
      url: 'http://www.wxapi.com/project',
      success: (res) => {
        this.setData({
          data: res.data.data
        })
      }
    })
  }
})