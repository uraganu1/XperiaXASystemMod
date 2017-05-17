.class public Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "SketchAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildSketchAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "sketchUri"    # Landroid/net/Uri;

    .prologue
    .line 33
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setImage()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 71
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->buildSketchAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 70
    :cond_0
    return-void
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_SKETCH:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 50
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent()Landroid/content/Intent;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 47
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/SketchAction;)V

    .line 55
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isActivityEnabled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
