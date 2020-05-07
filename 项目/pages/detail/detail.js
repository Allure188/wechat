Page({
  //数组和图片判断
  data: {
    detail:[],
    isCollection: false,
    isMusic: false
  },
  //加载函数
  onLoad: function (options) {
    //获取首页传过来的id值
    var id = options.id;
    this.data.currentid = id;
    //加载函数
    wx.request({
      url: 'http://www.wxapi.com/detail/' + id,
      success: (res) => {
        this.setData({
          detail: res.data.data
        })
      }
    })
  },
  //收藏
  Collection: function () {
    this.setData({
      isCollection: !this.data.isCollection
    })
    //引入showToast函数
    this.showToast();
  },
  //showToast函数
  showToast: function () {
    if (this.data.isCollection) {
      wx.showToast({
        title: '收藏成功',
        icon: 'success',
        duration: 2000
      })
    } else {
      wx.showToast({
        title: '取消收藏成功',
        icon: 'success',
        duration: 2000
      })
    }
  },
    //音乐
  music: function () {
    this.setData({
      isMusic: !this.data.isMusic
    })
    //相当于var current=detail.para[this.data.currentid];
    const music = wx.getBackgroundAudioManager()
    //判断
    if (!this.data.isMusic) {
      music.title = this.data.detail.music.title,
      music.singer = this.data.detail.music.singer,
      music.coverImgUrl = this.data.detail.music.coverImgUrl,
      music.src = this.data.detail.music.src
    } else {
      music.pause();
    }
  },
})