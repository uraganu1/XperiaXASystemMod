.class public Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "StickerAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;
.implements Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;


# instance fields
.field private mPreselectedStickerPackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildStickerAttachment(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 2
    .param p0, "sticker"    # Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;->contentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setSticker()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    return-object v1
.end method

.method private launchSketchStickerStore()V
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    .line 92
    .local v1, "factory":Lcom/sonyericsson/conversations/ui/IntentFactory;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isSketchInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->showGetSketchDialog()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchStoreIntent()Landroid/content/Intent;

    move-result-object v2

    .line 97
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/util/PackageUtil;->isActivityEnabled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private showGetSketchDialog()V
    .locals 4

    .prologue
    .line 104
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;)V

    .line 113
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction$2;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;)V

    .line 121
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    const v3, 0x7f0b026d

    .line 121
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 123
    const v3, 0x7f0b026e

    .line 121
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 124
    const v3, 0x7f0b026f

    .line 121
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;-><init>()V

    .line 82
    .local v0, "spf":Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->setCallback(Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment$Callback;)V

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->mPreselectedStickerPackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->mPreselectedStickerPackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/stickers/StickerPickerFragment;->setPreselectedPack(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->mPreselectedStickerPackId:Ljava/lang/String;

    .line 87
    :cond_0
    return-object v0
.end method

.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->onStickerSelected(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)V

    .line 129
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string/jumbo v0, "com.sonymobile.sketch.extra.PACKAGE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->mPreselectedStickerPackId:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    goto :goto_0
.end method

.method public handleButtonClicked()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_STICKER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 72
    return-void
.end method

.method public onSketchStoreOpened(Z)V
    .locals 2
    .param p1, "openedFromWelcomeTab"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->togglePicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE_BANNER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 65
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;)V

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->launchSketchStickerStore()V

    .line 61
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    goto :goto_0
.end method

.method public onStickerPackSelected(Ljava/lang/String;)V
    .locals 0
    .param p1, "packId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->mPreselectedStickerPackId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public onStickerSelected(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)V
    .locals 3
    .param p1, "sticker"    # Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;

    .prologue
    .line 51
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->updateRecentsWithSticker(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->buildStickerAttachment(Lcom/sonyericsson/conversations/stickers/SketchStickerPack$Sticker;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/StickerAction;->showKeyboardAfterAction()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->sendAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;Z)Z

    .line 50
    return-void
.end method
