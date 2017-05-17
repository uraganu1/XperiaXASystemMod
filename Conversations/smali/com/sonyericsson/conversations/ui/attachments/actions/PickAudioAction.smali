.class public Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "PickAudioAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildAudioAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "audioUri"    # Landroid/net/Uri;

    .prologue
    .line 24
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setAudio()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

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
    .line 53
    if-nez p2, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->buildAudioAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 52
    return-void
.end method

.method public handleButtonClicked()V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 31
    sget-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 32
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getAudioPicker()Landroid/content/Intent;

    move-result-object v1

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 34
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 28
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;Landroid/content/Intent;)V

    .line 46
    .local v0, "callback":Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/PickAudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 47
    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 46
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method
