.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;
.super Ljava/lang/Object;
.source "LockscreenWallpaperCache.java"


# instance fields
.field private final mEvictedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLockscreenReloadWallpaperCallback:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;

.field private mWallpaperCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mEvictedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cacheMaxSizeMb"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 51
    const/4 p1, 0x1

    .line 53
    :cond_0
    mul-int/lit16 v1, p1, 0x400

    mul-int/lit16 v0, v1, 0x400

    .line 55
    .local v0, "cacheMaxSizeBytes":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mEvictedUsers:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;-><init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;I)V

    iput-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mWallpaperCache:Landroid/util/LruCache;

    .line 49
    return-void
.end method


# virtual methods
.method public addWallpaperForUserId(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "wallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mWallpaperCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mEvictedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mWallpaperCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 112
    return-void
.end method

.method public getWallpaperForUserId(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "returnValue":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mEvictedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mLockscreenReloadWallpaperCallback:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mLockscreenReloadWallpaperCallback:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;

    invoke-interface {v1, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;->reloadWallpaperForUser(I)V

    .line 94
    .end local v0    # "returnValue":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "returnValue":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mWallpaperCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "returnValue":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mWallpaperCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mEvictedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public setLockscreenReloadWallpaperCallback(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;)V
    .locals 0
    .param p1, "lockscreenReloadWallpaperCallback"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->mLockscreenReloadWallpaperCallback:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenReloadWallpaperCallback;

    .line 73
    return-void
.end method
