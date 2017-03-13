.class Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;
.super Landroid/os/Handler;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 433
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 434
    .local v0, "simFrom":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 436
    .local v1, "simTo":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 438
    :pswitch_0
    const-string/jumbo v2, "SimDataConnectionTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switching time out..... switch from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iget-object v2, v2, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;

    invoke-static {v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$1;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-virtual {v2}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->refresh()V

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method
