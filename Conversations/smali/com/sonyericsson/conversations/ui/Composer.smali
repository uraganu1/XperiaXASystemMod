.class public Lcom/sonyericsson/conversations/ui/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;,
        Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;,
        Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;,
        Lcom/sonyericsson/conversations/ui/Composer$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

.field private static final DEBUG:Z

.field private static sBackgroundThread:Landroid/os/HandlerThread;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private mDirty:Z

.field private mDraft:Lcom/sonyericsson/conversations/draft/Draft;

.field private mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

.field private mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

.field private mForcedMessageType:I

.field private mHoldsUnhandlableContent:Z

.field private mIsComposerImFileTransferCapable:Z

.field private mIsComposerImTextCapable:Z

.field private mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

.field private mMessagePriority:I

.field private mMessageTypeBasedOnComposerType:I

.field private mMmsMaxSizeInBytes:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

.field private mSubject:Ljava/lang/String;

.field private mSubjectIsFixed:Z

.field private mText:Ljava/lang/String;

.field private mTriggerRecipients:I

.field private mUpdateMessageTypeRunnable:Ljava/lang/Runnable;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->values()[Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    .line 255
    new-instance v0, Landroid/os/HandlerThread;

    .line 256
    const-string/jumbo v1, "Background handler thread."

    .line 255
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/Composer;->sBackgroundThread:Landroid/os/HandlerThread;

    .line 259
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "encodingListener"    # Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 207
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubjectIsFixed:Z

    .line 209
    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 219
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->createDefault()Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    .line 230
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    .line 239
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 244
    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 262
    new-instance v1, Lcom/sonyericsson/conversations/ui/Composer$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/Composer$1;-><init>(Lcom/sonyericsson/conversations/ui/Composer;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mUpdateMessageTypeRunnable:Ljava/lang/Runnable;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 279
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 281
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v1, v2, :cond_0

    .line 282
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 284
    :cond_0
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    .line 288
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerRecipients()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerRecipients:I

    .line 289
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMmsMaxSizeInBytes:I

    .line 290
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer;->sBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 291
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 292
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mBackgroundHandler:Landroid/os/Handler;

    .line 276
    :cond_1
    return-void
.end method

.method private addMedia(Lcom/android/mms/model/MediaModel;ZZ)V
    .locals 1
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;
    .param p2, "isXmsSendingTechnology"    # Z
    .param p3, "notifyListeners"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 982
    :cond_0
    if-nez p2, :cond_3

    instance-of v0, p1, Lcom/android/mms/model/VideoModel;

    :goto_0
    if-nez v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->checkMediaContentRestriction(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/SlideshowModel;Z)V

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addMediaModel(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/SlideshowModel;)V

    .line 988
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->moveLocationToLastSlide()V

    .line 989
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->moveTextToLastSlide()V

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 994
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 995
    invoke-virtual {p0, p3}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V

    .line 997
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMultipleSlides()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 998
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->createDuplicateFiles()V

    .line 975
    :cond_2
    return-void

    .line 982
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addMediaModel(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 1027
    invoke-static {p2}, Lcom/sonyericsson/conversations/ui/Composer;->getOrAddSlideForMedia(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1029
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    instance-of v2, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v2, :cond_0

    .line 1030
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 1033
    :cond_0
    instance-of v2, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_1

    .line 1034
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 1037
    :cond_1
    instance-of v2, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1038
    check-cast v0, Lcom/android/mms/model/RegionMediaModel;

    .line 1039
    .local v0, "mediaModel":Lcom/android/mms/model/RegionMediaModel;
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionMediaModel;->setRegion(Lcom/android/mms/model/RegionModel;)V

    .line 1042
    .end local v0    # "mediaModel":Lcom/android/mms/model/RegionMediaModel;
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1026
    return-void
.end method

.method private addTextModel()V
    .locals 7

    .prologue
    .line 872
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getOrAddSlideForText(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 874
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 875
    .local v2, "textModel":Lcom/android/mms/model/TextModel;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 876
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 883
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 884
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 871
    :cond_1
    :goto_1
    return-void

    .line 875
    :cond_2
    const/4 v0, 0x0

    .local v0, "oldText":Ljava/lang/String;
    goto :goto_0

    .line 878
    .end local v0    # "oldText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 879
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2    # "textModel":Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "text/plain"

    const-string/jumbo v5, "text_0.txt"

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 881
    .restart local v2    # "textModel":Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_1
.end method

.method private addTextToSlideshow()V
    .locals 6

    .prologue
    .line 1411
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1412
    :cond_0
    return-void

    .line 1415
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getOrAddSlideForText(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1416
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 1417
    .local v1, "text":Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1410
    :goto_0
    return-void

    .line 1419
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1420
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 1421
    new-instance v1, Lcom/android/mms/model/TextModel;

    .end local v1    # "text":Lcom/android/mms/model/TextModel;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "text/plain"

    const-string/jumbo v4, "text_0.txt"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1423
    .restart local v1    # "text":Lcom/android/mms/model/TextModel;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0
.end method

.method private bodyIsHandlable(Lcom/google/android/mms/pdu/PduBody;Z)Z
    .locals 11
    .param p1, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .param p2, "hasLocation"    # Z

    .prologue
    const/4 v10, 0x2

    .line 2271
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 2272
    .local v6, "nbrOfPduParts":I
    invoke-static {p2}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects(Z)I

    move-result v3

    .line 2275
    .local v3, "maxNbrOfMediaItems":I
    add-int/lit8 v8, v3, 0x2

    if-gt v6, v8, :cond_2

    const/4 v2, 0x1

    .line 2277
    .local v2, "isHandlable":Z
    :goto_0
    if-eqz v2, :cond_7

    .line 2282
    const/4 v1, 0x0

    .line 2283
    .local v1, "index":I
    const/4 v4, 0x0

    .line 2284
    .local v4, "nbrOfHandlableMediaobjects":I
    const/4 v5, 0x0

    .line 2286
    .local v5, "nbrOfHandlableNonMediaItems":I
    :goto_1
    if-eqz v2, :cond_7

    if-ge v1, v6, :cond_7

    .line 2287
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 2289
    .local v7, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2290
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isSupportedImageType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2291
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isSupportedVideoType(Ljava/lang/String;)Z

    move-result v8

    .line 2290
    if-nez v8, :cond_0

    .line 2292
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isSupportedAudioType(Ljava/lang/String;)Z

    move-result v8

    .line 2290
    if-nez v8, :cond_0

    .line 2293
    const-string/jumbo v8, "application/ogg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 2290
    if-nez v8, :cond_0

    .line 2294
    const-string/jumbo v8, "audio/ogg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 2290
    if-nez v8, :cond_0

    .line 2295
    const-string/jumbo v8, "text/x-vCard"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 2290
    if-nez v8, :cond_0

    .line 2296
    const-string/jumbo v8, "text/x-vCalendar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 2290
    if-eqz v8, :cond_4

    .line 2297
    :cond_0
    if-nez p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    if-le v4, v3, :cond_3

    .line 2299
    :goto_2
    const/4 v2, 0x0

    .line 2300
    sget-boolean v8, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 2301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Alien content found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2314
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2275
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "isHandlable":Z
    .end local v4    # "nbrOfHandlableMediaobjects":I
    .end local v5    # "nbrOfHandlableNonMediaItems":I
    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isHandlable":Z
    goto :goto_0

    .line 2298
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v4    # "nbrOfHandlableMediaobjects":I
    .restart local v5    # "nbrOfHandlableNonMediaItems":I
    .restart local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_3
    if-eqz p2, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v3, 0x1

    if-le v4, v8, :cond_1

    goto :goto_2

    .line 2304
    :cond_4
    const-string/jumbo v8, "application/smil"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2305
    const-string/jumbo v8, "text/plain"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 2304
    if-eqz v8, :cond_6

    .line 2306
    :cond_5
    add-int/lit8 v5, v5, 0x1

    if-le v5, v10, :cond_1

    .line 2307
    const/4 v2, 0x0

    goto :goto_3

    .line 2310
    :cond_6
    const/4 v2, 0x0

    .line 2311
    sget-boolean v8, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 2312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Alien content found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 2317
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v4    # "nbrOfHandlableMediaobjects":I
    .end local v5    # "nbrOfHandlableNonMediaItems":I
    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_7
    return v2
.end method

.method private calculateImageSize(Landroid/net/Uri;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 329
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 330
    .local v0, "imageToBeAddedSize":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v1

    .line 332
    .local v1, "maxMessageSize":I
    if-ge v0, v1, :cond_0

    .end local v0    # "imageToBeAddedSize":I
    :goto_0
    return v0

    .restart local v0    # "imageToBeAddedSize":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private checkMediaContentRestriction(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/SlideshowModel;Z)V
    .locals 5
    .param p1, "media"    # Lcom/android/mms/model/MediaModel;
    .param p2, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p3, "isXmsSendingTechnology"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1006
    instance-of v2, p1, Lcom/android/mms/model/TextModel;

    if-eqz v2, :cond_0

    .line 1007
    return-void

    .line 1012
    :cond_0
    if-eqz p3, :cond_1

    .line 1013
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 1014
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 1013
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .line 1021
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :goto_0
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v1, v2, :cond_2

    .line 1022
    new-instance v2, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;-><init>(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    throw v2

    .line 1016
    .end local v1    # "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 1017
    sget-object v4, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 1016
    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 1018
    .local v0, "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .restart local v1    # "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    goto :goto_0

    .line 1004
    .end local v0    # "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    :cond_2
    return-void
.end method

.method private checkforUnhandlableContent(Lcom/android/mms/model/SlideshowModel;)V
    .locals 8
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2226
    iget v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    if-ne v6, v5, :cond_7

    .line 2227
    const/4 v2, 0x1

    .line 2229
    .local v2, "isHandlable":Z
    if-eqz p1, :cond_2

    .line 2230
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->hasLocationContent()Z

    move-result v0

    .line 2233
    .local v0, "hasLocation":Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects(Z)I

    move-result v7

    if-le v6, v7, :cond_0

    .line 2234
    const/4 v2, 0x0

    .line 2239
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 2240
    .local v3, "nbrSlides":I
    if-eqz v2, :cond_1

    if-le v3, v5, :cond_1

    .line 2242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v1, v6, :cond_1

    .line 2243
    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2244
    const/4 v2, 0x0

    .line 2250
    .end local v1    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 2251
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/sonyericsson/conversations/ui/Composer;->bodyIsHandlable(Lcom/google/android/mms/pdu/PduBody;Z)Z

    move-result v2

    .line 2254
    .end local v0    # "hasLocation":Z
    .end local v2    # "isHandlable":Z
    .end local v3    # "nbrSlides":I
    :cond_2
    sget-boolean v6, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 2255
    if-eqz v2, :cond_5

    .line 2256
    const-string/jumbo v6, "No unhandlable content found"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2261
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    :goto_2
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 2217
    :goto_3
    return-void

    .line 2242
    .restart local v0    # "hasLocation":Z
    .restart local v1    # "i":I
    .restart local v2    # "isHandlable":Z
    .restart local v3    # "nbrSlides":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    .end local v0    # "hasLocation":Z
    .end local v1    # "i":I
    .end local v2    # "isHandlable":Z
    .end local v3    # "nbrSlides":I
    :cond_5
    const-string/jumbo v6, "Unhandlable content found"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v4, v5

    .line 2261
    goto :goto_2

    .line 2264
    :cond_7
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    goto :goto_3
.end method

.method private composeJoynMessageFromSlideshow()Lcom/sonyericsson/conversations/model/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 803
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->convertSlideshowBasedOnMessageType(Lcom/android/mms/model/SlideshowModel;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 802
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 804
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 805
    .local v1, "message":Lcom/sonyericsson/conversations/model/Message;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    move-object v0, v1

    .line 807
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 808
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->setData(Ljava/lang/String;)V

    .line 810
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->addTextModel()V

    .line 814
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->removeLocationVCardAttachmentModelIfAny(Lcom/android/mms/model/SlideshowModel;)V

    .line 816
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 817
    return-object v0
.end method

.method private composeMmsMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 822
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v4, :cond_0

    .line 823
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 827
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    sget-object v5, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/conversations/ui/Composer;->convertSlideshowBasedOnMessageType(Lcom/android/mms/model/SlideshowModel;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 826
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 828
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/model/MmsMessage;->createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v2

    .line 829
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    iput-boolean v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 831
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->addTextModel()V

    .line 833
    iput v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 835
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getMediaModelUriList()Ljava/util/List;

    move-result-object v3

    .line 836
    .local v3, "mmsUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 839
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getMediaModelUriList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 840
    sget-object v6, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 839
    invoke-direct {v0, v4, v5, v6}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 841
    .local v0, "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->hasLocationContent()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .line 842
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    sget-object v4, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v1, v4, :cond_1

    .line 843
    new-instance v4, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;

    invoke-direct {v4, v1}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;-><init>(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    throw v4

    .line 847
    .end local v0    # "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    .end local v1    # "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :cond_1
    return-object v2
.end method

.method private composeSmsMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 851
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 852
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 854
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v0

    .line 858
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    move-object v1, v0

    .line 860
    check-cast v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 862
    .local v1, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    iput-object v2, v1, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 864
    return-object v1

    .line 867
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v1    # "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_0
    return-object v3
.end method

.method private convertSlideshowBasedOnMessageType(Lcom/android/mms/model/SlideshowModel;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 19
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p2, "sendingTechnology"    # Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 892
    sget-object v16, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    .line 894
    .local v6, "isXmsSendingTechnology":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->getContentRestrictionType(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    move-result-object v2

    .line 895
    .local v2, "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v13

    .line 897
    .local v13, "tempSlideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/SlideModel;

    .line 898
    .local v11, "slide":Lcom/android/mms/model/SlideModel;
    const/4 v8, 0x0

    .line 899
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    const/4 v15, 0x0

    .line 901
    .local v15, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 902
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1, v2, v6}, Lcom/sonyericsson/conversations/ui/Composer;->createImageModel(Lcom/android/mms/model/SlideModel;Landroid/content/Context;Lcom/android/mms/model/MediaModel$ContentRestrictionType;Z)Lcom/android/mms/model/ImageModel;

    move-result-object v8

    .line 917
    .end local v8    # "model":Lcom/android/mms/model/MediaModel;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_2
    if-eqz v8, :cond_0

    .line 920
    if-nez v6, :cond_8

    instance-of v0, v8, Lcom/android/mms/model/VideoModel;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 923
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/sonyericsson/conversations/ui/Composer;->addMediaModel(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 925
    :catch_0
    move-exception v10

    .line 926
    .local v10, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    sget-boolean v16, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 927
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Resize error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 929
    :cond_2
    throw v10

    .line 892
    .end local v2    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .end local v6    # "isXmsSendingTechnology":Z
    .end local v10    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .end local v11    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v12    # "slide$iterator":Ljava/util/Iterator;
    .end local v13    # "tempSlideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "isXmsSendingTechnology":Z
    goto :goto_0

    .line 904
    .restart local v2    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .restart local v8    # "model":Lcom/android/mms/model/MediaModel;
    .restart local v11    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v12    # "slide$iterator":Ljava/util/Iterator;
    .restart local v13    # "tempSlideshow":Lcom/android/mms/model/SlideshowModel;
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_1
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 905
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 906
    .local v15, "uri":Landroid/net/Uri;
    new-instance v9, Lcom/android/mms/model/VideoModel;

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v15, v1, v2}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .local v9, "model":Lcom/android/mms/model/MediaModel;
    move-object v8, v9

    .end local v9    # "model":Lcom/android/mms/model/MediaModel;
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    goto :goto_2

    .line 907
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    .local v15, "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 908
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 909
    .local v15, "uri":Landroid/net/Uri;
    new-instance v9, Lcom/android/mms/model/AudioModel;

    move-object/from16 v0, p3

    invoke-direct {v9, v0, v15, v2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .restart local v9    # "model":Lcom/android/mms/model/MediaModel;
    move-object v8, v9

    .end local v9    # "model":Lcom/android/mms/model/MediaModel;
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    goto :goto_2

    .line 910
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    .local v15, "uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 911
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 912
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v8

    .local v8, "model":Lcom/android/mms/model/MediaModel;
    goto :goto_2

    .line 913
    .local v8, "model":Lcom/android/mms/model/MediaModel;
    .local v15, "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 914
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v8

    .local v8, "model":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_2

    .line 921
    .end local v8    # "model":Lcom/android/mms/model/MediaModel;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v6}, Lcom/sonyericsson/conversations/ui/Composer;->checkMediaContentRestriction(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/SlideshowModel;Z)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 930
    :catch_1
    move-exception v5

    .line 931
    .local v5, "io":Ljava/io/IOException;
    new-instance v16, Lcom/google/android/mms/MmsException;

    const-string/jumbo v17, "Could not add media"

    invoke-direct/range {v16 .. v17}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 935
    .end local v5    # "io":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 936
    .local v3, "cr":Lcom/android/mms/ContentRestrictionException;
    const-string/jumbo v4, "Media content restrictions: "

    .line 937
    .local v4, "exceptionText":Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 938
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    :cond_9
    new-instance v16, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 932
    .end local v3    # "cr":Lcom/android/mms/ContentRestrictionException;
    .end local v4    # "exceptionText":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 933
    .local v14, "uct":Lcom/android/mms/UnsupportContentTypeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 934
    .local v7, "mimeType":Ljava/lang/String;
    new-instance v16, Lcom/google/android/mms/MmsException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unsupported media type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 943
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v11    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v14    # "uct":Lcom/android/mms/UnsupportContentTypeException;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMedia()V

    .line 945
    return-object v13
.end method

.method private createCorrectMediaModelAndAttachToComposer(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v8, 0x0

    .line 1654
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1655
    .local v4, "uri":Landroid/net/Uri;
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_0

    .line 1656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Draft URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1658
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1660
    .local v3, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-eqz v6, :cond_1

    .line 1662
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/file/UnableToResizeImageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/file/UnableToDecodeImageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1664
    :catch_0
    move-exception v1

    .line 1665
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not attach picture: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1674
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1675
    .local v0, "e":Lcom/google/android/mms/MmsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not attach: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1676
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 1677
    const v7, 0x7f0b021d

    .line 1676
    invoke-static {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1667
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    :try_start_3
    invoke-static {v3}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1668
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1679
    :catch_2
    move-exception v2

    .line 1680
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not attach: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1682
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1683
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 1684
    const v7, 0x7f0b021e

    .line 1683
    invoke-static {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1669
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_4
    invoke-static {v3}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1670
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 1672
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1653
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    return-void
.end method

.method private createDuplicateFiles()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v12, "filenamesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/SlideModel;

    .line 421
    .local v17, "slide":Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/MediaModel;

    .line 422
    .local v13, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    .line 423
    .local v11, "filename":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "newFilename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 427
    .local v5, "tempFileUri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 427
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/FileUtil;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 429
    .local v10, "filePath":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to copy the file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v4    # "newFilename":Ljava/lang/String;
    .end local v10    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 442
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to rename the file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 445
    .end local v5    # "tempFileUri":Landroid/net/Uri;
    .end local v8    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v5, :cond_1

    .line 446
    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    new-instance v1, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v7

    const/4 v6, 0x0

    .line 447
    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 460
    :cond_1
    :goto_2
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    .restart local v4    # "newFilename":Ljava/lang/String;
    .restart local v5    # "tempFileUri":Landroid/net/Uri;
    .restart local v10    # "filePath":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v15, "originalFile":Ljava/io/File;
    const-string/jumbo v16, "mms"

    .line 435
    .local v16, "prefix":Ljava/lang/String;
    const-string/jumbo v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 437
    .local v9, "extension":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 436
    move-object/from16 v0, v16

    invoke-static {v0, v9, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 438
    .local v19, "tempFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "newFilename":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/sonyericsson/conversations/stickers/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 440
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .local v5, "tempFileUri":Landroid/net/Uri;
    goto :goto_1

    .line 449
    .end local v4    # "newFilename":Ljava/lang/String;
    .end local v5    # "tempFileUri":Landroid/net/Uri;
    .end local v9    # "extension":Ljava/lang/String;
    .end local v10    # "filePath":Ljava/lang/String;
    .end local v15    # "originalFile":Ljava/io/File;
    .end local v16    # "prefix":Ljava/lang/String;
    .end local v19    # "tempFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 450
    new-instance v1, Lcom/android/mms/model/VideoModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 451
    const/4 v6, 0x0

    .line 450
    invoke-direct/range {v1 .. v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_2

    .line 452
    :cond_4
    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 453
    new-instance v1, Lcom/android/mms/model/AudioModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_2

    .line 455
    :cond_5
    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->isAttachment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_2

    .line 462
    :cond_6
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 418
    .end local v11    # "filename":Ljava/lang/String;
    .end local v13    # "media":Lcom/android/mms/model/MediaModel;
    .end local v14    # "media$iterator":Ljava/util/Iterator;
    .end local v17    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_7
    return-void
.end method

.method private createImageModel(Lcom/android/mms/model/SlideModel;Landroid/content/Context;Lcom/android/mms/model/MediaModel$ContentRestrictionType;Z)Lcom/android/mms/model/ImageModel;
    .locals 17
    .param p1, "slide"    # Lcom/android/mms/model/SlideModel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contentRestrictionType"    # Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .param p4, "isXmsSendingTechnology"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v15

    .line 953
    .local v15, "oldImageModel":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v15}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 954
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v7

    .line 955
    .local v7, "isLocation":Z
    if-eqz p4, :cond_1

    invoke-virtual {v15}, Lcom/android/mms/model/ImageModel;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->calculateImageSize(Landroid/net/Uri;)I

    move-result v6

    .line 958
    .local v6, "imageSize":I
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 959
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->reCalculateImageSize(I)I

    move-result v6

    .line 963
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    const/4 v5, 0x1

    .line 964
    const/4 v8, 0x1

    move-object/from16 v1, p2

    .line 962
    invoke-static/range {v1 .. v8}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;

    move-result-object v16

    .line 966
    .local v16, "resizedUri":Landroid/net/Uri;
    if-eqz v16, :cond_1

    .line 967
    move-object/from16 v2, v16

    .line 970
    .end local v6    # "imageSize":I
    .end local v16    # "resizedUri":Landroid/net/Uri;
    :cond_1
    new-instance v8, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v15}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v13

    const/4 v11, 0x0

    move-object/from16 v9, p2

    move-object v10, v2

    move v12, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    return-object v8
.end method

.method private createMmsSubjectText(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1773
    const/4 v0, 0x0

    .line 1775
    .local v0, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1778
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->getTextBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1781
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->getContentBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .end local v0    # "subject":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1786
    if-eqz p2, :cond_1

    .line 1788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1793
    :cond_1
    :goto_0
    return-object v0

    .line 1791
    :cond_2
    const-string/jumbo v0, ""

    .restart local v0    # "subject":Ljava/lang/String;
    goto :goto_0
.end method

.method private declared-synchronized deleteAllMedia()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 1483
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1484
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1486
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 1487
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 1488
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 1489
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAttachment()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v1    # "slide$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    .line 1481
    return-void
.end method

.method private determineIfNeedsMms()Z
    .locals 3

    .prologue
    .line 1325
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1326
    const/4 v0, 0x1

    .line 1370
    :cond_0
    :goto_0
    return v0

    .line 1327
    :cond_1
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    if-nez v1, :cond_2

    .line 1328
    const/4 v0, 0x0

    .local v0, "needsMms":Z
    goto :goto_0

    .line 1331
    .end local v0    # "needsMms":Z
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->shouldUseGroupMms()Z

    move-result v0

    .line 1335
    .local v0, "needsMms":Z
    if-nez v0, :cond_3

    .line 1336
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isFirstSlideMedia()Z

    move-result v0

    .line 1343
    :cond_3
    if-nez v0, :cond_4

    .line 1344
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMultipleSlides()Z

    move-result v0

    .line 1348
    :cond_4
    if-nez v0, :cond_5

    .line 1349
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMultipleRecipients()Z

    move-result v0

    .line 1353
    :cond_5
    if-nez v0, :cond_6

    .line 1354
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasEmailRecipient()Z

    move-result v0

    .line 1359
    :cond_6
    if-nez v0, :cond_7

    .line 1360
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSubject()Z

    move-result v0

    .line 1365
    :cond_7
    if-nez v0, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->exceedsSmsCapability(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private exceedsSmsCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1237
    const/4 v1, 0x0

    return v1

    .line 1239
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->fromText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v0

    .line 1240
    .local v0, "smsCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->isTextTooLong()Z

    move-result v1

    return v1
.end method

.method private findSlideForMedia(Lcom/android/mms/model/MediaModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .param p1, "mediaModel"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v5, 0x0

    .line 1554
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 1555
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1559
    .local v3, "slideIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1560
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1561
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1562
    .local v1, "mediaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/MediaModel;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1563
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1564
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {p1, v0}, Lcom/android/mms/model/MediaModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1565
    return-object v2

    .line 1570
    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    .end local v1    # "mediaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/MediaModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_2
    return-object v5
.end method

.method private generateSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, "mmsSubject":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1726
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubjectIsFixed:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isAutoCreateSubjectEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1727
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->createMmsSubjectText(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "mmsSubject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1732
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->generateSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1736
    .end local v0    # "mmsSubject":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 1724
    .local v0, "mmsSubject":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 1722
    .local v0, "mmsSubject":Ljava/lang/String;
    goto :goto_0
.end method

.method private getContentBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;
    .locals 10
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 1827
    const/4 v6, 0x0

    .line 1828
    .local v6, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1829
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 1832
    .local v4, "nbrSlides":I
    const/4 v2, 0x0

    .end local v6    # "subject":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1833
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 1834
    .local v5, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImageExcludingLocationImage()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1835
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 1836
    .local v3, "image":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1837
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1838
    .local v6, "subject":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1868
    .end local v2    # "i":I
    .end local v3    # "image":Lcom/android/mms/model/ImageModel;
    .end local v4    # "nbrSlides":I
    .end local v5    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v6

    .line 1842
    .restart local v2    # "i":I
    .restart local v4    # "nbrSlides":I
    .restart local v5    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1843
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    .line 1844
    .local v1, "audio":Lcom/android/mms/model/AudioModel;
    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1845
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    .restart local v6    # "subject":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1850
    .end local v1    # "audio":Lcom/android/mms/model/AudioModel;
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1851
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v8

    .line 1852
    .local v8, "video":Lcom/android/mms/model/VideoModel;
    invoke-virtual {v8}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1853
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1854
    .restart local v6    # "subject":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1858
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "video":Lcom/android/mms/model/VideoModel;
    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1859
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    .line 1860
    .local v0, "attachment":Lcom/sonyericsson/conversations/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 1861
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1862
    .restart local v6    # "subject":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1832
    .end local v0    # "attachment":Lcom/sonyericsson/conversations/model/AttachmentModel;
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getContentRestrictionType(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .locals 2
    .param p1, "sendingTechnology"    # Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .prologue
    .line 1375
    invoke-static {}, Lcom/sonyericsson/conversations/ui/Composer;->-getcom_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1382
    :pswitch_0
    sget-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    return-object v0

    .line 1377
    :pswitch_1
    sget-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    return-object v0

    .line 1379
    :pswitch_2
    sget-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->JOYN_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    return-object v0

    .line 1375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getMsgTypeBasedOnComposerCapabilities(ZZZ)I
    .locals 3
    .param p1, "hasText"    # Z
    .param p2, "hasMedia"    # Z
    .param p3, "hasSubject"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    .line 1267
    if-eqz p3, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasParticipants()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1269
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->determineIfNeedsMms()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1272
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_5

    .line 1273
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImFileTransferCapable:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_5

    .line 1274
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p1, :cond_6

    .line 1275
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImFileTransferCapable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    .line 1272
    if-eqz p2, :cond_7

    .line 1277
    :cond_5
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 1274
    :cond_6
    if-eqz p2, :cond_5

    goto :goto_1

    .line 1280
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->determineIfNeedsMms()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    monitor-exit p0

    return v0

    :cond_8
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMsgTypeBasedOnSendingTechAndComposerCapabilities()I
    .locals 6

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 1245
    .local v2, "hasText":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    .line 1246
    .local v0, "hasMedia":Z
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSubject()Z

    move-result v1

    .line 1248
    .local v1, "hasSubject":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v3

    .line 1253
    .local v3, "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/Composer;->-getcom_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1261
    :pswitch_0
    invoke-direct {p0, v2, v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMsgTypeBasedOnComposerCapabilities(ZZZ)I

    move-result v4

    return v4

    .line 1244
    .end local v0    # "hasMedia":Z
    .end local v1    # "hasSubject":Z
    .end local v2    # "hasText":Z
    .end local v3    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "hasText":Z
    goto :goto_0

    .line 1248
    .restart local v0    # "hasMedia":Z
    .restart local v1    # "hasSubject":Z
    :cond_2
    if-nez v1, :cond_0

    .line 1249
    const/4 v4, -0x1

    return v4

    .line 1255
    .restart local v3    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->determineIfNeedsMms()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1256
    const/4 v4, 0x1

    .line 1255
    :goto_1
    return v4

    .line 1256
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1258
    :pswitch_2
    const/4 v4, 0x2

    return v4

    .line 1253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getOrAddSlideForMedia(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;
    .locals 4
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 168
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 169
    .local v0, "s":Lcom/android/mms/model/SlideModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    return-object v0

    .line 176
    .end local v0    # "s":Lcom/android/mms/model/SlideModel;
    :cond_1
    new-instance v2, Lcom/android/mms/model/SlideModel;

    invoke-direct {v2, p0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 177
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 179
    return-object v2
.end method

.method private static getOrAddSlideForText(Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideModel;
    .locals 3
    .param p0, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, p0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 149
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 154
    :goto_0
    return-object v1

    .line 151
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 152
    .local v0, "nbrSlides":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .restart local v1    # "slide":Lcom/android/mms/model/SlideModel;
    goto :goto_0
.end method

.method private getSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    .locals 6

    .prologue
    .line 1285
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v4, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v3, v4, :cond_0

    .line 1286
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1287
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v4, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v3, v4, :cond_1

    .line 1288
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1291
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    .line 1292
    .local v0, "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/Composer;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1316
    new-instance v3, Ljava/security/InvalidParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown conversation type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1294
    :pswitch_0
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1296
    :pswitch_1
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1303
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v1

    .line 1304
    .local v1, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1309
    .end local v1    # "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    :pswitch_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v2

    .line 1310
    .local v2, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v3

    .line 1311
    sget-object v4, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 1310
    if-ne v3, v4, :cond_4

    .line 1312
    :cond_2
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1306
    .end local v2    # "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .restart local v1    # "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    :cond_3
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1314
    .end local v1    # "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    .restart local v2    # "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    :cond_4
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    return-object v3

    .line 1292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getSubjectFromContentUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1885
    if-nez p1, :cond_0

    .line 1886
    return-object v3

    .line 1889
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1890
    .local v9, "scheme":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 1891
    return-object v3

    .line 1894
    :cond_1
    const/4 v11, 0x0

    .line 1895
    .local v11, "subject":Ljava/lang/String;
    const-string/jumbo v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1898
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 1899
    .local v7, "filename":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1933
    .end local v7    # "filename":Ljava/lang/String;
    .end local v11    # "subject":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v11

    .line 1900
    .restart local v11    # "subject":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1903
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1904
    .local v10, "ssp":Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string/jumbo v0, "//mms/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1908
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->getSubjectFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "subject":Ljava/lang/String;
    goto :goto_0

    .line 1910
    .local v11, "subject":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 1911
    const-string/jumbo v0, "_display_name"

    aput-object v0, v2, v1

    .line 1914
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1916
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1918
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1919
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1921
    .restart local v7    # "filename":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1920
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1922
    .local v11, "subject":Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 1923
    .local v8, "index":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    .line 1924
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1928
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v11    # "subject":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1927
    :catchall_0
    move-exception v0

    .line 1928
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1927
    throw v0
.end method

.method private getSubjectFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1940
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, "subject":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1942
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1943
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1949
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-object v1

    .line 1946
    .end local v1    # "subject":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    .restart local v1    # "subject":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTextBasedSubject(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;
    .locals 8
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v7, 0x0

    .line 1799
    const/4 v3, 0x0

    .line 1800
    .local v3, "subject":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1801
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1806
    .local v1, "nbrSlides":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1807
    invoke-virtual {p1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1808
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1809
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1810
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1812
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1814
    .local v3, "subject":Ljava/lang/String;
    const-string/jumbo v5, "\\r\\n|\\r|\\n"

    const-string/jumbo v6, " "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1815
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1821
    .end local v0    # "i":I
    .end local v1    # "nbrSlides":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 1806
    .restart local v0    # "i":I
    .restart local v1    # "nbrSlides":I
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .local v3, "subject":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private hasEmailRecipient()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1228
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasEmailParticipants()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasMultipleRecipients()Z
    .locals 2

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1224
    .local v0, "size":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mTriggerRecipients:I

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleSlides()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1214
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hasSlideshow()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSubject()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1232
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCurrentContentImCompatible()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 748
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImFileTransferCapable:Z

    if-eqz v0, :cond_1

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasParticipants()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 753
    return v1

    .line 749
    :cond_1
    return v1

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z

    if-eqz v0, :cond_5

    .line 758
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImFileTransferCapable:Z

    if-eqz v0, :cond_6

    .line 761
    :cond_4
    return v2

    .line 756
    :cond_5
    return v1

    .line 759
    :cond_6
    return v1
.end method

.method private isFirstSlideMedia()Z
    .locals 4

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1203
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return v0

    .line 1204
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1205
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUserDefinedSubject(Ljava/lang/String;)Z
    .locals 2
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1872
    if-eqz p0, :cond_0

    const-string/jumbo v1, " \t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveLocationToLastSlide()V
    .locals 4

    .prologue
    .line 1046
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    .line 1048
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1049
    .local v1, "nbrSlides":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 1050
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1051
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1052
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 1053
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 1045
    .end local v0    # "i":I
    .end local v1    # "nbrSlides":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void

    .line 1049
    .restart local v0    # "i":I
    .restart local v1    # "nbrSlides":I
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private moveTextToLastSlide()V
    .locals 6

    .prologue
    .line 1100
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 1102
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1103
    .local v1, "nbrSlides":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 1104
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1105
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1106
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 1107
    .local v3, "text":Lcom/android/mms/model/TextModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 1109
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1110
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1099
    .end local v0    # "i":I
    .end local v1    # "nbrSlides":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    return-void

    .line 1103
    .restart local v0    # "i":I
    .restart local v1    # "nbrSlides":I
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyTheListener(ILcom/sonyericsson/conversations/ui/SmsCounterInfo;Lcom/sonyericsson/conversations/ui/SmsCounterInfo;)V
    .locals 5
    .param p1, "oldMessageType"    # I
    .param p2, "oldInfo"    # Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    .param p3, "newInfo"    # Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    .prologue
    .line 1387
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    if-eq p1, v1, :cond_0

    .line 1389
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 1390
    .local v0, "newType":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v1, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->messageTypeChanged(II)V

    .line 1392
    .end local v0    # "newType":I
    :cond_0
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    if-nez v1, :cond_1

    .line 1393
    invoke-virtual {p3, p2}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1402
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    if-nez v1, :cond_2

    .line 1403
    invoke-virtual {p3}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getEncoding()I

    move-result v1

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getEncoding()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1404
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getEncoding()I

    move-result v2

    invoke-virtual {p3}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getEncoding()I

    move-result v3

    .line 1405
    invoke-virtual {p3}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getSegmentSize()I

    move-result v4

    .line 1404
    invoke-interface {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;->onEncodingChanged(III)V

    .line 1386
    :cond_2
    return-void

    .line 1400
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    invoke-interface {v1, p3}, Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;->smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/SmsCounterInfo;)V

    goto :goto_0
.end method

.method private reCalculateImageSize(I)I
    .locals 1
    .param p1, "nbrOfImagesNotInSlideshow"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->reCalculateImageSize(II)I

    move-result v0

    return v0
.end method

.method private reCalculateImageSize(II)I
    .locals 9
    .param p1, "nbrOfImagesNotInSlideshow"    # I
    .param p2, "newUnresizeableContentSize"    # I

    .prologue
    .line 345
    const/4 v6, 0x0

    .line 346
    .local v6, "totalImageSize":I
    const/4 v3, 0x0

    .line 347
    .local v3, "nbrOfExistingImages":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    .line 351
    .local v2, "maxMessageSize":I
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 352
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->isResizeable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    add-int/lit8 v3, v3, 0x1

    .line 354
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v7

    add-int/2addr v6, v7

    .line 355
    sget-boolean v7, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found image with size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    sget-boolean v7, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " images with total size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 362
    const-string/jumbo v8, " bytes"

    .line 361
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 367
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    add-int/2addr v7, p2

    sub-int v0, v7, v6

    .line 368
    .local v0, "currentUnResizeableSize":I
    sget-boolean v7, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Total size of unresizeable content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 370
    const-string/jumbo v8, " bytes"

    .line 369
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 377
    :cond_3
    sub-int v1, v2, v0

    .line 378
    .local v1, "imageSize":I
    add-int v7, v3, p1

    if-lez v7, :cond_4

    .line 379
    add-int v7, v3, p1

    div-int/2addr v1, v7

    .line 381
    :cond_4
    sget-boolean v7, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resize size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 385
    :cond_5
    return v1
.end method

.method private recalculateImageSizeToFitNewContent(I)I
    .locals 1
    .param p1, "newUnresizeableContentSize"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->reCalculateImageSize(II)I

    move-result v0

    return v0
.end method

.method private removeLocationVCardAttachmentModelIfAny(Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .param p1, "slideshowModel"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 789
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 790
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideModel;->hasLocationVCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAttachment()Z

    goto :goto_0

    .line 788
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method private declared-synchronized resetMessage()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1995
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 1996
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1994
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resizeAllMmsAddedImages(I)V
    .locals 12
    .param p1, "imageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 396
    .local v10, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getMediaSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 398
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->isLocation()Z

    move-result v6

    .line 399
    .local v6, "isLoc":Z
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v9

    .line 400
    .local v9, "imageModel":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v9}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, "tmpUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v2

    .line 403
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v3

    const/4 v4, 0x1

    const/4 v7, 0x1

    move v5, p1

    .line 401
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;

    move-result-object v4

    .line 404
    .local v4, "resizedUri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 405
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/android/mms/model/ImageModel;->isSticker()Z

    move-result v7

    .line 406
    sget-object v8, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 405
    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    invoke-virtual {v10, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 389
    .end local v1    # "tmpUri":Landroid/net/Uri;
    .end local v4    # "resizedUri":Landroid/net/Uri;
    .end local v6    # "isLoc":Z
    .end local v9    # "imageModel":Lcom/android/mms/model/ImageModel;
    .end local v10    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    return-void
.end method

.method private setTextFromSlideShow()V
    .locals 5

    .prologue
    .line 1691
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1692
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 1693
    .local v0, "nbrSlides":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1695
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_0

    .line 1696
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 1697
    .local v2, "text":Lcom/android/mms/model/TextModel;
    if-eqz v2, :cond_0

    .line 1698
    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1690
    .end local v0    # "nbrSlides":I
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v2    # "text":Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method private static slideHasMedia(Lcom/android/mms/model/SlideModel;)Z
    .locals 1
    .param p0, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 183
    if-eqz p0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized addAttachment(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 609
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 608
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAttachment(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 625
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v4

    .line 626
    .local v4, "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    sget-object v5, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 628
    .local v2, "isXmsSendingTechnology":Z
    :goto_0
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/Composer;->getContentRestrictionType(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    move-result-object v0

    .line 629
    .local v0, "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    new-instance v3, Lcom/sonyericsson/conversations/model/AttachmentModel;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p1, v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .line 630
    .local v3, "model":Lcom/sonyericsson/conversations/model/AttachmentModel;
    invoke-direct {p0, v3, v2, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/MediaModel;ZZ)V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 623
    return-void

    .line 626
    .end local v0    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .end local v2    # "isXmsSendingTechnology":Z
    .end local v3    # "model":Lcom/sonyericsson/conversations/model/AttachmentModel;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isXmsSendingTechnology":Z
    goto :goto_0

    .line 631
    .end local v2    # "isXmsSendingTechnology":Z
    .end local v4    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :catch_0
    move-exception v1

    .line 632
    .local v1, "cr":Lcom/android/mms/ContentRestrictionException;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/mms/ContentRestrictionException;->printStackTrace()V

    .line 633
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Content restrictions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "cr":Lcom/android/mms/ContentRestrictionException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized addAudio(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 647
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 646
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAudio(Landroid/net/Uri;Z)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 663
    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "Content must not be sent"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 666
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v5

    .line 667
    .local v5, "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    sget-object v7, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v5, v7, :cond_1

    const/4 v2, 0x1

    .line 669
    .local v2, "isXmsSendingTechnology":Z
    :goto_0
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/Composer;->getContentRestrictionType(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    move-result-object v0

    .line 670
    .local v0, "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    new-instance v4, Lcom/android/mms/model/AudioModel;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7, p1, v0}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .line 671
    .local v4, "model":Lcom/android/mms/model/AudioModel;
    invoke-direct {p0, v4, v2, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/MediaModel;ZZ)V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 661
    return-void

    .line 667
    .end local v0    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .end local v2    # "isXmsSendingTechnology":Z
    .end local v4    # "model":Lcom/android/mms/model/AudioModel;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isXmsSendingTechnology":Z
    goto :goto_0

    .line 675
    .end local v2    # "isXmsSendingTechnology":Z
    .end local v5    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :catch_0
    move-exception v1

    .line 676
    .local v1, "cr":Lcom/android/mms/ContentRestrictionException;
    :try_start_2
    new-instance v7, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Audio content restrictions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 672
    .end local v1    # "cr":Lcom/android/mms/ContentRestrictionException;
    :catch_1
    move-exception v6

    .line 673
    .local v6, "uct":Lcom/android/mms/UnsupportContentTypeException;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "mimeType":Ljava/lang/String;
    new-instance v7, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported audio type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized addImage(Landroid/net/Uri;Z)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonymobile/jms/file/UnableToResizeImageException;,
            Lcom/sonymobile/jms/file/UnableToDecodeImageException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 323
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v6

    .line 324
    .local v6, "stickerManager":Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    invoke-virtual {v6, p1}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->retrievePackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 325
    .local v5, "isSticker":Z
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 318
    return-void

    .line 324
    .end local v5    # "isSticker":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "isSticker":Z
    goto :goto_0

    .end local v5    # "isSticker":Z
    .end local v6    # "stickerManager":Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addImage(Landroid/net/Uri;ZZZZ)V
    .locals 33
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .param p3, "isLocation"    # Z
    .param p4, "keepGeotag"    # Z
    .param p5, "isSticker"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 487
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 488
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Content must not be sent"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 490
    :cond_0
    move-object/from16 v25, p1

    .line 491
    .local v25, "imageSrcUri":Landroid/net/Uri;
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/Composer;->calculateImageSize(Landroid/net/Uri;)I

    move-result v3

    if-gez v3, :cond_1

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    .line 493
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v8

    const/4 v7, 0x1

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 492
    invoke-static/range {v3 .. v10}, Lcom/sonyericsson/conversations/util/MediaUtil;->copyUriToCache(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;

    move-result-object p1

    .line 495
    if-nez p1, :cond_1

    .line 496
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string/jumbo v4, "Could not copy image"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :cond_1
    const/4 v11, 0x0

    .line 501
    .local v11, "resizedUri":Landroid/net/Uri;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v31

    .line 502
    .local v31, "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    sget-object v3, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-object/from16 v0, v31

    if-ne v0, v3, :cond_4

    const/16 v28, 0x1

    .line 503
    .local v28, "isXmsSendingTechnology":Z
    :goto_0
    if-eqz v28, :cond_2

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-static {v3}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v27, 0x0

    .line 506
    .local v27, "isResizeable":Z
    :goto_1
    if-eqz v27, :cond_7

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshow()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 509
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->reCalculateImageSize(I)I

    move-result v8

    .line 510
    .local v8, "imageSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sonyericsson/conversations/ui/Composer;->resizeAllMmsAddedImages(I)V

    .line 515
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    .line 516
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 515
    invoke-static/range {v3 .. v10}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;

    move-result-object v11

    .line 525
    .end local v8    # "imageSize":I
    .end local v11    # "resizedUri":Landroid/net/Uri;
    .end local v27    # "isResizeable":Z
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->getContentRestrictionType(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    move-result-object v15

    .line 526
    .local v15, "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    if-eqz v11, :cond_8

    .line 527
    new-instance v9, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .line 532
    .local v9, "model":Lcom/android/mms/model/ImageModel;
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p2

    invoke-direct {v0, v9, v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/MediaModel;ZZ)V

    .line 533
    if-eqz p5, :cond_3

    invoke-virtual {v9}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 535
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v5, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->cachePackageName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 486
    return-void

    .line 502
    .end local v9    # "model":Lcom/android/mms/model/ImageModel;
    .end local v15    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .end local v28    # "isXmsSendingTechnology":Z
    .restart local v11    # "resizedUri":Landroid/net/Uri;
    :cond_4
    const/16 v28, 0x0

    .restart local v28    # "isXmsSendingTechnology":Z
    goto/16 :goto_0

    .line 504
    :cond_5
    const/16 v27, 0x1

    .restart local v27    # "isResizeable":Z
    goto :goto_1

    .line 512
    :cond_6
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/Composer;->calculateImageSize(Landroid/net/Uri;)I

    move-result v8

    .restart local v8    # "imageSize":I
    goto :goto_2

    .line 518
    .end local v8    # "imageSize":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/conversations/ui/Composer;->calculateImageSize(Landroid/net/Uri;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->recalculateImageSizeToFitNewContent(I)I

    move-result v8

    .line 520
    .restart local v8    # "imageSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sonyericsson/conversations/ui/Composer;->resizeAllMmsAddedImages(I)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 538
    .end local v8    # "imageSize":I
    .end local v11    # "resizedUri":Landroid/net/Uri;
    .end local v27    # "isResizeable":Z
    .end local v28    # "isXmsSendingTechnology":Z
    .end local v31    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :catch_0
    move-exception v30

    .line 539
    .local v30, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resize error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    throw v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 530
    .end local v30    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .restart local v15    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .restart local v28    # "isXmsSendingTechnology":Z
    .restart local v31    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :cond_8
    :try_start_5
    new-instance v9, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v18, p1

    move/from16 v20, p3

    move/from16 v21, p5

    move-object/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;ZZLcom/android/mms/model/MediaModel$ContentRestrictionType;)V
    :try_end_5
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v9    # "model":Lcom/android/mms/model/ImageModel;
    goto :goto_4

    .line 551
    .end local v9    # "model":Lcom/android/mms/model/ImageModel;
    .end local v15    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .end local v28    # "isXmsSendingTechnology":Z
    .end local v31    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :catch_1
    move-exception v23

    .line 552
    .local v23, "cr":Lcom/android/mms/ContentRestrictionException;
    :try_start_6
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Image content restrictions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    .end local v23    # "cr":Lcom/android/mms/ContentRestrictionException;
    :catch_2
    move-exception v24

    .line 550
    .local v24, "e":Lcom/android/mms/ExceedMessageSizeException;
    throw v24

    .line 543
    .end local v24    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v32

    .line 544
    .local v32, "uct":Lcom/android/mms/UnsupportContentTypeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v29

    .line 545
    .local v29, "mimeType":Ljava/lang/String;
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported image type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 541
    .end local v29    # "mimeType":Ljava/lang/String;
    .end local v32    # "uct":Lcom/android/mms/UnsupportContentTypeException;
    :catch_4
    move-exception v26

    .line 542
    .local v26, "io":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string/jumbo v4, "Could not add image"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized addVideo(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 566
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 565
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addVideo(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 582
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Content must not be sent"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 588
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v3

    .line 589
    .local v3, "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    sget-object v5, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v3, v5, :cond_1

    const/4 v1, 0x1

    .line 591
    .local v1, "isXmsSendingTechnology":Z
    :goto_0
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->getContentRestrictionType(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    move-result-object v0

    .line 592
    .local v0, "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    new-instance v2, Lcom/android/mms/model/VideoModel;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/Composer;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v2, v5, p1, v6, v0}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Lcom/android/mms/model/MediaModel$ContentRestrictionType;)V

    .line 593
    .local v2, "model":Lcom/android/mms/model/VideoModel;
    invoke-direct {p0, v2, v1, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addMedia(Lcom/android/mms/model/MediaModel;ZZ)V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 580
    return-void

    .line 589
    .end local v0    # "contentRestrictionType":Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .end local v1    # "isXmsSendingTechnology":Z
    .end local v2    # "model":Lcom/android/mms/model/VideoModel;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isXmsSendingTechnology":Z
    goto :goto_0

    .line 594
    .end local v1    # "isXmsSendingTechnology":Z
    .end local v3    # "sendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :catch_0
    move-exception v4

    .line 595
    .local v4, "uct":Lcom/android/mms/UnsupportContentTypeException;
    :try_start_2
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported video type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized composeAndGetMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 774
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMsgTypeBasedOnSendingTechAndComposerCapabilities()I

    move-result v0

    .line 775
    .local v0, "messageType":I
    packed-switch v0, :pswitch_data_0

    .line 783
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "messageType":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 777
    .restart local v0    # "messageType":I
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->composeJoynMessageFromSlideshow()Lcom/sonyericsson/conversations/model/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 779
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->composeMmsMessage()Lcom/sonyericsson/conversations/model/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 781
    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->composeSmsMessage()Lcom/sonyericsson/conversations/model/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized deleteAllMediaWithRefresh()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1470
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 1471
    return-void

    .line 1473
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMedia()V

    .line 1474
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1469
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAllSlides()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1529
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1528
    return-void

    .line 1530
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->clear()V

    .line 1531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    .line 1532
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 1533
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1535
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1542
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1538
    :cond_2
    :try_start_2
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized deleteMedia(Lcom/android/mms/model/MediaModel;)Z
    .locals 4
    .param p1, "mediaModel"    # Lcom/android/mms/model/MediaModel;

    .prologue
    const/4 v3, 0x1

    monitor-enter p0

    .line 1495
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/conversations/ui/Composer;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteMedia with media model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1498
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 1521
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1499
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->findSlideForMedia(Lcom/android/mms/model/MediaModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1500
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_1

    .line 1501
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1502
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1510
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1511
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->remove(Ljava/lang/Object;)Z

    .line 1514
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1515
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1517
    return v3

    .line 1503
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 1502
    invoke-static {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1506
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized forceMessageType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    monitor-enter p0

    .line 1196
    :try_start_0
    iput p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 1197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1195
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V
    .locals 1
    .param p1, "forceSendingTech"    # Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .prologue
    monitor-enter p0

    .line 2359
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 2360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2358
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getComposerContentType()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 2138
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2341
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentMediaItemNbr()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 2205
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDraft()Lcom/sonyericsson/conversations/draft/Draft;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1705
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDraftFromContent()Lcom/sonyericsson/conversations/draft/Draft;
    .locals 10

    .prologue
    .line 1740
    const/4 v2, 0x0

    .line 1742
    .local v2, "subject":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftSubject()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1746
    .end local v2    # "subject":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/sonyericsson/conversations/draft/Draft;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getUris()Ljava/util/List;

    move-result-object v5

    .line 1747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v8

    .line 1746
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/conversations/draft/Draft;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JI)V

    return-object v0

    .line 1743
    .restart local v2    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1744
    .local v9, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v0, "Failed to get draft subject"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getForcedSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2350
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessagePriority()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 2328
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1592
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSaveDraftSubject()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1713
    const/4 v0, 0x0

    .line 1714
    .local v0, "subject":Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->generateSubject(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "subject":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 1717
    return-object v0

    .restart local v0    # "subject":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1579
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2149
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 2061
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportedMediaItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2161
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItemsWithSlideId()Ljava/util/List;

    move-result-object v3

    .line 2162
    .local v3, "supportedMediaItemsWithSlideId":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    .local v0, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pair$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2164
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;"
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;"
    .end local v2    # "pair$iterator":Ljava/util/Iterator;
    .end local v3    # "supportedMediaItemsWithSlideId":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v2    # "pair$iterator":Ljava/util/Iterator;
    .restart local v3    # "supportedMediaItemsWithSlideId":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    :cond_0
    monitor-exit p0

    .line 2166
    return-object v0
.end method

.method public declared-synchronized getSupportedMediaItemsWithSlideId()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/mms/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2177
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v0, "media":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    monitor-exit p0

    .line 2201
    return-object v0

    .line 2180
    :cond_1
    const/4 v1, 0x0

    .local v1, "s":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2181
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 2182
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_5

    .line 2183
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2184
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2186
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2187
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2189
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2190
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2196
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2180
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "media":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;+Lcom/android/mms/model/MediaModel;>;>;"
    .end local v1    # "s":I
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1588
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUris()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1596
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit p0

    .line 1598
    return-object v5

    .line 1601
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "slideModel$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1602
    .local v2, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1603
    .local v0, "media":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 1604
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 1605
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "media":Lcom/android/mms/model/MediaModel;
    .end local v1    # "media$iterator":Ljava/util/Iterator;
    .end local v2    # "slideModel":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideModel$iterator":Ljava/util/Iterator;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v3    # "slideModel$iterator":Ljava/util/Iterator;
    .restart local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_3
    monitor-exit p0

    .line 1609
    return-object v5
.end method

.method public declared-synchronized hasLocationImage()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    .line 1062
    return v3

    .line 1064
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slideModel$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1065
    .local v0, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->isLocation()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1066
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .end local v0    # "slideModel":Lcom/android/mms/model/SlideModel;
    :cond_2
    monitor-exit p0

    .line 1069
    return v3

    .end local v1    # "slideModel$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized hasMedia()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 2117
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 2118
    .local v2, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_1

    .line 2121
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/mms/model/SlideModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/mms/model/SlideModel;

    .line 2122
    .local v1, "slideModelArray":[Lcom/android/mms/model/SlideModel;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 2123
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 2124
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 2122
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v1    # "slideModelArray":[Lcom/android/mms/model/SlideModel;
    :cond_1
    monitor-exit p0

    .line 2128
    return v4

    .end local v2    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized holdsAlienContent()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1185
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComposingImMessage()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 733
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 734
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_1

    .line 735
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 737
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isCurrentContentImCompatible()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isContentEmpty()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 2092
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    .line 2093
    return v4

    .line 2096
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 2097
    .local v2, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit p0

    .line 2098
    return v5

    .line 2101
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slide$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 2102
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2104
    :cond_4
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->slideHasMedia(Lcom/android/mms/model/SlideModel;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit p0

    .line 2105
    return v4

    :cond_5
    monitor-exit p0

    .line 2103
    return v4

    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_6
    monitor-exit p0

    .line 2108
    return v5

    .end local v1    # "slide$iterator":Ljava/util/Iterator;
    .end local v2    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isCurrentTextTooLong()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 3

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v1

    .line 2210
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    .line 2211
    .local v0, "conversationIdType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2212
    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->isImTextTooLong(Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/ConversationId$Type;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v2

    return-object v2

    .line 2214
    :cond_0
    invoke-static {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->isXmsTextTooLong(Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized isDirty()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 2321
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 2070
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isSubjectEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2073
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isImFileTransferCapable()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 719
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 721
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImFileTransferCapable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isImTextCapable()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 707
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 709
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubjectEmpty()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 2083
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadSlideShowModelFromJoynMessageUri(Lcom/sonyericsson/conversations/model/JoynMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    monitor-enter p0

    .line 1119
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1118
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadSlideShowModelFromMmsMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1134
    :try_start_0
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 1133
    invoke-static {p1, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 1135
    .local v5, "originalSlideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v6

    iget v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMmsMaxSizeInBytes:I

    if-gt v6, v7, :cond_4

    .line 1136
    invoke-static {p1}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1138
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 1139
    const/4 v1, 0x0

    .local v1, "location":I
    :goto_0
    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1140
    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 1141
    .local v4, "originalSlide":Lcom/android/mms/model/SlideModel;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 1143
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    .end local v4    # "originalSlide":Lcom/android/mms/model/SlideModel;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->setTextFromSlideShow()V

    .line 1149
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    instance-of v6, p2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v6, :cond_1

    .line 1150
    move-object v0, p2

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    move-object v2, v0

    .line 1152
    .local v2, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1153
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 1157
    .end local v2    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V

    .line 1158
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->checkforUnhandlableContent(Lcom/android/mms/model/SlideshowModel;)V

    .line 1160
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshow()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1162
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 1163
    .local v3, "mmsText":Lcom/android/mms/model/TextModel;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 1164
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1167
    .end local v3    # "mmsText":Lcom/android/mms/model/TextModel;
    :cond_2
    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/Composer;->mHoldsUnhandlableContent:Z

    if-nez v6, :cond_3

    .line 1168
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "location":I
    :cond_3
    :goto_1
    monitor-exit p0

    .line 1132
    return-void

    .line 1174
    :cond_4
    :try_start_1
    const-string/jumbo v6, "loadSlideshowModelFromMessageUri: message too large to be forwarded"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v5    # "originalSlideshow":Lcom/android/mms/model/SlideshowModel;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized markSubjectAsFixed(Z)V
    .locals 1
    .param p1, "isFixed"    # Z

    .prologue
    monitor-enter p0

    .line 2052
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubjectIsFixed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2051
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDraft()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1709
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1708
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetConversation()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 1984
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    .local v0, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 1986
    const-wide/16 v2, -0x1

    .line 1985
    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 1987
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    .line 1988
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->resetMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1983
    return-void

    .end local v0    # "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setComposerListener(Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;)V
    .locals 1
    .param p1, "composerListener"    # Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    .prologue
    monitor-enter p0

    .line 297
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 296
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    monitor-enter p0

    .line 1960
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1961
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 1962
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v0, v1, :cond_0

    .line 1963
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForceSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 1966
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V

    .line 1968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1959
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDirty(Z)V
    .locals 1
    .param p1, "isDirty"    # Z

    .prologue
    monitor-enter p0

    .line 2337
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2336
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraft(Lcom/sonyericsson/conversations/draft/Draft;)V
    .locals 5
    .param p1, "draft"    # Lcom/sonyericsson/conversations/draft/Draft;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1618
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1619
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 1620
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1621
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    .line 1622
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    if-eqz v4, :cond_1

    .line 1623
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/draft/Draft;->getBodyText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 1624
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/draft/Draft;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, "mmsDraftSubject":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v3

    .line 1626
    .local v3, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/draft/Draft;->getPriority()I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I

    .line 1627
    if-eqz v3, :cond_0

    .line 1629
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1630
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 1635
    :goto_0
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/Composer;->createCorrectMediaModelAndAttachToComposer(Ljava/util/List;)V

    .line 1639
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1640
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 1642
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDraft:Lcom/sonyericsson/conversations/draft/Draft;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    .line 1641
    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 1643
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1645
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v1    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .end local v2    # "mmsDraftSubject":Ljava/lang/String;
    .end local v3    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mForcedMessageType:I

    .line 1646
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/Composer;->checkforUnhandlableContent(Lcom/android/mms/model/SlideshowModel;)V

    .line 1648
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V

    .line 1649
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1617
    return-void

    .line 1633
    .restart local v2    # "mmsDraftSubject":Ljava/lang/String;
    .restart local v3    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubjectIsFixed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "mmsDraftSubject":Ljava/lang/String;
    .end local v3    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setMessagePriority(I)V
    .locals 1
    .param p1, "messagePriority"    # I

    .prologue
    monitor-enter p0

    .line 2332
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2333
    iput p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessagePriority:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2331
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParticipants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    monitor-enter p0

    .line 1973
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    .line 1976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1972
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x28

    monitor-enter p0

    .line 2026
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2026
    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    .line 2028
    return-void

    .line 2031
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 2032
    const/4 v0, 0x0

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2034
    :cond_3
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubject:Ljava/lang/String;

    .line 2035
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSubjectIsFixed:Z

    .line 2041
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2042
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2025
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setText(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "updateAsynchronously"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    .line 2009
    :try_start_0
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    .line 2008
    return-void

    :cond_1
    move v0, v1

    .line 2009
    goto :goto_0

    .line 2010
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    .line 2011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 2012
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2013
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mUpdateMessageTypeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2015
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public shouldUseGroupMms()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1218
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1219
    .local v0, "size":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public declared-synchronized updateCapabilities()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 693
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isConversationImTextMessageCapable(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImTextCapable:Z

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 695
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isConversationImFileMessageCapable(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mIsComposerImFileTransferCapable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 692
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateMessageType(Z)V
    .locals 3
    .param p1, "notifyListener"    # Z

    .prologue
    monitor-enter p0

    .line 1433
    :try_start_0
    iget v1, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 1435
    .local v1, "oldMessageType":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->getMsgTypeBasedOnSendingTechAndComposerCapabilities()I

    move-result v2

    .line 1434
    iput v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    .line 1438
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    .line 1439
    .local v0, "oldCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1440
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->clear()V

    .line 1445
    :goto_0
    iget v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mMessageTypeBasedOnComposerType:I

    packed-switch v2, :pswitch_data_0

    .line 1453
    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1454
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1455
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mDirty:Z

    .line 1460
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mListener:Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;

    if-eqz v2, :cond_1

    .line 1461
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/ui/Composer;->notifyTheListener(ILcom/sonyericsson/conversations/ui/SmsCounterInfo;Lcom/sonyericsson/conversations/ui/SmsCounterInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1432
    return-void

    .line 1442
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->fromText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/Composer;->mSmsCounterInfo:Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "oldCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    .end local v1    # "oldMessageType":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1448
    .restart local v0    # "oldCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    .restart local v1    # "oldMessageType":I
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/Composer;->addTextToSlideshow()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
