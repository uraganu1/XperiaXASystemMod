.class Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;
.super Ljava/lang/Object;
.source "AttachmentBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTimestamp:J

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;->mLastClickTimestamp:J

    .line 169
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;->mLastClickTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;->mLastClickTimestamp:J

    .line 180
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->canAddMoreAttachments()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;->handleButtonClicked()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 186
    const v3, 0x7f0b00b9

    .line 187
    const/4 v4, 0x1

    .line 185
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method
