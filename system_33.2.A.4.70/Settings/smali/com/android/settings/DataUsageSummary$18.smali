.class Lcom/android/settings/DataUsageSummary$18;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataRestricted:Z

.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$restrictBackground:Z


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DataUsageSummary;
    .param p2, "val$restrictBackground"    # Z

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    iput-boolean p2, p0, Lcom/android/settings/DataUsageSummary$18;->val$restrictBackground:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1324
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$18;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-get16(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary$18;->val$restrictBackground:Z

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1326
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-get16(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary$18;->mDataRestricted:Z

    .line 1327
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1331
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$18;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-get13(Lcom/android/settings/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1333
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-boolean v1, p0, Lcom/android/settings/DataUsageSummary$18;->mDataRestricted:Z

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->-set0(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 1334
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-wrap14(Lcom/android/settings/DataUsageSummary;)V

    .line 1331
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->-get13(Lcom/android/settings/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1319
    return-void
.end method
