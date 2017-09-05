.class Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;
.super Landroid/database/ContentObserver;
.source "LockscreenWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->triggerLockscreenWallpaperAsyncLoading()V

    .line 58
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 65
    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    iget-object v4, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-static {v4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->-wrap1(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->-wrap0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-static {v3}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->-get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)Landroid/content/Context;

    move-result-object v3

    .line 67
    const v4, 0x1040642

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-static {v3}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->-get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)Landroid/content/Context;

    move-result-object v3

    .line 69
    const v4, 0x1040643

    .line 68
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108070f

    .line 71
    .local v0, "iconId":I
    iget-object v3, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-static {v3}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;->-get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void

    .line 74
    .end local v0    # "iconId":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController$1;->onChange(Z)V

    .line 64
    return-void
.end method
