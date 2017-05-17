.class public Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;
.super Ljava/lang/Object;
.source "MessageStatusController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/sonyericsson/conversations/ui/MessageActionsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;,
        Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;,
        Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$1;,
        Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues:[I

.field private static final IM_DELIVERED_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final IM_FAILED_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final IM_IN_PROGRESS_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final IM_QUEUED_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final IM_SENT_OR_RECEIVED_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static mBubbleStatusCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimScenario:Lcom/sonyericsson/conversations/ui/animation/Scenario;

.field private mBubbleLayout:Landroid/view/View;

.field private final mBubbleView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mElapsedMessageDate:J

.field private final mHandler:Landroid/os/Handler;

.field private mLastMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

.field private final mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

.field private final mPostInProgressCheck:Ljava/lang/Runnable;

.field private final mPostSentCheck:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStatusIcon:Landroid/widget/ImageView;

.field private final mStatusProgress:Landroid/widget/ProgressBar;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-com_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-com_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->values()[Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->IN_PROGRESS:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->QUEUED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->SENT_OR_RECEIVED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->UNKNOWN:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-com_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->getStatus(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->showSentStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->showStatusProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-array v0, v5, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_SENT_OR_RECEIVED_STATES:Ljava/util/List;

    .line 95
    new-array v0, v5, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 94
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_DELIVERED_STATES:Ljava/util/List;

    .line 98
    new-array v0, v5, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 97
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_QUEUED_STATES:Ljava/util/List;

    .line 101
    new-array v0, v5, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 100
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_IN_PROGRESS_STATES:Ljava/util/List;

    .line 104
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/sonymobile/jms/message/ImUserMessage$Status;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 105
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 106
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 107
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 103
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_FAILED_STATES:Ljava/util/List;

    .line 110
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleStatusCache:Landroid/util/LruCache;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 2
    .param p1, "bubbleView"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mPostSentCheck:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mPostInProgressCheck:Ljava/lang/Runnable;

    .line 137
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleLayout:Landroid/view/View;

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mResources:Landroid/content/res/Resources;

    .line 148
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mContext:Landroid/content/Context;

    .line 149
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 150
    const v0, 0x7f0d00e1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusProgress:Landroid/widget/ProgressBar;

    .line 151
    const v0, 0x7f0d00e2

    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0d0100

    invoke-virtual {p1, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    .line 153
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    .line 145
    return-void
.end method

.method public static clearMessageStatusCache()V
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleStatusCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 180
    return-void
.end method

.method private createDeliveredScenario()Lcom/sonyericsson/conversations/ui/animation/Scenario;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 382
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 383
    .local v0, "tickAnimDuration":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mResources:Landroid/content/res/Resources;

    .line 384
    const v3, 0x7f0a0018

    .line 383
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 386
    .local v1, "tickFullyVisibleDuration":I
    new-instance v2, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;-><init>()V

    .line 387
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusProgress:Landroid/widget/ProgressBar;

    .line 386
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->remove(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    .line 388
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    const v4, 0x7f0200d5

    .line 386
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->changeImage(Landroid/widget/ImageView;I)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    .line 389
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->show(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    .line 391
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 392
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 393
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    .line 386
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->animateTogether([Landroid/animation/Animator;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/Animator;

    .line 395
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 397
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 386
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->animateTogether([Landroid/animation/Animator;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->delay(I)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/Animator;

    .line 401
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_5

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 402
    int-to-long v6, v0

    .line 401
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 403
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->getTimeStampAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 386
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->animateTogether([Landroid/animation/Animator;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    .line 404
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->remove(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->build()Lcom/sonyericsson/conversations/ui/animation/Scenario;

    move-result-object v2

    return-object v2

    .line 391
    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f99999a    # 1.2f
    .end array-data

    .line 392
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f99999a    # 1.2f
    .end array-data

    .line 393
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 395
    :array_3
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 397
    :array_4
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 401
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createSentScenario()Lcom/sonyericsson/conversations/ui/animation/Scenario;
    .locals 6

    .prologue
    .line 375
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mResources:Landroid/content/res/Resources;

    .line 376
    const v2, 0x7f0a001a

    .line 375
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 377
    .local v0, "timestampAnimDuration":I
    new-instance v1, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->remove(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v1

    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->getTimeStampAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->animate(Landroid/animation/Animator;)Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/animation/Scenario$Builder;->build()Lcom/sonyericsson/conversations/ui/animation/Scenario;

    move-result-object v1

    return-object v1
.end method

.method private getBubbleLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleLayout:Landroid/view/View;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleLayout:Landroid/view/View;

    return-object v0
.end method

.method private getStatus(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageIsInProgress(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->IN_PROGRESS:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageIsQueued(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->QUEUED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0

    .line 298
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageIsDelivered(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0

    .line 300
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageIsSentOrReceived(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->SENT_OR_RECEIVED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0

    .line 302
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageDeliveryIsFailed(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->DELIVERY_FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0

    .line 304
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->messageIsFailed(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->FAILED:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0

    .line 307
    :cond_5
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->UNKNOWN:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    return-object v0
.end method

.method private getTimeStampAnimation()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    .line 410
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 412
    .local v0, "delayBeforeTimestamp":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 413
    .local v1, "timeStampAnimation":Landroid/animation/ObjectAnimator;
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 414
    return-object v1
.end method

.method private handleAccessibility(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;)V
    .locals 6
    .param p1, "prevStatus"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .param p2, "currStatus"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    .prologue
    .line 248
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    if-ne p2, p1, :cond_2

    .line 252
    :cond_1
    return-void

    .line 254
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mContext:Landroid/content/Context;

    .line 255
    const-string/jumbo v5, "accessibility"

    .line 254
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 256
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 257
    return-void

    .line 260
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-getcom_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 278
    const-string/jumbo v4, "Case not handled in handleAccessibility"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 279
    return-void

    .line 262
    :pswitch_0
    const v3, 0x7f0b00dc

    .line 281
    .local v3, "text":I
    :goto_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 282
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v4, 0x4000

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 286
    :try_start_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 247
    return-void

    .line 265
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "text":I
    :pswitch_1
    const v3, 0x7f0b00db

    .line 266
    .restart local v3    # "text":I
    goto :goto_0

    .line 268
    .end local v3    # "text":I
    :pswitch_2
    const v3, 0x7f0b00de

    .line 269
    .restart local v3    # "text":I
    goto :goto_0

    .line 272
    .end local v3    # "text":I
    :pswitch_3
    const v3, 0x7f0b00dd

    .line 273
    .restart local v3    # "text":I
    goto :goto_0

    .line 276
    .end local v3    # "text":I
    :pswitch_4
    return-void

    .line 287
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v3    # "text":I
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "Case not handled in handleAccessibility"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private isMessageChanged(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "currStatus"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .param p3, "prevStatus"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    .prologue
    const/4 v0, 0x1

    .line 419
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    if-eq p2, p3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private messageDeliveryIsFailed(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 360
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_0

    .line 361
    return v0

    .line 363
    :cond_0
    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static messageIsDelivered(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 2
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 332
    instance-of v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_DELIVERED_STATES:Ljava/util/List;

    check-cast p0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p0    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 335
    .restart local p0    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private messageIsFailed(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 353
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_FAILED_STATES:Ljava/util/List;

    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 356
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    iget v0, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private messageIsInProgress(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 346
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_IN_PROGRESS_STATES:Ljava/util/List;

    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 349
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    iget v0, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private messageIsQueued(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 339
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_QUEUED_STATES:Ljava/util/List;

    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 342
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    iget v0, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private messageIsSentOrReceived(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 318
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_0

    .line 319
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_SENT_OR_RECEIVED_STATES:Ljava/util/List;

    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 321
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-nez v1, :cond_2

    :cond_1
    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private resetViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setAlpha(F)V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    return-void
.end method

.method private setBubbleFullOpaque()V
    .locals 2

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->getBubbleLayout()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 485
    return-void
.end method

.method private setBubbleSuccessful(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Z)V
    .locals 2
    .param p1, "prevStatus"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .param p2, "currStatus"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    .param p3, "showDeliveryAnim"    # Z

    .prologue
    .line 491
    if-eqz p1, :cond_1

    if-eq p2, p1, :cond_1

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 494
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->createDeliveredScenario()Lcom/sonyericsson/conversations/ui/animation/Scenario;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mAnimScenario:Lcom/sonyericsson/conversations/ui/animation/Scenario;

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mAnimScenario:Lcom/sonyericsson/conversations/ui/animation/Scenario;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/animation/Scenario;->start()Lcom/sonyericsson/conversations/ui/animation/Scenario;

    .line 501
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setAlpha(F)V

    .line 490
    return-void

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->createSentScenario()Lcom/sonyericsson/conversations/ui/animation/Scenario;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setBubbleFullOpaque()V

    goto :goto_1
.end method

.method private showSentStatus()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xbb8

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mElapsedMessageDate:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setAlpha(F)V

    .line 470
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mPostSentCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showStatusIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    return-void
.end method

.method private showStatusProgress()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xbb8

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mElapsedMessageDate:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mStatusProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 461
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mPostInProgressCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 425
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 426
    .local v0, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 427
    const v1, 0x7f120007

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0157

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendAsSmsVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0158

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;->popupMenuShown(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/widget/PopupMenu;)V

    .line 440
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 424
    return-void

    .line 434
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendAsMmsVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 457
    const/4 v0, 0x0

    return v0

    .line 447
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendMessage()V

    .line 448
    return v1

    .line 451
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendJoynAsXms()V

    .line 452
    return v1

    .line 454
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 455
    return v1

    .line 445
    :pswitch_data_0
    .packed-switch 0x7f0d0157
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 10
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    return-void

    .line 196
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    sub-long/2addr v6, v8

    .line 196
    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mElapsedMessageDate:J

    .line 198
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->getStatus(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    move-result-object v0

    .line 200
    .local v0, "currStatus":Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    sget-object v3, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleStatusCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;

    .line 201
    .local v2, "prevStatus":Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;
    sget-object v3, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mBubbleStatusCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1, v0, v2}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->isMessageChanged(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    return-void

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mAnimScenario:Lcom/sonyericsson/conversations/ui/animation/Scenario;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mAnimScenario:Lcom/sonyericsson/conversations/ui/animation/Scenario;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/animation/Scenario;->stop()V

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->resetViews()V

    .line 213
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mPostInProgressCheck:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mPostSentCheck:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->-getcom_sonyericsson_conversations_ui_controller_MessageStatusController$BubbleStatusSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setBubbleFullOpaque()V

    .line 243
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->handleAccessibility(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;)V

    .line 244
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 189
    return-void

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->showStatusProgress()V

    .line 220
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v3, :cond_3

    .line 221
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setAlpha(F)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setAlpha(F)V

    goto :goto_0

    .line 227
    :pswitch_1
    const v3, 0x7f0200d4

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->showStatusIcon(I)V

    goto :goto_0

    .line 230
    :pswitch_2
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setBubbleSuccessful(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Z)V

    goto :goto_0

    .line 233
    :pswitch_3
    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setBubbleSuccessful(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$BubbleStatus;Z)V

    goto :goto_0

    .line 237
    :pswitch_4
    const v3, 0x7f0200d3

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->showStatusIcon(I)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMessageActionsController(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0
    .param p1, "controller"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 158
    return-void
.end method

.method public setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V
    .locals 0
    .param p1, "messageStatusPopupMenuListener"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    .line 163
    return-void
.end method
