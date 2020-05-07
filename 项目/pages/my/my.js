Page({
  data: {
    userInfo: {}
  },
  login: function (event) {
    this.setData({
      userInfo: event.detail.userInfo
    })
  }
})