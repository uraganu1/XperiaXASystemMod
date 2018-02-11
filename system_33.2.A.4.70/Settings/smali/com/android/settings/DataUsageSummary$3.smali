.class Lcom/android/settings/DataUsageSummary$3;
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
    .line 1504
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1508
    const-string/jumbo v1, "DataUsage"

    const-string/jumbo v2, "mMobileDataReceiver, onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->-get6(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->-wrap1(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1511
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->-get14(Lcom/android/settings/DataUsageSummary;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->-get6(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->-wrap3(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1512
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->-get6(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->-wrap3(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1511
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$3;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1506
    .end local v0    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
