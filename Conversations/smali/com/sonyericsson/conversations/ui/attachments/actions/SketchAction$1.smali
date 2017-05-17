.class Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction$1;
.super Ljava/lang/Object;
.source "SketchAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 3
    .param p1, "isGranted"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 58
    :cond_0
    return-void
.end method
