.class public abstract Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;
.super Ljava/lang/Object;
.source "ObjectGraphFactory.java"


# static fields
.field private static sLockscreenWallpaperController:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedLockscreenWallpaperController()Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->sLockscreenWallpaperController:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    return-object v0
.end method

.method public static newLockscreenWallpaperController(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;)Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "lockscreenWallpaperCache"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;
    .param p3, "lockscreenStreamOpener"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;

    .prologue
    .line 35
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;-><init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenStreamOpener;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 37
    .local v0, "lwc":Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;
    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->setSharedLockscreenWallpaperController(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)V

    .line 38
    return-object v0
.end method

.method public static setSharedLockscreenWallpaperController(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;)V
    .locals 0
    .param p0, "lockscreenWallpaperController"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    .prologue
    .line 57
    sput-object p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/ObjectGraphFactory;->sLockscreenWallpaperController:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperController;

    .line 56
    return-void
.end method
