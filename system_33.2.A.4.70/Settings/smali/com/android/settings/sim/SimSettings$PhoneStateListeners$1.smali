.class Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$PhoneStateListeners;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/sim/SimSettings$PhoneStateListeners;
    .param p2, "$anonymous0"    # I
    .param p3, "val$subId"    # I

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;->this$1:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    iput p3, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;->val$subId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;->this$1:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    iget v2, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;->val$subId:I

    invoke-static {v1, v2}, Lcom/android/settings/sim/SimSettings;->-wrap3(Lcom/android/settings/sim/SimSettings;I)I

    move-result v0

    .line 732
    .local v0, "soltId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;->this$1:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->-get0(Lcom/android/settings/sim/SimSettings$PhoneStateListeners;)[Landroid/telephony/ServiceState;

    move-result-object v1

    aput-object p1, v1, v0

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$PhoneStateListeners$1;->this$1:Lcom/android/settings/sim/SimSettings$PhoneStateListeners;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$PhoneStateListeners;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->-wrap9(Lcom/android/settings/sim/SimSettings;)V

    .line 730
    return-void
.end method
