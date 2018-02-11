.class Lcom/android/settings/AirplaneModeEnabler$3;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/AirplaneModeEnabler;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.mediatek.intent.action.AIRPLANE_CHANGE_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string/jumbo v2, "airplaneMode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    .local v1, "airplaneMode":Z
    const-string/jumbo v2, "AirplaneModeEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive, ACTION_AIRPLANE_CHANGE_DONE, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v2}, Lcom/android/settings/AirplaneModeEnabler;->-get0(Lcom/android/settings/AirplaneModeEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler$3;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v3}, Lcom/android/settings/AirplaneModeEnabler;->-wrap0(Lcom/android/settings/AirplaneModeEnabler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 169
    .end local v1    # "airplaneMode":Z
    :cond_0
    return-void
.end method
