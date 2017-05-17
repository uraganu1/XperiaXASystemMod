.class Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;
.super Ljava/lang/Object;
.source "PickAudioAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 3
    .param p1, "isGranted"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 40
    :cond_0
    return-void
.end method
