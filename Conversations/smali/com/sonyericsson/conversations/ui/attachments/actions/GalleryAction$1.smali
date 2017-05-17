.class Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;
.super Ljava/lang/Object;
.source "GalleryAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 2
    .param p1, "isGranted"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 70
    :cond_0
    return-void
.end method
