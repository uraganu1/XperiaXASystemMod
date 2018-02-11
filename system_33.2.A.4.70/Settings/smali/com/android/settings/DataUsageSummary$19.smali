.class Lcom/android/settings/DataUsageSummary$19;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->handleMultiSimDataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentSir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DataUsageSummary;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$currentSir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$19;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/DataUsageSummary$19;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->val$context:Landroid/content/Context;

    const v1, 0x7f0b0115

    .line 1610
    const/4 v2, 0x0

    .line 1609
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1611
    return-void

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-get20(Lcom/android/settings/DataUsageSummary;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$19;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1615
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$19;->val$currentSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->-wrap7(Lcom/android/settings/DataUsageSummary;IZ)V

    .line 1616
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-wrap11(Lcom/android/settings/DataUsageSummary;)V

    .line 1606
    return-void
.end method
