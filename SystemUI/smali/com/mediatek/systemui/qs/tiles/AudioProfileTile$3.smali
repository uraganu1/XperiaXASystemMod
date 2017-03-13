.class Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;
.super Ljava/lang/Object;
.source "AudioProfileTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    const-string/jumbo v0, "AudioProfileTile"

    const-string/jumbo v1, "mDismissProfileSwitchDialogRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-get2(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile$3;->this$0:Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/AudioProfileTile;)V

    .line 310
    return-void
.end method
