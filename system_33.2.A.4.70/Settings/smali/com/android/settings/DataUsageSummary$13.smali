.class Lcom/android/settings/DataUsageSummary$13;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 3234
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 3239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3240
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive broadcast , action =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3243
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->-set3(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 3244
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->-wrap11(Lcom/android/settings/DataUsageSummary;)V

    .line 3237
    :cond_0
    :goto_0
    return-void

    .line 3245
    :cond_1
    const-string/jumbo v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3246
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->-get15(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 3247
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->-wrap11(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    .line 3249
    :cond_2
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 3248
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3250
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1, p2}, Lcom/android/settings/DataUsageSummary;->-wrap12(Lcom/android/settings/DataUsageSummary;Landroid/content/Intent;)V

    goto :goto_0

    .line 3251
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1, v0}, Lcom/android/settings/DataUsageSummary;->-wrap2(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3252
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$13;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1, v4}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    goto :goto_0
.end method
