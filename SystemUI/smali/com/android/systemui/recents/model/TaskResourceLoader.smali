.class Lcom/android/systemui/recents/model/TaskResourceLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

.field mWaitingOnLoadQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "TaskResourceLoader"

    sput-object v0, Lcom/android/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .param p1, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;
    .param p2, "applicationIconCache"    # Lcom/android/systemui/recents/model/DrawableLruCache;
    .param p3, "thumbnailCache"    # Lcom/android/systemui/recents/model/BitmapLruCache;
    .param p4, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "defaultApplicationIcon"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 107
    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    .line 109
    iput-object p4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 110
    iput-object p5, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Recents-TaskResourceLoader"

    .line 113
    const/16 v2, 0xa

    .line 112
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method


# virtual methods
.method getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "iconFilename"    # Ljava/lang/String;
    .param p4, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p5, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 240
    if-eqz p2, :cond_0

    .line 241
    move-object v0, p2

    .line 243
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 244
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p4, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 242
    .end local v0    # "tdIcon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p3}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "tdIcon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 246
    :cond_1
    return-object v1
.end method

.method public run()V
    .locals 14

    .prologue
    .line 145
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v9

    .line 154
    .local v9, "ie":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    .end local v9    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 158
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    .line 159
    .local v8, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 162
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz v4, :cond_a

    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v13

    .line 165
    .local v13, "t":Lcom/android/systemui/recents/model/Task;
    if-eqz v13, :cond_a

    .line 166
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 167
    .local v6, "cachedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 170
    .local v7, "cachedThumbnail":Landroid/graphics/Bitmap;
    if-nez v6, :cond_5

    .line 171
    iget-object v1, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v13, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    iget-object v3, v13, Lcom/android/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p0

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 174
    if-nez v6, :cond_3

    .line 176
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 175
    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 177
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v10, :cond_3

    .line 178
    sget-boolean v0, Lcom/android/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v10, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 183
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    if-nez v6, :cond_4

    .line 184
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 192
    :cond_5
    if-nez v7, :cond_9

    .line 193
    iget v0, v8, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    .line 194
    sget-boolean v0, Lcom/android/systemui/recents/model/TaskResourceLoader;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/recents/model/TaskResourceLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_6
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 197
    :cond_7
    if-nez v7, :cond_8

    .line 198
    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 203
    :cond_8
    iget v0, v8, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 207
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_a

    .line 209
    move-object v11, v6

    .line 210
    .local v11, "newIcon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v7, v0, :cond_b

    .line 211
    const/4 v12, 0x0

    .line 212
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/model/TaskResourceLoader$1;

    invoke-direct {v1, p0, v13, v12, v11}, Lcom/android/systemui/recents/model/TaskResourceLoader$1;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoader;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .end local v11    # "newIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v1

    .line 226
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->wait()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit v1

    goto/16 :goto_0

    .line 211
    .restart local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .restart local v11    # "newIcon":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_b
    move-object v12, v7

    .local v12, "newThumbnail":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 229
    .end local v6    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "cachedThumbnail":Landroid/graphics/Bitmap;
    .end local v11    # "newIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "newThumbnail":Landroid/graphics/Bitmap;
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    :catch_1
    move-exception v9

    .line 230
    .restart local v9    # "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 224
    .end local v9    # "ie":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 123
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 120
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mCancelled:Z

    .line 134
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    .line 138
    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskResourceLoader;->mContext:Landroid/content/Context;

    .line 131
    :cond_0
    return-void
.end method
