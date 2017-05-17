.class public Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "RecordVideoAction.java"


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;II)Landroid/content/Intent;
    .locals 1
    .param p1, "sizeLimitVideo"    # I
    .param p2, "quality"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildVideoAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 37
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setVideo()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    return-object v0
.end method

.method private getIntent(II)Landroid/content/Intent;
    .locals 4
    .param p1, "sizeLimitVideo"    # I
    .param p2, "quality"    # I

    .prologue
    .line 73
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getVideoCapture(JI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->buildVideoAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 77
    :cond_0
    return-void
.end method

.method public handleButtonClicked()V
    .locals 7

    .prologue
    .line 42
    sget-object v4, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string/jumbo v4, "android.permission.CAMERA"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->getCurrentRemainingSize()I

    move-result v3

    .line 50
    .local v3, "sizeLimitVideo":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->isComposingImMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const/4 v2, 0x4

    .line 54
    .local v2, "quality":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v5

    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getIntent(II)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 41
    :goto_1
    return-void

    .line 51
    .end local v2    # "quality":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "quality":I
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;

    invoke-direct {v0, p0, v3, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;II)V

    .line 67
    .local v0, "callback":Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 66
    invoke-static {v4, v1, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleMultiplePermissionsRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;)V

    goto :goto_1
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 86
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/RecordVideoAction;->getIntent(II)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isActivityEnabled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
