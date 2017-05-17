.class Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;
.super Ljava/lang/Object;
.source "RecordVideoAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;

.field final synthetic val$quality:I

.field final synthetic val$sizeLimitVideo:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;
    .param p2, "val$sizeLimitVideo"    # I
    .param p3, "val$quality"    # I

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->val$sizeLimitVideo:I

    iput p3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->val$quality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePermissionsResponse(Z)V
    .locals 5
    .param p1, "isGranted"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->val$sizeLimitVideo:I

    iget v4, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;->val$quality:I

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;II)Landroid/content/Intent;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 59
    :cond_0
    return-void
.end method
