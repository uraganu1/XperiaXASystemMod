.class public Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "CameraAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;
.implements Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->startCameraFragment()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildImageAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 34
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

.method private startCameraFragment()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 80
    return-void
.end method


# virtual methods
.method public attachImage(Landroid/net/Uri;)V
    .locals 4
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "mediaScanIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->buildImageAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->showKeyboardAfterAction()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 72
    return-void
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;-><init>()V

    .line 67
    .local v0, "icf":Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->setCallback(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$Callback;)V

    .line 68
    return-object v0
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_PHOTO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->startCameraFragment()V

    .line 38
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;)V

    .line 50
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleMultiplePermissionsRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;)V

    goto :goto_0
.end method
