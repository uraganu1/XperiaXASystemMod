.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;
.super Landroid/os/AsyncTask;
.source "LockscreenLiveWallpaperChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnLiveWallpaperCheckCompleted:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field private final mWallpaperManagerWrapper:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;I)V
    .locals 0
    .param p1, "wallpaperManagerWrapper"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;
    .param p2, "userId"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mWallpaperManagerWrapper:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;

    .line 30
    iput p2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mUserId:I

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 45
    const-string/jumbo v0, "com.sonymobile.experienceflow2"

    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mWallpaperManagerWrapper:Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;

    .line 46
    iget v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mUserId:I

    .line 45
    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;->getPackageNameForUser(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mOnLiveWallpaperCheckCompleted:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mOnLiveWallpaperCheckCompleted:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;

    .line 53
    .local v0, "lwp":Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;->onCheckLiveWallpaperCheckCompleted(Z)V

    .line 50
    .end local v0    # "lwp":Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setOnTaskCompleteListener(Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;)V
    .locals 1
    .param p1, "onLiveWallpaperCheckCompleted"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/OnLiveWallpaperCheckCompleted;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenLiveWallpaperChecker;->mOnLiveWallpaperCheckCompleted:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method
