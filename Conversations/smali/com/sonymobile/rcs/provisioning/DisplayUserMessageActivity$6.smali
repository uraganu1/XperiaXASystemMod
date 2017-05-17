.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;
.super Ljava/lang/Object;
.source "DisplayUserMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->displayEUCRDialog(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 378
    new-instance v0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;

    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mEucrId:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Ljava/lang/String;Z)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$sendTermsResponse;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 379
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    const/4 v1, 0x2

    # invokes: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->updateEUCRStatus(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$700(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;I)V

    .line 380
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$6;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    .line 381
    return-void
.end method
