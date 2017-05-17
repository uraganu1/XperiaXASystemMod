.class public Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "FileAction.java"


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->doAction()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildFileAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 3
    .param p0, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 40
    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    .line 41
    .local v0, "builder":Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setFile()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v2

    return-object v2

    .line 45
    :cond_0
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setImage()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v2

    return-object v2

    .line 47
    :cond_1
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setVideo()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 50
    const-string/jumbo v2, "application/ogg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setAudio()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setFile()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    goto :goto_0
.end method

.method private doAction()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFileDocumentPicker()Landroid/content/Intent;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 99
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->buildFileAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 98
    :cond_0
    return-void
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_FILE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 75
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->doAction()V

    .line 73
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;)V

    .line 79
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-eqz v2, :cond_1

    .line 66
    check-cast p1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .end local p1    # "ctx":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    .line 67
    .local v0, "composer":Lcom/sonyericsson/conversations/ui/Composer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isImTextCapable()Z

    move-result v1

    :cond_0
    return v1

    .line 69
    .end local v0    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    .restart local p1    # "ctx":Landroid/content/Context;
    :cond_1
    return v1
.end method
