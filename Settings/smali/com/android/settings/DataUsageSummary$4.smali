.class Lcom/android/settings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1532
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1535
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->-get3(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 1537
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->-get8(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 1538
    .local v1, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->-get6(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "currentTab":Ljava/lang/String;
    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataEnabledListener... dataEanbled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1540
    const-string/jumbo v5, "mCurrentTab: "

    .line 1539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1540
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->-get6(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v5

    .line 1539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-wrap1(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1542
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3, v0}, Lcom/android/settings/DataUsageSummary;->-wrap3(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v2

    .line 1543
    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xb2

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 1544
    if-eqz v1, :cond_4

    .line 1546
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1547
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->-wrap5(Lcom/android/settings/DataUsageSummary;)V

    .line 1556
    .end local v2    # "subId":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3, v6}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 1534
    return-void

    .line 1537
    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1549
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v2    # "subId":I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/settings/DataUsageSummary;->-wrap4(Lcom/android/settings/DataUsageSummary;IZ)V

    goto :goto_1

    .line 1552
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$4;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3, v2, v6}, Lcom/android/settings/DataUsageSummary;->-wrap4(Lcom/android/settings/DataUsageSummary;IZ)V

    goto :goto_1
.end method
