.class public interface abstract Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;
.super Ljava/lang/Object;
.source "LockscreenWallpaperContract.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "com.sonymobile.lockscreen.xperia.wallpaperprovider"

    .line 29
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "wallpaper"

    .line 29
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperContract;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    return-void
.end method
