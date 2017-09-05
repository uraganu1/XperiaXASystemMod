.class public Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;
.super Ljava/lang/Object;
.source "WallpaperManagerProxy.java"


# instance fields
.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 0
    .param p1, "wallpaperManager"    # Landroid/app/WallpaperManager;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 21
    return-void
.end method


# virtual methods
.method public getPackageNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/WallpaperManagerProxy;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 35
    .local v1, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 38
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
