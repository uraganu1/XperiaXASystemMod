.class Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;
.super Landroid/telephony/PhoneStateListener;
.source "SimDataConnectionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;
    .param p2, "$anonymous0"    # I
    .param p3, "val$slotId"    # I

    .prologue
    .line 575
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    iput p3, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 578
    const-string/jumbo v0, "SimDataConnectionTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListener:onServiceStateChanged, slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 579
    iget v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;->val$slotId:I

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 579
    const-string/jumbo v2, " servicestate = "

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine$3;->this$1:Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;

    invoke-static {v0}, Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;->-wrap6(Lcom/mediatek/systemui/qs/tiles/ext/SimDataConnectionTile$SimDataSwitchStateMachine;)V

    .line 577
    return-void
.end method
