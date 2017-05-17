.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;
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
    .line 389
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$800(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->mWelcomeDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$800(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 395
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$7;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    goto :goto_0
.end method
