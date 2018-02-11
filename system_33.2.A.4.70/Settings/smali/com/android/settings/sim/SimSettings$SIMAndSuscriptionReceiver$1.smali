.class Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;->this$1:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 628
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;->this$1:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->-get0(Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 630
    if-nez v1, :cond_0

    .line 632
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 630
    if-eqz v1, :cond_1

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver$1;->this$1:Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$SIMAndSuscriptionReceiver;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->-wrap9(Lcom/android/settings/sim/SimSettings;)V

    .line 627
    :cond_1
    return-void
.end method
