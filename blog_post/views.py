from django.shortcuts import render
from django.http import HttpResponse

from blog_post.models import Post
# Create your views here.
def home(requests):
    #1.資料查詢->QuerySet Class
    posts = Post.objects.all()
    
    #2.處理資料
    data_contain = list()
    for count,post in enumerate(posts):
        data_contain.append("<h2>#{}: {} </h2><hr>".format(str(count+1), post.title))
        data_contain.append("<small>{}</small><br><hr>".format(post.content))
   

    # 3. 渲染並回傳
    return HttpResponse(data_contain)
