.class Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;
.super Landroid/database/ContentObserver;
.source "ScreenTimeoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->-wrap2(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)V

    .line 104
    return-void
.end method
