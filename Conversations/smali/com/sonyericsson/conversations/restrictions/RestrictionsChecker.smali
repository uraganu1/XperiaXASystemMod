.class public Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
.super Ljava/lang/Object;
.source "RestrictionsChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;,
        Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I


# instance fields
.field private mContentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field private final mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

.field private mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

.field private final mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

.field private mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

.field private mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-com_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues:[I

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

.method public constructor <init>(Landroid/net/Uri;JLandroid/content/Context;)V
    .locals 2
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    .line 85
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 87
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 89
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 91
    new-instance v1, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    .line 93
    new-instance v1, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    .line 100
    iput-object p4, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0, p2, p3, p1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->checkMessage(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 103
    sget-object v1, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "allowedSendTechnology"    # Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    .line 85
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 87
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 89
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 91
    new-instance v1, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    .line 93
    new-instance v1, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    .line 108
    iput-object p2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iput-object p3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 113
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->createContentItemListFromUris(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    .line 85
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 87
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 89
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 91
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    .line 93
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    .line 124
    invoke-static {p1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->isXmsTextTooLong(Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 125
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "allowedSendTechnology"    # Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    .line 85
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 87
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 89
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 91
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    .line 93
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    .line 118
    iput-object p2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    .line 119
    iput-object p3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->createContentItemListFromUris(Ljava/util/List;)V

    .line 117
    return-void
.end method

.method public static checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "currentSize"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    if-nez p0, :cond_0

    .line 391
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6

    .line 394
    :cond_0
    const-wide/16 v4, 0x0

    .line 395
    .local v4, "size":J
    const-wide/16 v2, 0x0

    .line 397
    .local v2, "maxSize":J
    const/4 v0, 0x0

    .line 399
    .local v0, "isVideo":Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v6

    int-to-long v2, v6

    .line 401
    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 403
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    const-string/jumbo v6, "application/ogg"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 402
    if-eqz v6, :cond_2

    .line 405
    :cond_1
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    .line 407
    .local v0, "isVideo":Z
    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 408
    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 411
    .end local v0    # "isVideo":Z
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/mms/model/MediaModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 412
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6

    .line 415
    :cond_3
    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    .line 416
    if-eqz v0, :cond_4

    .line 417
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6

    .line 419
    :cond_4
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6

    .line 421
    :cond_5
    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 422
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6

    .line 423
    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p2, p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->isUriVideoContainerInvalid(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 424
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_NOT_SUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6

    .line 426
    :cond_7
    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v6
.end method

.method private checkMessage(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 4
    .param p1, "msg"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 262
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_1

    .line 264
    :try_start_0
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 265
    .local v2, "ssm":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_1

    .line 268
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    .line 269
    .local v1, "maxSize":I
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 270
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 271
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->hasNonForwardableDrmContent(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 275
    .end local v1    # "maxSize":I
    .end local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lcom/google/android/mms/MmsException;
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 279
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3
.end method

.method private createContentItemFromUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 237
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 238
    .local v1, "mmsContentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 239
    .local v0, "imContentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    invoke-static {}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-getcom_sonyericsson_conversations_ui_Composer$SendingTechnologySwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    new-instance v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    invoke-direct {v2, p1, v1, v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;-><init>(Landroid/net/Uri;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    return-object v2

    .line 241
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;->checkUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;->checkUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMmsRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;

    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;->checkUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mImRestrictionsChecker:Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;

    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;->checkUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    .line 252
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-ne v0, v2, :cond_0

    .line 253
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private createContentItemListFromUris(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 227
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    iput-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 228
    return-void

    .line 230
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 231
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->createContentItemFromUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    move-result-object v0

    .line 232
    .local v0, "content":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v0    # "content":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;
    .locals 5
    .param p1, "threadid"    # J
    .param p3, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "msg":Lcom/sonyericsson/conversations/model/Message;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 288
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 291
    .end local v0    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    if-nez v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 294
    :cond_1
    return-object v0
.end method

.method private getMultipleXmsContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 7
    .param p1, "containsLocation"    # Z

    .prologue
    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, "supportedContentItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;>;"
    iget-object v5, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    .line 188
    .local v0, "contentItem":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    sget-object v5, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->getStatus(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-ne v5, v6, :cond_0

    .line 189
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p1}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects(Z)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 196
    .end local v0    # "contentItem":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 197
    .local v3, "supportedContentCount":I
    if-nez v3, :cond_2

    .line 199
    sget-object v5, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v5

    .line 204
    :cond_2
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->removeToFit(Ljava/util/List;)V

    .line 207
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 208
    iget-object v5, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 212
    .local v2, "originalContentCount":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 213
    iget-object v5, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    if-nez v3, :cond_3

    .line 216
    sget-object v5, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v5

    .line 217
    :cond_3
    if-ge v3, v2, :cond_4

    .line 219
    sget-object v5, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v5

    .line 222
    :cond_4
    sget-object v5, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v5
.end method

.method public static isImTextTooLong(Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/ConversationId$Type;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "conversationIdType"    # Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .prologue
    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 333
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .line 335
    .local v0, "currentTextLengthInBytes":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v1

    .line 336
    .local v1, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    invoke-static {}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 351
    :cond_1
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 338
    :pswitch_0
    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxGroupConversationMessageLength()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 339
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 344
    :pswitch_1
    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxOne2OneConversationMessageLength()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 345
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isXmsTextTooLong(Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 365
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    .line 367
    const/16 v2, 0x2710

    .line 366
    if-le v1, v2, :cond_2

    .line 368
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 371
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->fromText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v0

    .line 372
    .local v0, "smsCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->isTextTooLong()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 376
    .end local v0    # "smsCounterInfo":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1
.end method

.method private removeToFit(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "contentItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v6

    int-to-long v2, v6

    .line 306
    .local v2, "maxSize":J
    const-wide/16 v4, 0x0

    .line 309
    .local v4, "totalSize":J
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    invoke-static {v6}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->-get0(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;)Landroid/net/Uri;

    move-result-object v1

    .line 312
    .local v1, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->isResizeableMediaMms(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 313
    iget-object v6, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 314
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 324
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 325
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 309
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method


# virtual methods
.method public getAddableContentUris()Ljava/util/List;
    .locals 5
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
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "addableUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contentItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    .line 178
    .local v1, "contentItem":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->getStatus(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-ne v3, v4, :cond_0

    .line 179
    invoke-static {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->-get0(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v1    # "contentItem":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    :cond_1
    return-object v0
.end method

.method public getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    return-object v0
.end method

.method public getContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 5
    .param p1, "containsLocation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    sget-object v4, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v3, v4, :cond_2

    .line 151
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getMultipleXmsContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v3

    return-object v3

    .line 136
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    sget-object v4, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v3, v4, :cond_0

    .line 137
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mMessageContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    sget-object v4, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v3, v4, :cond_1

    .line 140
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mTextContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mDefaultContentStatus:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 145
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    iget-object v4, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->getStatus(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v3

    return-object v3

    .line 157
    :cond_2
    const/4 v2, 0x0

    .line 158
    .local v2, "numberOfContentThatCanBeAdded":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentItem$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;

    .line 159
    .local v0, "contentItem":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;->getStatus(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-ne v3, v4, :cond_3

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "contentItem":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentItem;
    :cond_4
    if-nez v2, :cond_5

    .line 165
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 166
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->mContentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 168
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 171
    :cond_6
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v3

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
