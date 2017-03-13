.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

.field private final mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

.field private final mUserId:I

.field private final mWallpaperUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Landroid/net/Uri;ILcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockscreenStreamOpener"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;
    .param p3, "wallpaperUri"    # Landroid/net/Uri;
    .param p4, "userId"    # I
    .param p5, "loadWallpaperInterface"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;
    .param p6, "file"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    .line 46
    iput p4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    .line 47
    iput-object p3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mWallpaperUri:Landroid/net/Uri;

    .line 48
    iput-object p5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    .line 49
    iput-object p6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mFile:Ljava/io/File;

    .line 43
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    return-object v6

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    .local v4, "wallpaperBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 64
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mFile:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 86
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 88
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :cond_2
    :goto_1
    return-object v4

    .line 72
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    .line 71
    invoke-static {v5, v6}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperUtils;->getUserSpecificContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 74
    .local v3, "userContext":Landroid/content/Context;
    iget-object v5, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLockscreenStreamOpener:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    .line 75
    iget-object v6, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mWallpaperUri:Landroid/net/Uri;

    .line 74
    invoke-virtual {v5, v3, v6}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;->openInputStreamForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 77
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 78
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .local v4, "wallpaperBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 89
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "userContext":Landroid/content/Context;
    .end local v4    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "AsyncTaskWallpaperLoader"

    const-string/jumbo v6, "IOException when closing stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    .local v4, "wallpaperBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_2

    .line 88
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 89
    :catch_2
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "AsyncTaskWallpaperLoader"

    const-string/jumbo v6, "IOException when closing stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 86
    if-eqz v2, :cond_4

    .line 88
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    :cond_4
    :goto_2
    throw v5

    .line 89
    :catch_3
    move-exception v1

    .line 90
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "AsyncTaskWallpaperLoader"

    const-string/jumbo v7, "IOException when closing stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mLoadWallpaperInterface:Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;

    iget v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->mUserId:I

    invoke-interface {v0, p1, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LoadWallpaperInterface;->wallpaperLoaded(Landroid/graphics/Bitmap;I)V

    .line 98
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "wallpaperBitmap"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "wallpaperBitmap":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/AsyncTaskWallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
