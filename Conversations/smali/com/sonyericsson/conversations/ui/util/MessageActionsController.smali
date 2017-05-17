.class public Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;,
        Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

.field private final mDeleteMessagesTaskListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageUri:Landroid/net/Uri;

.field private mMimeType:Ljava/lang/String;

.field private mObjectUri:Landroid/net/Uri;

.field private mOptions:I

.field private mPd:Landroid/app/ProgressDialog;

.field private mSaveListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

.field private mScheme:Ljava/lang/String;

.field private mSetRingtoneOnPermissionResult:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "simCardSlotIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getSimCardFullDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "objectUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->findPartByObjectUri(Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectUri"    # Landroid/net/Uri;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveObject(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->checkWriteSettingsAndSetAudioRingtone()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCardSlotIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->displayMessageCopiedSuccessfully(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p4, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    .line 210
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    .line 214
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mSaveListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .line 1251
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteMessagesTaskListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must not pass null context to the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 272
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 273
    if-eqz p3, :cond_1

    .line 274
    invoke-virtual {p3}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    .line 276
    :cond_1
    iput p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p4, "objectUri"    # Landroid/net/Uri;
    .param p5, "options"    # I
    .param p6, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V

    .line 293
    if-nez p4, :cond_0

    .line 294
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Must not pass a null uri to the constructor."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_0
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    .line 297
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 300
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    .line 302
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 307
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 310
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 319
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v3, 0x0

    .line 321
    .local v3, "originalMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 322
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 330
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v3    # "originalMimeType":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 331
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    .line 291
    :cond_3
    return-void

    .line 325
    .restart local v3    # "originalMimeType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not convert mime type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") for uri ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 327
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 327
    const-string/jumbo v5, ")."

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private canResendJoynMessageAsXms()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 515
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageIsDelivered(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    return v0

    .line 518
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    :cond_1
    :goto_0
    return v0

    .line 519
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canScanImageWithMediaScanner()Z
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "imageFilePath":Ljava/lang/String;
    const-string/jumbo v1, "com.android.providers.telephony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkWriteSettingsAndSetAudioRingtone()V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setAudioAsRingtone()V

    .line 1605
    :goto_0
    return-void

    .line 1609
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mSetRingtoneOnPermissionResult:Z

    .line 1610
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->showWriteSettingsInfoDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1635
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1631
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private displayMessageCopiedSuccessfully(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCardSlotIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 894
    const v0, 0x7f0b014a

    .line 895
    .local v0, "toastResId":I
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    if-nez p2, :cond_1

    .line 897
    const v0, 0x7f0b014b

    .line 902
    :cond_0
    :goto_0
    invoke-static {p1, v0, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 893
    return-void

    .line 899
    :cond_1
    const v0, 0x7f0b014c

    goto :goto_0
.end method

.method private findPartByObjectUri(Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "objectUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 783
    .local v2, "pduBody":Lcom/google/android/mms/pdu/PduBody;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 784
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 785
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 786
    return-object v1

    .line 783
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getContentSpecificSaveText()I
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    const v0, 0x7f0b00a1

    return v0

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    const v0, 0x7f0b00a2

    return v0

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1318
    const-string/jumbo v0, "application/ogg"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1317
    if-eqz v0, :cond_3

    .line 1320
    :cond_2
    const v0, 0x7f0b009e

    return v0

    .line 1321
    :cond_3
    const-string/jumbo v0, "text/x-vCard"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1323
    const v0, 0x7f0b009f

    return v0

    .line 1326
    :cond_4
    const v0, 0x7f0b00a0

    return v0
.end method

.method private getContentSpecificViewText()I
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1294
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const v0, 0x7f0b00a8

    return v0

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    const v0, 0x7f0b00a9

    return v0

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1301
    const-string/jumbo v0, "application/ogg"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1300
    if-eqz v0, :cond_3

    .line 1303
    :cond_2
    const v0, 0x7f0b009d

    return v0

    .line 1306
    :cond_3
    const v0, 0x7f0b02b6

    return v0
.end method

.method public static getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I
    .locals 7
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/high16 v6, 0x10000

    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, "options":I
    if-nez p0, :cond_0

    .line 338
    const-string/jumbo v4, "message is null, no option can be found"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 339
    const/4 v4, 0x0

    return v4

    .line 341
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getDefaultMessageOptionsForNoSim(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v4

    return v4

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    iget v4, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 347
    iget v4, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 348
    :cond_2
    const/4 v3, 0x1

    .line 351
    :cond_3
    instance-of v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_7

    move-object v2, p0

    .line 352
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 353
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 354
    or-int/lit8 v3, v3, 0x2

    .line 394
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_4
    :goto_0
    return v3

    .line 356
    .restart local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_5
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 358
    or-int/2addr v3, v6

    .line 360
    :cond_6
    or-int/lit8 v3, v3, 0x4

    .line 362
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->isReceivedMessage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 363
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v4

    .line 362
    if-eqz v4, :cond_4

    .line 364
    or-int/lit8 v3, v3, 0x10

    .line 365
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    or-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 370
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_7
    instance-of v4, p0, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v4, :cond_c

    move-object v1, p0

    .line 371
    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 372
    .local v1, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v4, v5, :cond_9

    .line 373
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "content":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 375
    or-int/2addr v3, v6

    .line 377
    :cond_8
    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 379
    .end local v0    # "content":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v4, v5, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 381
    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 383
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 384
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-eq v4, v5, :cond_b

    .line 385
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-ne v4, v5, :cond_4

    .line 386
    :cond_b
    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 390
    .end local v1    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_c
    or-int/lit8 v3, v3, 0x4

    .line 391
    or-int/2addr v3, v6

    goto :goto_0
.end method

.method private static getDefaultMessageOptionsForNoSim(Lcom/sonyericsson/conversations/model/Message;)I
    .locals 5
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "options":I
    instance-of v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 400
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 401
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 403
    const/high16 v2, 0x10000

    .line 405
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isReceivedMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v3

    .line 405
    if-eqz v3, :cond_1

    .line 407
    or-int/lit8 v2, v2, 0x10

    .line 419
    .end local v1    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_1
    :goto_0
    return v2

    .line 410
    :cond_2
    instance-of v3, p0, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 411
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 412
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v3, v4, :cond_1

    .line 413
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 414
    const/high16 v2, 0x10000

    goto :goto_0

    .line 417
    .end local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_3
    const/high16 v2, 0x10000

    goto :goto_0
.end method

.method private static getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;
    .locals 9
    .param p0, "msg"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 1330
    const/4 v7, 0x0

    .line 1331
    .local v7, "strRet":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1333
    .local v6, "strBuffer":Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 1334
    const-string/jumbo v8, "getMesssageContent - parameter is null."

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1335
    return-object v7

    .line 1338
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    .end local v6    # "strBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1340
    .local v6, "strBuffer":Ljava/lang/StringBuffer;
    instance-of v8, p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v8, :cond_4

    .line 1342
    :try_start_0
    check-cast p0, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 1343
    .local v4, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1344
    const/4 v3, 0x0

    .line 1345
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 1346
    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1347
    .local v3, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1348
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1349
    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    .end local v1    # "i":I
    .end local v3    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v4    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v8, "getMesssageContent - failed to get the slideshow"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1365
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1366
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1369
    .end local v7    # "strRet":Ljava/lang/String;
    :cond_3
    return-object v7

    .line 1357
    .restart local v7    # "strRet":Ljava/lang/String;
    .restart local p0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_4
    instance-of v8, p0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v8, :cond_5

    move-object v5, p0

    .line 1358
    check-cast v5, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 1359
    .local v5, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v8, v5, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1360
    .end local v5    # "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_5
    instance-of v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v8, :cond_2

    move-object v2, p0

    .line 1361
    check-cast v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 1362
    .local v2, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, "mimeType":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v7, :cond_3

    if-eqz p1, :cond_3

    .line 451
    const/4 v6, 0x0

    .line 452
    .local v6, "slideshow":Lcom/android/mms/model/SlideshowModel;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v7, v7, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v7, :cond_0

    .line 454
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v7, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 462
    .end local v6    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_0
    if-eqz v6, :cond_3

    .line 463
    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 464
    .end local v4    # "mimeType":Ljava/lang/String;
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 465
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    .line 466
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 467
    .local v2, "item":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 468
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    .local v4, "mimeType":Ljava/lang/String;
    goto :goto_1

    .line 455
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "item":Lcom/android/mms/model/MediaModel;
    .end local v3    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .local v4, "mimeType":Ljava/lang/String;
    .restart local v6    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Lcom/google/android/mms/MmsException;
    sget-boolean v7, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 457
    const-string/jumbo v7, "Exception occurred when try to get MMS slide show."

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v6    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    return-object v4
.end method

.method private getSimCardFullDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "simCardSlotIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 917
    const v1, 0x7f0b004f

    .line 918
    .local v1, "titleResId":I
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    if-nez p1, :cond_1

    .line 920
    const v1, 0x7f0b0050

    .line 926
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    .local v0, "simCardFullDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 928
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 929
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 930
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 932
    const v2, 0x7f0b004b

    .line 931
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 934
    new-instance v2, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)V

    .line 933
    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 922
    .end local v0    # "simCardFullDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const v1, 0x7f0b0051

    goto :goto_0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 793
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v0    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    :cond_0
    return-object v0
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method private isJoynFileMessage()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/jms/message/ImFileMessage;

    return v0
.end method

.method private isJoynMessage()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v0, v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    return v0
.end method

.method private isJoynServiceDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 532
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 532
    :cond_0
    return v1
.end method

.method private isJoynTextMessage()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/jms/message/ImTextMessage;

    return v0
.end method

.method private isMmscSet()Z
    .locals 4

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v1, v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_0

    .line 1125
    new-instance v0, Lcom/sonymobile/conversations/transaction/TransactionSettings;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1126
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v1

    const/4 v3, 0x0

    .line 1125
    invoke-direct {v0, v2, v1, v3}, Lcom/sonymobile/conversations/transaction/TransactionSettings;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1127
    .local v0, "transactionSettings":Lcom/sonymobile/conversations/transaction/TransactionSettings;
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->isMmscSet()Z

    move-result v1

    return v1

    .line 1129
    .end local v0    # "transactionSettings":Lcom/sonymobile/conversations/transaction/TransactionSettings;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedMmsContent()Z
    .locals 4

    .prologue
    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v1

    .line 539
    .local v1, "message":Lcom/sonymobile/jms/message/ImMessage;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 540
    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessage;

    .end local v1    # "message":Lcom/sonymobile/jms/message/ImMessage;
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    .line 539
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/model/MessageUtil;->isSupportedMmsContent(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 541
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    const/4 v2, 0x0

    return v2
.end method

.method private isVoiceCapable()Z
    .locals 2

    .prologue
    .line 625
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v0

    .line 626
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private performAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 951
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->setExplicitPackageForContent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 952
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 955
    const v2, 0x7f0b00a6

    .line 956
    const/4 v3, 0x0

    .line 954
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private saveAddress()V
    .locals 3

    .prologue
    .line 670
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 673
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    .line 669
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private saveObject(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectUri"    # Landroid/net/Uri;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    const/4 v9, 0x0

    .line 703
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 706
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 706
    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 708
    const-string/jumbo v13, "/"

    .line 706
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "dir":Ljava/lang/String;
    const-string/jumbo v12, "."

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 713
    .local v8, "index":I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_3

    .line 714
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "ext":Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 724
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 725
    .local v10, "parentFile":Ljava/io/File;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 731
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 733
    .local v9, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 735
    .local v7, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v12, 0x1f40

    :try_start_1
    new-array v1, v12, [B

    .line 736
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v1, "buffer":[B
    const/4 v11, 0x0

    .line 737
    .local v11, "size":I
    :goto_1
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 738
    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 745
    .end local v1    # "buffer":[B
    .end local v11    # "size":I
    :catchall_0
    move-exception v12

    move-object v6, v7

    .line 746
    .end local v2    # "dir":Ljava/lang/String;
    .end local v4    # "ext":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "index":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "parentFile":Ljava/io/File;
    :goto_2
    if-eqz v9, :cond_1

    .line 748
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 754
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 756
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 745
    :cond_2
    :goto_4
    throw v12

    .line 716
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "index":I
    .local v9, "inputStream":Ljava/io/InputStream;
    :cond_3
    add-int/lit8 v12, v8, 0x1

    :try_start_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 717
    .restart local v4    # "ext":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 725
    .restart local v5    # "file":Ljava/io/File;
    .restart local v10    # "parentFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_0

    .line 726
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to copy file to directory "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const v13, 0x7f0b00a5

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 728
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "failed to copy file to directory "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 745
    .end local v2    # "dir":Ljava/lang/String;
    .end local v4    # "ext":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "index":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v12

    goto :goto_2

    .line 743
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v4    # "ext":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "index":I
    .local v9, "inputStream":Ljava/io/InputStream;
    .restart local v10    # "parentFile":Ljava/io/File;
    .restart local v11    # "size":I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 746
    if-eqz v9, :cond_6

    .line 748
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 754
    .end local v5    # "file":Ljava/io/File;
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 756
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 763
    :cond_7
    :goto_6
    return-object v5

    .line 749
    .restart local v5    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 751
    .local v3, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .local v5, "file":Ljava/io/File;
    goto :goto_5

    .line 757
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 759
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .restart local v5    # "file":Ljava/io/File;
    goto :goto_6

    .line 749
    .end local v1    # "buffer":[B
    .end local v2    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ext":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "index":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "parentFile":Ljava/io/File;
    .end local v11    # "size":I
    :catch_2
    move-exception v3

    .line 751
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_3

    .line 757
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 759
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_4
.end method

.method private sendFileMessageAsMmsMessage(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 9
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1055
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 1057
    .local v0, "fileUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v2}, Lcom/sonyericsson/conversations/model/MessageUtil;->createMediaModel(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 1058
    .local v1, "mediaModel":Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 1059
    .local v5, "slideshowModel":Lcom/android/mms/model/SlideshowModel;
    new-instance v4, Lcom/android/mms/model/SlideModel;

    .line 1060
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/mms/model/MediaModel;

    aput-object v1, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1059
    const/16 v7, 0x1388

    invoke-direct {v4, v7, v6}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    .line 1061
    .local v4, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5, v8, v4}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 1062
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sonyericsson/conversations/model/MmsMessage;->createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v3

    .line 1063
    .local v3, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubscriptionId(I)V

    .line 1064
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v6, p2, v3}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;)Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 1054
    return-void
.end method

.method private sendTextMessageAsSmsMessage(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 2
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v0

    .line 1070
    .local v0, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->setSubscriptionId(I)V

    .line 1071
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 1072
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;)Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 1068
    return-void
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    monitor-enter p0

    .line 1626
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 1625
    return-void

    .line 1627
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mPd:Landroid/app/ProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 1647
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->dismissProgressDialog()V

    .line 1646
    return-void
.end method

.method public copyMessage(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "simCardSlotIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 1373
    const-string/jumbo v1, ""

    .line 1374
    const v2, 0x7f0b0056

    .line 1373
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1374
    const/4 v3, 0x1

    .line 1373
    invoke-static {p1, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1376
    .local v0, "pd":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/app/Activity;ILandroid/app/ProgressDialog;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1372
    return-void
.end method

.method public copySMSToSimCard(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "simCardSlotIndex"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-nez v0, :cond_0

    .line 846
    return-void

    .line 848
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;

    const-string/jumbo v1, "copySmsToSim"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->start()V

    .line 844
    return-void
.end method

.method public copyTextToClipboard()V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x0

    .line 802
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageContent(Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "strMsgContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 804
    return-void

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 808
    const-string/jumbo v5, "clipboard"

    .line 807
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 810
    .local v0, "cbm":Landroid/content/ClipboardManager;
    move-object v2, v3

    .line 811
    .local v2, "snippet":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\u2026"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 817
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 819
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b014d

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 801
    return-void
.end method

.method public createLinkContextMenu(Landroid/view/ContextMenu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v4, 0x0

    .line 1449
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1450
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1453
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v1

    .line 1454
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    const/16 v2, 0x3e9

    .line 1456
    const v3, 0x7f0b00aa

    .line 1455
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1457
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1461
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    const/16 v2, 0x3ea

    .line 1462
    const v3, 0x7f0b00ab

    .line 1461
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1463
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1466
    const/16 v2, 0x3eb

    .line 1467
    const v3, 0x7f0b00ac

    .line 1466
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1468
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1470
    return-void

    .line 1473
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "mailto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1476
    const/16 v2, 0x3ed

    .line 1477
    const v3, 0x7f0b00ae

    .line 1476
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1478
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1481
    const/16 v2, 0x3ec

    .line 1482
    const v3, 0x7f0b00af

    .line 1481
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1483
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1485
    return-void

    .line 1488
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "rtsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1491
    :cond_3
    const/16 v2, 0x3ee

    .line 1492
    const v3, 0x7f0b00ad

    .line 1491
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1493
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1495
    return-void

    .line 1448
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_4
    return-void
.end method

.method public createObjectContextMenu(Landroid/view/ContextMenu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/16 v4, 0x3ef

    const/4 v3, 0x0

    .line 1504
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 1508
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getContentSpecificViewText()I

    move-result v1

    .line 1507
    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1509
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1513
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getContentSpecificSaveText()I

    move-result v1

    .line 1512
    const/16 v2, 0x3f0

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1514
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1516
    const-string/jumbo v1, "text/x-vCard"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1517
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1521
    const/16 v1, 0x3f1

    .line 1522
    const v2, 0x7f0b0098

    .line 1521
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1523
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1525
    :cond_1
    return-void

    .line 1503
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_2
    return-void
.end method

.method public deleteMessage()V
    .locals 5

    .prologue
    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1245
    .local v0, "messageKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    new-instance v1, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 1247
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteMessagesTaskListener:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;

    .line 1246
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;)V

    .line 1248
    .local v1, "task":Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;
    sget-object v2, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->sDeleteTaskExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1243
    return-void
.end method

.method public downloadMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1103
    sget-boolean v1, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1104
    const-string/jumbo v1, "Downloading message"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1106
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isMmscSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1111
    const v3, 0x7f0b00bd

    .line 1110
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1115
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_RETRIEVE_TRANSACTION"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1116
    const-class v3, Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 1115
    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1117
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    const-string/jumbo v1, "manual_request"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1102
    return-void
.end method

.method public forwardMessage()V
    .locals 4

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/model/Message;->getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getNumberOfAttachments()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1145
    const v2, 0x7f0b0097

    .line 1146
    const/4 v3, 0x1

    .line 1144
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1147
    return-void

    .line 1149
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1150
    const-class v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 1149
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1151
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1153
    const-string/jumbo v1, "msg_uri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v1, "source_thread_id"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1156
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1140
    return-void
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCopySmsToSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v1, v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v1, v1, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-nez v1, :cond_0

    .line 564
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCopyVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 568
    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDownloadVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 548
    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForwardEnabled()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->isForwardable(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    return v0
.end method

.method public isForwardVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 552
    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroupConversation()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaySlideshowVisible()Z
    .locals 5

    .prologue
    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "visible":Z
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v3, v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_0

    .line 426
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 427
    .local v1, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->canPlaySlideShow()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 434
    .end local v1    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v2    # "visible":Z
    :cond_0
    :goto_0
    return v2

    .line 428
    .restart local v2    # "visible":Z
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Lcom/google/android/mms/MmsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPlaySlideshowVisible - failed to get the slideshow for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 431
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    .line 430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isReplyAllVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 572
    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isResendAsMmsVisible()Z
    .locals 1

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynFileMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->canResendJoynMessageAsXms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isGroupConversation()Z

    move-result v0

    .line 499
    if-eqz v0, :cond_1

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isSupportedMmsContent()Z

    move-result v0

    return v0
.end method

.method public isResendAsSmsVisible()Z
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynTextMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isGroupConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->canResendJoynMessageAsXms()Z

    move-result v0

    return v0
.end method

.method public isResendVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 480
    return v1

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isGroupConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    return v1

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynServiceDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    return v1

    .line 488
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isStarStatusEnabled()Z
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarredMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v2, v2, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 445
    :cond_1
    return v1
.end method

.method public isViewRecipientsVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 576
    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    .line 1530
    const/4 v7, 0x1

    .line 1531
    .local v7, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1599
    const/4 v7, 0x0

    .line 1602
    :cond_0
    :goto_0
    return v7

    .line 1536
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    goto :goto_0

    .line 1541
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveAddress()V

    goto :goto_0

    .line 1545
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->sendMessageToNumber()V

    goto :goto_0

    .line 1549
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1550
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1549
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1551
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->checkWriteSettingsAndSetAudioRingtone()V

    goto :goto_0

    .line 1553
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1554
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1555
    new-instance v3, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$8;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$8;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 1553
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0

    .line 1566
    :pswitch_4
    const/4 v0, 0x0

    .line 1567
    .local v0, "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    const-string/jumbo v1, "text/x-vCard"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1568
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$9;

    const-string/jumbo v2, "MessageActionsController_Save_Content"

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$9;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$9;->start()V

    .line 1581
    .end local v0    # "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1582
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1581
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1583
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1574
    .restart local v0    # "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v1, v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_4

    .line 1575
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;

    .end local v0    # "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1576
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mSaveListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    move-object v1, p0

    .line 1575
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;)V

    .local v0, "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    goto :goto_1

    .line 1577
    .local v0, "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v1, v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_2

    .line 1578
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;

    .end local v0    # "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1579
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mSaveListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    move-object v1, p0

    .line 1578
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;)V

    .local v0, "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    goto :goto_1

    .line 1584
    .end local v0    # "saveMmsContentTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    :cond_5
    if-eqz v0, :cond_0

    .line 1585
    move-object v8, v0

    .line 1586
    .local v8, "saveTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1587
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1588
    new-instance v3, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$10;

    invoke-direct {v3, p0, v8}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$10;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/os/AsyncTask;)V

    .line 1586
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto/16 :goto_0

    .line 1531
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public playSlideshow()V
    .locals 5

    .prologue
    .line 1084
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v3, v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_0

    .line 1086
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 1087
    .local v2, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1088
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonyericsson/conversations/ui/SlideshowActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1089
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1091
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1092
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Lcom/google/android/mms/MmsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playSlideshow - failed to get the slideshow for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1097
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    .line 1096
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public replyAll()V
    .locals 6

    .prologue
    .line 824
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v4, v4, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_0

    .line 825
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 826
    .local v1, "msg":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v2

    .line 827
    .local v2, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getAll(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object v3

    .line 828
    .local v3, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 829
    const-class v5, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 828
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 830
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mmsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 832
    invoke-static {v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatAddresses(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 831
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 833
    const-string/jumbo v4, "reply_all_msg_uri"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 823
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "msg":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v2    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .end local v3    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    return-void
.end method

.method public resendJoynAsXms()V
    .locals 24

    .prologue
    .line 967
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v4

    .line 968
    .local v4, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getCachedConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 970
    .local v3, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v3, :cond_4

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v19

    new-instance v20, Lcom/sonyericsson/conversations/model/Participant;

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 972
    invoke-direct/range {v20 .. v21}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetOrCreateThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 980
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shouldShowResendUndeliveredMessageDialog()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    check-cast v19, Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    .line 985
    .local v11, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v19, "resend-joyn-as-xms-dialog"

    .line 984
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 983
    check-cast v5, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;

    .line 986
    .local v5, "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
    if-nez v5, :cond_1

    .line 987
    new-instance v5, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;

    .end local v5    # "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
    invoke-direct {v5}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;-><init>()V

    .line 988
    .restart local v5    # "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v19, "imOne2OneConversationId"

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v20

    .line 989
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 992
    invoke-virtual {v5, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->setArguments(Landroid/os/Bundle;)V

    .line 994
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->isVisible()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;->isAdded()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1001
    .end local v5    # "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
    .end local v11    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v13

    .line 1002
    .local v13, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 1003
    .local v16, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v17

    .line 1005
    .local v17, "message":Lcom/sonymobile/jms/message/ImMessage;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynTextMessage()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v15, v17

    .line 1006
    check-cast v15, Lcom/sonymobile/jms/message/ImTextMessage;

    .line 1007
    .local v15, "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-virtual {v15}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v18

    .line 1009
    .local v18, "msgId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->sendTextMessageAsSmsMessage(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1010
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .end local v15    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v17    # "message":Lcom/sonymobile/jms/message/ImMessage;
    .end local v18    # "msgId":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 974
    .end local v13    # "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .end local v16    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_4
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_0

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v20

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v19

    .line 977
    const/16 v21, 0x0

    .line 976
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonyericsson/conversations/model/Participant;

    .line 975
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetOrCreateThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    goto/16 :goto_0

    .line 995
    .restart local v5    # "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
    .restart local v11    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_5
    invoke-virtual {v11}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v12

    .line 996
    .local v12, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v19, "resend-joyn-as-xms-dialog"

    move-object/from16 v0, v19

    invoke-virtual {v12, v5, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 997
    invoke-virtual {v12}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 1019
    .end local v5    # "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ResendUndeliveredMessageDialog;
    .end local v11    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v12    # "ft":Landroid/app/FragmentTransaction;
    .restart local v13    # "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    .restart local v15    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .restart local v16    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .restart local v17    # "message":Lcom/sonymobile/jms/message/ImMessage;
    .restart local v18    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1020
    .local v9, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v19, "Undelivered TextMessage "

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1021
    const-string/jumbo v20, " could not be deleted for conversation id "

    .line 1020
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1022
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v20

    .line 1020
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    goto :goto_2

    .line 1015
    .end local v9    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_1
    move-exception v7

    .line 1016
    .local v7, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v19, "Undelivered TextMessage "

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1017
    const-string/jumbo v20, " could not be removed from sending queue for conversation id "

    .line 1016
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1018
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v20

    .line 1016
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    goto/16 :goto_2

    .line 1012
    .end local v7    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_2
    move-exception v6

    .line 1013
    .local v6, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v19, "TextMessage could not be converted to SmsMessage: "

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1024
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    .end local v15    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v18    # "msgId":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isJoynFileMessage()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v14, v17

    .line 1025
    check-cast v14, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 1026
    .local v14, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v14}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v18

    .line 1028
    .restart local v18    # "msgId":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->sendFileMessageAsMmsMessage(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1029
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_2

    .line 1031
    :catch_3
    move-exception v6

    .line 1032
    .restart local v6    # "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v19, "File transfer \'"

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1033
    const-string/jumbo v20, "\' failed to convert to MmsMessage"

    .line 1032
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1045
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    :catch_4
    move-exception v9

    .line 1046
    .restart local v9    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v19, "Undelivered FileMessage "

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1047
    const-string/jumbo v20, " could not be deleted for conversation id "

    .line 1046
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1048
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v20

    .line 1046
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    goto/16 :goto_2

    .line 1041
    .end local v9    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_5
    move-exception v7

    .line 1042
    .restart local v7    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v19, "Undelivered FileMessage "

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1043
    const-string/jumbo v20, " could not be removed from sending queue for conversation id "

    .line 1042
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1044
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v20

    .line 1042
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    goto/16 :goto_2

    .line 1037
    .end local v7    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_6
    move-exception v10

    .line 1038
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v19, "Could not extract file size for msg \'"

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1039
    check-cast v17, Lcom/sonymobile/jms/message/ImFileMessage;

    .end local v17    # "message":Lcom/sonymobile/jms/message/ImMessage;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v20

    .line 1038
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1040
    const-string/jumbo v20, "\'!"

    .line 1038
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1034
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v17    # "message":Lcom/sonymobile/jms/message/ImMessage;
    :catch_7
    move-exception v8

    .line 1035
    .local v8, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    const-string/jumbo v19, "Could not extract file information for msg \'"

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    .line 1036
    const-string/jumbo v20, "\'!"

    .line 1035
    invoke-virtual/range {v19 .. v20}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public resendMessage()V
    .locals 4

    .prologue
    .line 1079
    new-instance v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1078
    return-void
.end method

.method public saveVCardContact()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 694
    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/VCardUtil;->saveContact(Landroid/content/Context;Landroid/net/Uri;)V

    .line 693
    :cond_0
    return-void
.end method

.method public sendMessageToNumber()V
    .locals 5

    .prologue
    .line 682
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tel"

    const-string/jumbo v4, "sms"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 687
    .local v1, "smsUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 688
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 689
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    .line 681
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "smsUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setAudioAsRingtone()V
    .locals 6

    .prologue
    .line 1160
    const/4 v1, 0x0

    .line 1162
    .local v1, "savedFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveObject(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1167
    .end local v1    # "savedFile":Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    .line 1168
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    invoke-static {v2, v1, v3}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SingleMediaScanner;->scan(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 1159
    :goto_1
    return-void

    .line 1163
    .restart local v1    # "savedFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1184
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "savedFile":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    .line 1185
    const v3, 0x7f0b009a

    .line 1186
    const/4 v4, 0x0

    .line 1184
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method public setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mDeleteListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;

    .line 1638
    return-void
.end method

.method public shouldSetAudioAsRingtone()Z
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mSetRingtoneOnPermissionResult:Z

    return v0
.end method

.method public showSimCardFullDialog(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "simCardSlotIndex"    # I

    .prologue
    .line 906
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 905
    :cond_0
    return-void
.end method

.method public starMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-eq v0, v3, :cond_0

    .line 769
    const-string/jumbo v0, "starred_messages"

    .line 770
    const-string/jumbo v1, "added"

    .line 769
    invoke-static {v0, v1}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    new-array v1, v3, [Lcom/sonyericsson/conversations/model/Message;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 766
    :cond_1
    return-void
.end method

.method public viewObject()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 580
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 581
    return-void

    .line 584
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v5, "tel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isVoiceCapable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 588
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 589
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 590
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 589
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 590
    const-string/jumbo v4, "file"

    .line 591
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 588
    if-eqz v4, :cond_4

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->canScanImageWithMediaScanner()Z

    move-result v4

    .line 588
    if-eqz v4, :cond_4

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    new-instance v2, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;

    invoke-direct {v2, p0, v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;)V

    .line 596
    .local v2, "mediaScannerConnectionClient":Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->setFilename(Ljava/lang/String;)V

    .line 597
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 599
    .local v0, "connection":Landroid/media/MediaScannerConnection;
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->setConnection(Landroid/media/MediaScannerConnection;)V

    .line 600
    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;->setIntent(Landroid/content/Intent;)V

    .line 601
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 579
    .end local v0    # "connection":Landroid/media/MediaScannerConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mediaScannerConnectionClient":Lcom/sonyericsson/conversations/ui/util/MessageActionsController$ImageMediaScanner;
    :goto_0
    return-void

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->sendMessageToNumber()V

    goto :goto_0

    .line 603
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mScheme:Ljava/lang/String;

    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 604
    :goto_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getViewActionIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    .line 606
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mObjectUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 608
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->performAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x0

    .local v3, "shouldAddApplicationId":Z
    goto :goto_1
.end method
