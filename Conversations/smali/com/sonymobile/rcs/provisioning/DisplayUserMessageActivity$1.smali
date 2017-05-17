.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;
.super Ljava/lang/Object;
.source "DisplayUserMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;
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
    .line 122
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # invokes: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->userLeaveHint()V
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$000(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    .line 128
    return-void
.end method
