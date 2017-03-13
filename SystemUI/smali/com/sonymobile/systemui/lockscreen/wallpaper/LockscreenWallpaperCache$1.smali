.class Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;
.super Landroid/util/LruCache;
.source "LockscreenWallpaperCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->-get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;->this$0:Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;

    invoke-static {v0}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;->-get0(Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "key":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "oldValue":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;->entryRemoved(ZLjava/lang/Integer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Integer;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/lockscreen/wallpaper/LockscreenWallpaperCache$1;->sizeOf(Ljava/lang/Integer;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
