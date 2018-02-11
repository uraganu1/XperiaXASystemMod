.class Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneServiceStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/sim/PhoneServiceStateHandler;
    .param p2, "$anonymous0"    # I
    .param p3, "val$subId"    # I

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    iput p3, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->val$subId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 64
    const-string/jumbo v0, "PhoneServiceStateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneStateListener:onServiceStateChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->val$subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    const-string/jumbo v2, ", state: "

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-static {v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->-get0(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;)Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->this$0:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-static {v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->-get0(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;)Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;->val$subId:I

    invoke-interface {v0, p1, v1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;->onServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 63
    :cond_0
    return-void
.end method
