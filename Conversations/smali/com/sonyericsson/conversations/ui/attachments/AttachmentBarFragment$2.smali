.class Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;
.super Ljava/lang/Object;
.source "AttachmentBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->addOverflowItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->-get1(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->canAddMoreAttachments()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->-get0(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->setKeyboard(Z)V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->-get1(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarOverflowDialog;->show(Landroid/content/Context;[Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 598
    const v1, 0x7f0b00b9

    .line 599
    const/4 v2, 0x1

    .line 597
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method
