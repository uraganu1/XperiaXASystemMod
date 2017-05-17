.class public Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "GalleryAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;
.implements Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_gallery_MediaStoreData$MediaStoreTypeSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_ui_gallery_MediaStoreData$MediaStoreTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->-com_sonyericsson_conversations_ui_gallery_MediaStoreData$MediaStoreTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->-com_sonyericsson_conversations_ui_gallery_MediaStoreData$MediaStoreTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->values()[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->IMAGE:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->VIDEO:Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->-com_sonyericsson_conversations_ui_gallery_MediaStoreData$MediaStoreTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method private addImage(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    .prologue
    .line 102
    invoke-static {}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->-getcom_sonyericsson_conversations_ui_gallery_MediaStoreData$MediaStoreTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    const-string/jumbo v0, "Unsupported media type in inline gallery"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->buildGalleryImageAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->buildGalleryVideoAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->showKeyboardAfterAction()Z

    move-result v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static buildGalleryImageAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_PICTURE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 40
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 42
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

.method private static buildGalleryVideoAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 52
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 54
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


# virtual methods
.method public galleryFabClicked()V
    .locals 5

    .prologue
    .line 118
    const-string/jumbo v2, "message_list"

    const-string/jumbo v3, "inline_gallery"

    .line 119
    const-string/jumbo v4, "album_exit_fab"

    .line 118
    invoke-static {v2, v3, v4}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v0

    .line 122
    .local v0, "factory":Lcom/sonyericsson/conversations/ui/IntentFactory;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/PackageUtil;->isAlbumInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getAlbumIntent()Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 117
    return-void

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getVideoAndImages()Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public galleryMediaSelected(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->addImage(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$MediaStoreType;)V

    .line 96
    return-void
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;-><init>()V

    .line 91
    .local v0, "mGalleryGridFragment":Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment;->setCallback(Lcom/sonyericsson/conversations/ui/gallery/GalleryGridFragment$GalleryGridCallback;)V

    .line 92
    return-object v0
.end method

.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->buildGalleryImageAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->showKeyboardAfterAction()Z

    move-result v3

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 80
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 63
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 58
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/GalleryAction;)V

    .line 67
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method
