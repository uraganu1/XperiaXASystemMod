.class public Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "AudioAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;
.implements Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->startAudioFragment()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildAudioAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "audioUri"    # Landroid/net/Uri;

    .prologue
    .line 30
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

.method private startAudioFragment()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 60
    return-void
.end method


# virtual methods
.method public attachAudio(Landroid/net/Uri;)V
    .locals 4
    .param p1, "audioUri"    # Landroid/net/Uri;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->buildAudioAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->showKeyboardAfterAction()Z

    move-result v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 74
    return-void
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;-><init>()V

    .line 66
    .local v0, "iaf":Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setCallback(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->getCurrentRemainingSize()I

    move-result v1

    .line 69
    .local v1, "sizeLimit":I
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setSizeLimit(I)V

    .line 70
    return-object v0
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->startAudioFragment()V

    .line 34
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;)V

    .line 46
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleMultiplePermissionsRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;)V

    goto :goto_0
.end method
