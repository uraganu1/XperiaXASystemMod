.class public Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.super Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

.field private static final sMarkMessageAsReadTaskLock:Ljava/lang/Object;

.field private static sMarkMessagesAsReadTask:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;


# instance fields
.field private mBubbleAnimator:Landroid/animation/AnimatorSet;

.field private mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private mDataSetChangedTask:Lcom/sonyericsson/conversations/util/WeakTask;

.field private mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

.field private mEditorAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mInitialized:Z

.field private mInvalidDateMessageKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeletingAllMessages:Z

.field private mIsFirstRefresh:Z

.field private mIsInMarkMode:Z

.field private mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListItemClickListener:Landroid/view/View$OnClickListener;

.field private mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

.field private mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

.field private mMMSPreviewEnabled:Z

.field private mMessageKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagePreCacher:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

.field private mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

.field private mMessagesAlreadyShown:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

.field private mSearchedMessageIndex:I

.field private mSenderString:Ljava/lang/String;

.field private mShouldMarkMessagesAsRead:Z

.field private mStackedMOContactBadge:Landroid/view/View;

.field private mStackedMTContactBadge:Landroid/view/View;

.field private mViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mPreviousBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMOContactBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMTContactBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessageAsReadTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->values()[Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1f

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1e

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1d

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_19

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_18

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_17

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_16

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_15

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_14

    :goto_b
    :try_start_c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_13

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_12

    :goto_d
    :try_start_e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_11

    :goto_e
    :try_start_f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_10

    :goto_f
    :try_start_10
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_f

    :goto_10
    :try_start_11
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_e

    :goto_11
    :try_start_12
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_d

    :goto_12
    :try_start_13
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_c

    :goto_13
    :try_start_14
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_b

    :goto_14
    :try_start_15
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_a

    :goto_15
    :try_start_16
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_9

    :goto_16
    :try_start_17
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_8

    :goto_17
    :try_start_18
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_7

    :goto_18
    :try_start_19
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_6

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_5

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_4

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_2

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_1f
    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1f

    :catch_1
    move-exception v1

    goto :goto_1e

    :catch_2
    move-exception v1

    goto :goto_1d

    :catch_3
    move-exception v1

    goto :goto_1c

    :catch_4
    move-exception v1

    goto :goto_1b

    :catch_5
    move-exception v1

    goto :goto_1a

    :catch_6
    move-exception v1

    goto :goto_19

    :catch_7
    move-exception v1

    goto :goto_18

    :catch_8
    move-exception v1

    goto :goto_17

    :catch_9
    move-exception v1

    goto :goto_16

    :catch_a
    move-exception v1

    goto :goto_15

    :catch_b
    move-exception v1

    goto/16 :goto_14

    :catch_c
    move-exception v1

    goto/16 :goto_13

    :catch_d
    move-exception v1

    goto/16 :goto_12

    :catch_e
    move-exception v1

    goto/16 :goto_11

    :catch_f
    move-exception v1

    goto/16 :goto_10

    :catch_10
    move-exception v1

    goto/16 :goto_f

    :catch_11
    move-exception v1

    goto/16 :goto_e

    :catch_12
    move-exception v1

    goto/16 :goto_d

    :catch_13
    move-exception v1

    goto/16 :goto_c

    :catch_14
    move-exception v1

    goto/16 :goto_b

    :catch_15
    move-exception v1

    goto/16 :goto_a

    :catch_16
    move-exception v1

    goto/16 :goto_9

    :catch_17
    move-exception v1

    goto/16 :goto_8

    :catch_18
    move-exception v1

    goto/16 :goto_7

    :catch_19
    move-exception v1

    goto/16 :goto_6

    :catch_1a
    move-exception v1

    goto/16 :goto_5

    :catch_1b
    move-exception v1

    goto/16 :goto_4

    :catch_1c
    move-exception v1

    goto/16 :goto_3

    :catch_1d
    move-exception v1

    goto/16 :goto_2

    :catch_1e
    move-exception v1

    goto/16 :goto_1

    :catch_1f
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mPreviousBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;
    .locals 0

    sput-object p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessagesAsReadTask:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Z
    .locals 1
    .param p1, "messageBubbleView"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->shouldAnimateItem(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageItemLayout;Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .param p1, "itemLayout"    # Lcom/sonyericsson/conversations/ui/MessageItemLayout;
    .param p2, "dateSeparatorText"    # Ljava/lang/CharSequence;
    .param p3, "showDateSeparator"    # Z
    .param p4, "hasWallpaper"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->updateDateSeparator(Lcom/sonyericsson/conversations/ui/MessageItemLayout;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessageAsReadTaskLock:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 86
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDataSetChangedTask:Lcom/sonyericsson/conversations/util/WeakTask;

    .line 93
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShouldMarkMessagesAsRead:Z

    .line 203
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    .line 207
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    .line 211
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagesAlreadyShown:Ljava/util/Set;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsFirstRefresh:Z

    .line 227
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsDeletingAllMessages:Z

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHandler:Landroid/os/Handler;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageKeys:Landroid/util/SparseArray;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    .line 236
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    .line 238
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagePreCacher:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    .line 1361
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 1414
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$3;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemClickListener:Landroid/view/View$OnClickListener;

    .line 252
    return-void
.end method

.method private createItemIdForPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1313
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1317
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2

    .line 1313
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1314
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method private getDateSeparatorText(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "current"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "previous"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v3, 0x0

    .line 341
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 342
    :cond_0
    return-object v3

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 345
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    iget-wide v4, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v6, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->getSeparator(JJ)I

    move-result v2

    .line 346
    .local v2, "separator":I
    const/4 v0, 0x0

    .line 348
    .local v0, "dateSeparatorText":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 373
    iget-wide v4, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->getYear(J)I

    move-result v3

    iget-wide v4, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->getYear(J)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 374
    const-string/jumbo v3, "yyyy"

    iget-wide v4, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .end local v0    # "dateSeparatorText":Ljava/lang/String;
    :cond_2
    :goto_0
    :pswitch_0
    return-object v0

    .line 354
    .restart local v0    # "dateSeparatorText":Ljava/lang/String;
    :pswitch_1
    const v3, 0x7f0b015f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateSeparatorText":Ljava/lang/String;
    goto :goto_0

    .line 357
    .local v0, "dateSeparatorText":Ljava/lang/String;
    :pswitch_2
    const v3, 0x7f0b015e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateSeparatorText":Ljava/lang/String;
    goto :goto_0

    .line 360
    .local v0, "dateSeparatorText":Ljava/lang/String;
    :pswitch_3
    const v3, 0x7f0b015d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateSeparatorText":Ljava/lang/String;
    goto :goto_0

    .line 363
    .local v0, "dateSeparatorText":Ljava/lang/String;
    :pswitch_4
    const v3, 0x7f0b015c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateSeparatorText":Ljava/lang/String;
    goto :goto_0

    .line 366
    .local v0, "dateSeparatorText":Ljava/lang/String;
    :pswitch_5
    const v3, 0x7f0b015b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateSeparatorText":Ljava/lang/String;
    goto :goto_0

    .line 369
    .local v0, "dateSeparatorText":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, "MMMM"

    iget-wide v4, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dateSeparatorText":Ljava/lang/String;
    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private getFileMessageItemViewType(Lcom/sonyericsson/conversations/model/JoynMessage;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 3
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "isBigContent":Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasVisualContent(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->incomingInviteHasImageFile(Lcom/sonyericsson/conversations/model/JoynMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    :cond_0
    const/4 v0, 0x1

    .line 1015
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1051
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1052
    if-eqz v0, :cond_b

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_0
    return-object v1

    .line 1022
    :pswitch_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    if-eqz v0, :cond_2

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_1
    return-object v1

    .line 1024
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_1

    .line 1026
    :cond_3
    if-eqz v0, :cond_4

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_2
    return-object v1

    .line 1027
    :cond_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_2

    .line 1032
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1033
    if-eqz v0, :cond_5

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_3
    return-object v1

    .line 1034
    :cond_5
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_RECEIVED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_3

    .line 1036
    :cond_6
    if-eqz v0, :cond_7

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_INV_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_4
    return-object v1

    .line 1037
    :cond_7
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_INV_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_4

    .line 1043
    :pswitch_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1044
    if-eqz v0, :cond_8

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_5
    return-object v1

    .line 1045
    :cond_8
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_5

    .line 1047
    :cond_9
    if-eqz v0, :cond_a

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_6
    return-object v1

    .line 1048
    :cond_a
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_PROGRESS_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_6

    .line 1053
    :cond_b
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_0

    .line 1055
    :cond_c
    if-eqz v0, :cond_d

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_7
    return-object v1

    .line 1056
    :cond_d
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->FILE_MESSAGE_FAILED_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_7

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getItemViewType(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 947
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v1

    return-object v1
.end method

.method private getItemViewType(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 951
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_0

    .line 952
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMmsItemViewType(Lcom/sonyericsson/conversations/model/MmsMessage;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v1

    return-object v1

    .line 953
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 955
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 957
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown imMessageType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 969
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    .line 968
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 970
    const/4 v1, 0x0

    return-object v1

    .line 959
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->SYSTEM_MESSAGE:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-object v1

    .line 961
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->SYSTEM_MESSAGE:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-object v1

    .line 963
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getFileMessageItemViewType(Lcom/sonyericsson/conversations/model/JoynMessage;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v1

    return-object v1

    .line 965
    :pswitch_3
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_0
    return-object v1

    .line 966
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_0

    .line 973
    .end local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_1
    return-object v1

    .line 974
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->TEXT_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_1

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 856
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 857
    sget-object v3, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    move-object v2, p1

    .line 856
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;J)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    return-object v0
.end method

.method private getMmsItemViewType(Lcom/sonyericsson/conversations/model/MmsMessage;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 979
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 993
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasVisualContent(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v0

    .line 995
    .local v0, "isBigContent":Z
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMMSPreviewEnabled:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasMoreThanOneSlide(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v1

    .line 996
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 997
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BRIEF_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_1
    return-object v2

    .line 981
    .end local v0    # "isBigContent":Z
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getRetrievalStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 989
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_NOTIFICATION:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-object v2

    .line 986
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_DOWNLOADING:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    return-object v2

    .line 995
    .restart local v0    # "isBigContent":Z
    :cond_2
    const/4 v1, 0x0

    .local v1, "isBrief":Z
    goto :goto_0

    .line 998
    .end local v1    # "isBrief":Z
    :cond_3
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BRIEF_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_1

    .line 1000
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1001
    if-eqz v0, :cond_5

    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BIG_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_2
    return-object v2

    :cond_5
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_MO:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_2

    .line 1003
    :cond_6
    if-eqz v0, :cond_7

    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_BIG_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    :goto_3
    return-object v2

    :cond_7
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->MMS_MESSAGE_MT:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    goto :goto_3

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSender(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Participant;
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v3, 0x0

    .line 447
    iget v4, p1, Lcom/sonyericsson/conversations/model/Message;->type:I

    packed-switch v4, :pswitch_data_0

    .line 478
    const-string/jumbo v4, "Unknown message type."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 479
    return-object v3

    .line 449
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    return-object v3

    .line 451
    :pswitch_1
    instance-of v4, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 452
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 453
    .local v2, "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    return-object v3

    .line 455
    .end local v2    # "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message type MMS and message class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 456
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 456
    const-string/jumbo v5, " does not match."

    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 457
    return-object v3

    .line 460
    :pswitch_2
    instance-of v4, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 461
    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 462
    .local v1, "joyn":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 470
    :pswitch_3
    return-object v3

    .line 465
    :pswitch_4
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v0

    .line 466
    .local v0, "im":Lcom/sonymobile/jms/message/ImMessage;
    instance-of v4, v0, Lcom/sonymobile/jms/message/ImUserMessage;

    if-eqz v4, :cond_1

    .line 467
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    check-cast v0, Lcom/sonymobile/jms/message/ImUserMessage;

    .end local v0    # "im":Lcom/sonymobile/jms/message/ImMessage;
    invoke-interface {v0}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 466
    :cond_1
    return-object v3

    .line 473
    .end local v1    # "joyn":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message type JOYN and message class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 474
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 474
    const-string/jumbo v5, " does not match."

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 475
    return-object v3

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getStarStatus(Landroid/database/Cursor;)I
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1351
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 1352
    sget-object v3, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    move-object v2, p1

    .line 1351
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;J)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v7

    .line 1353
    .local v7, "message":Lcom/sonyericsson/conversations/model/Message;
    iget v0, v7, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 1354
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v0

    .line 1355
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1354
    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->getStarStatus(Ljava/lang/String;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v6

    .line 1356
    .local v6, "imStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    invoke-static {v6}, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->imStarStatus2XmsStarStatus(Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)I

    move-result v0

    iput v0, v7, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 1358
    .end local v6    # "imStarStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    :cond_0
    iget v0, v7, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    return v0
.end method

.method private hasMoreThanOneSlide(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v4, 0x0

    .line 889
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v3, :cond_0

    .line 890
    return v4

    :cond_0
    move-object v1, p1

    .line 892
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 893
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 896
    .local v2, "slideShow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasMoreThanOneSlide()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 897
    .end local v2    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Lcom/google/android/mms/MmsException;
    return v4

    .line 901
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    return v4
.end method

.method private hasNormalStatus(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v0, 0x0

    .line 443
    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasSameSender(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 5
    .param p1, "first"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "second"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 429
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 430
    :cond_0
    const/4 v2, 0x0

    .line 439
    :goto_0
    return v2

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v3

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 431
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 432
    iget v3, p1, Lcom/sonyericsson/conversations/model/Message;->type:I

    if-nez v3, :cond_3

    iget v3, p2, Lcom/sonyericsson/conversations/model/Message;->type:I

    if-nez v3, :cond_3

    .line 433
    :cond_2
    const/4 v2, 0x1

    .line 432
    .local v2, "isSame":Z
    goto :goto_0

    .line 435
    .end local v2    # "isSame":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getSender(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    .line 436
    .local v0, "fromFirst":Lcom/sonyericsson/conversations/model/Participant;
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getSender(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v1

    .line 437
    .local v1, "fromSecond":Lcom/sonyericsson/conversations/model/Participant;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Participant;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "isSame":Z
    goto :goto_0

    .end local v2    # "isSame":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "isSame":Z
    goto :goto_0
.end method

.method private hasVisualContent(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v2, 0x0

    .line 905
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v3, :cond_0

    .line 906
    return v2

    .line 907
    :cond_0
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_1

    .line 909
    :try_start_0
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->hasBigContent()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 910
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Lcom/google/android/mms/MmsException;
    return v2

    .line 914
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v3, :cond_4

    .line 915
    check-cast p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 916
    .local v1, "slideShowModel":Lcom/android/mms/model/SlideshowModel;
    if-eqz v1, :cond_2

    .line 917
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasBigContent()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasLocationContent()Z

    move-result v2

    .line 916
    :cond_2
    :goto_0
    return v2

    .line 917
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 919
    .end local v1    # "slideShowModel":Lcom/android/mms/model/SlideshowModel;
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 920
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 921
    return v2
.end method

.method private incomingInviteHasImageFile(Lcom/sonyericsson/conversations/model/JoynMessage;)Z
    .locals 8
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    const/4 v5, 0x0

    .line 1062
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1063
    return v5

    .line 1066
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1089
    :cond_1
    :pswitch_0
    return v5

    .line 1074
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v3

    .line 1075
    .local v3, "imMessage":Lcom/sonymobile/jms/message/ImMessage;
    instance-of v6, v3, Lcom/sonymobile/jms/message/ImFileMessage;

    if-eqz v6, :cond_1

    .line 1077
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    .local v4, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    move-object v2, v3

    .line 1079
    check-cast v2, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 1081
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    :try_start_0
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getFileIcon(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1082
    .local v1, "fileIconUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 1083
    .end local v1    # "fileIconUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    return v5

    .line 1066
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isMessageDateInvalid(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "previous"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "next"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 787
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    :cond_0
    return v5

    .line 790
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 792
    return v4

    .line 793
    :cond_2
    if-nez p2, :cond_4

    .line 794
    iget-wide v0, p3, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v2, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 796
    return v4

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    return v5

    .line 802
    :cond_4
    if-nez p3, :cond_6

    .line 803
    iget-wide v0, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v2, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 805
    return v4

    .line 808
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    return v5

    .line 812
    :cond_6
    iget-wide v0, p3, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v2, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-wide v0, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v2, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 814
    return v4

    .line 815
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 817
    iget-wide v0, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v2, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 819
    return v4

    .line 822
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    return v5

    .line 825
    :cond_9
    iget-wide v0, p3, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v2, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 827
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    return v4

    .line 831
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    return v5
.end method

.method private messagesCanBeStacked(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 12
    .param p1, "first"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "second"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 641
    instance-of v5, p1, Lcom/sonyericsson/conversations/model/XmsMessage;

    if-eqz v5, :cond_2

    instance-of v5, p2, Lcom/sonyericsson/conversations/model/XmsMessage;

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 642
    check-cast v5, Lcom/sonyericsson/conversations/model/XmsMessage;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/model/XmsMessage;->getSubscriptionId()I

    move-result v2

    .local v2, "firstSubscriptionId":I
    move-object v5, p2

    .line 643
    check-cast v5, Lcom/sonyericsson/conversations/model/XmsMessage;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/model/XmsMessage;->getSubscriptionId()I

    move-result v4

    .line 644
    .local v4, "secondSubscriptionId":I
    if-eq v2, v4, :cond_0

    .line 645
    return v6

    .line 648
    :cond_0
    iget v5, p1, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-eq v5, v7, :cond_1

    iget v5, p2, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v5, v7, :cond_2

    .line 649
    :cond_1
    return v6

    .line 655
    .end local v2    # "firstSubscriptionId":I
    .end local v4    # "secondSubscriptionId":I
    :cond_2
    iget-wide v8, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    iget-wide v10, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 656
    .local v0, "dateDiff":J
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v3

    .line 657
    .local v3, "itemViewType":Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-ltz v5, :cond_3

    .line 658
    invoke-static {}, Lcom/android/mms/MmsConfig;->getStackedMessagesDelayTimeMillis()J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-gez v5, :cond_3

    .line 659
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasSameSender(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v5

    .line 657
    if-eqz v5, :cond_3

    .line 660
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasNormalStatus(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v5

    .line 657
    if-eqz v5, :cond_3

    .line 661
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasNormalStatus(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v5

    .line 657
    if-eqz v5, :cond_3

    .line 662
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->isStackable()Z

    move-result v5

    .line 657
    :goto_0
    return v5

    :cond_3
    move v5, v6

    goto :goto_0
.end method

.method private newViewType(Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;Landroid/view/View;)Z
    .locals 2
    .param p1, "itemViewType"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 1135
    const v1, 0x7f0d00fe

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    .line 1136
    .local v0, "type":Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareNormalSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;Landroid/view/View;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bubble"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p4, "itemLayout"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 744
    invoke-virtual {p2, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContactBadgeAnimator(Landroid/content/Context;)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 746
    .local v1, "contactBadgeAnimator":Landroid/animation/AnimatorSet;
    invoke-virtual {p2, p1, p3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContentAnimator(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Landroid/animation/Animator;

    move-result-object v0

    .line 748
    .local v0, "bubbleContentAnimator":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 747
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 750
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 751
    .local v2, "contentAndBadgeAnimator":Landroid/animation/AnimatorSet;
    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 753
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 754
    .local v3, "messageItemHeightAnimator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->RELATIVE_HEIGHT:Landroid/util/Property;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 755
    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 757
    invoke-virtual {v3, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 758
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setRelativeHeight(F)V

    .line 760
    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageListAdapter$8;

    invoke-direct {v4, p0, p4, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$8;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    .line 774
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 743
    return-void

    .line 755
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private prepareStackedSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bubble"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p4, "itemLayout"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 713
    invoke-virtual {p3}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMOContactBadge:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :goto_0
    invoke-virtual {p2, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setContactBadgeAlpha(F)V

    .line 719
    invoke-virtual {p2, p1, p3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContentAnimator(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Landroid/animation/Animator;

    move-result-object v0

    .line 720
    .local v0, "bubbleContentAnimator":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 721
    .local v1, "messageItemHeightAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->RELATIVE_HEIGHT:Landroid/util/Property;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 722
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 724
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p2, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setRelativeHeight(F)V

    .line 726
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;

    invoke-direct {v2, p0, p4, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    .line 739
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 712
    return-void

    .line 716
    .end local v0    # "bubbleContentAnimator":Landroid/animation/Animator;
    .end local v1    # "messageItemHeightAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMTContactBadge:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 722
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInvalidDateMessageKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDataSetChangedTask:Lcom/sonyericsson/conversations/util/WeakTask;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/WeakTask;->getWeakRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method private runSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;ZLandroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bubble"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p4, "isStacked"    # Z
    .param p5, "itemLayout"    # Landroid/view/View;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 670
    :cond_0
    if-eqz p4, :cond_1

    .line 671
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->prepareStackedSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;Landroid/view/View;)V

    .line 676
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mEditorAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mEditorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mEditorAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$6;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    :goto_1
    return-void

    .line 673
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->prepareNormalSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;Landroid/view/View;)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method

.method private shouldAnimateItem(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Z
    .locals 3
    .param p1, "messageBubbleView"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    const/4 v0, 0x0

    .line 1465
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1466
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1472
    return v0

    .line 1469
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1470
    const-string/jumbo v2, "xms-group:"

    .line 1469
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1475
    :cond_1
    return v0

    .line 1466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startMarkAsReadTaskIfNotRunning(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, "unreadJoynMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/JoynMessage;>;"
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessageAsReadTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_0
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessagesAsReadTask:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;

    if-nez v0, :cond_0

    .line 1220
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 1221
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    .line 1220
    invoke-direct {v0, v2, v3, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/ArrayList;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessagesAsReadTask:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;

    .line 1222
    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessagesAsReadTask:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1216
    return-void

    .line 1217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private triggerDataSetChangedOnPassingDateline()V
    .locals 6

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDataSetChangedTask:Lcom/sonyericsson/conversations/util/WeakTask;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/WeakTask;->getWeakRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDataSetChangedTask:Lcom/sonyericsson/conversations/util/WeakTask;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/WeakTask;->getWeakRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 424
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->getStartOfNextDay()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 423
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    return-void
.end method

.method private updateDateSeparator(Lcom/sonyericsson/conversations/ui/MessageItemLayout;Ljava/lang/CharSequence;ZZ)V
    .locals 3
    .param p1, "itemLayout"    # Lcom/sonyericsson/conversations/ui/MessageItemLayout;
    .param p2, "dateSeparatorText"    # Ljava/lang/CharSequence;
    .param p3, "showDateSeparator"    # Z
    .param p4, "hasWallpaper"    # Z

    .prologue
    const/4 v2, 0x0

    .line 327
    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->updateDateSeparator(Ljava/lang/CharSequence;IZ)V

    .line 329
    return-void

    .line 332
    :cond_1
    if-eqz p4, :cond_2

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 337
    .local v0, "dateSeparatorColor":I
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->updateDateSeparator(Ljava/lang/CharSequence;IZ)V

    .line 326
    return-void

    .line 335
    .end local v0    # "dateSeparatorColor":I
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .restart local v0    # "dateSeparatorColor":I
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 485
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    .line 486
    :cond_0
    return-void

    .line 485
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v7, p1

    .line 490
    check-cast v7, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    .line 492
    .local v7, "itemLayout":Lcom/sonyericsson/conversations/ui/MessageItemLayout;
    const v2, 0x7f0d0112

    invoke-virtual {v7, v2}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 493
    .local v4, "bubble":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    if-nez v4, :cond_2

    .line 494
    return-void

    .line 496
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 497
    .local v13, "position":I
    invoke-virtual {v7, v13}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setPosition(I)V

    .line 500
    const/4 v14, 0x0

    .line 501
    .local v14, "previous":Lcom/sonyericsson/conversations/model/Message;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 502
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v14

    .line 504
    .local v14, "previous":Lcom/sonyericsson/conversations/model/Message;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 508
    .end local v14    # "previous":Lcom/sonyericsson/conversations/model/Message;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    .line 510
    .local v5, "message":Lcom/sonyericsson/conversations/model/Message;
    instance-of v2, v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_4

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagePreCacher:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->preCacheAdjacent(Landroid/net/Uri;)V

    .line 515
    :cond_4
    const/4 v12, 0x0

    .line 516
    .local v12, "next":Lcom/sonyericsson/conversations/model/Message;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 517
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v12

    .line 519
    .local v12, "next":Lcom/sonyericsson/conversations/model/Message;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 523
    .end local v12    # "next":Lcom/sonyericsson/conversations/model/Message;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v12}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->isMessageDateInvalid(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 524
    const/4 v15, 0x0

    .line 526
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v16

    .line 526
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v2

    .line 528
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v3

    .line 526
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    .line 529
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v15}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$4;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageItemLayout;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sonymobile/forklift/PropertyLoader;->targetView(Landroid/view/View;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 539
    if-eqz v12, :cond_f

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 540
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->messagesCanBeStacked(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v9

    .line 543
    :goto_1
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->isMarkable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 544
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    invoke-virtual {v7, v2}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setMarkMode(Z)V

    .line 545
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    if-eqz v2, :cond_10

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v2}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setParticipantStrings(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v4, v9}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setStacked(Z)V

    .line 556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSearchedMessageIndex:I

    if-ne v2, v13, :cond_11

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 561
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_7

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 572
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    if-eqz v2, :cond_8

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    invoke-interface {v2, v13}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;->onMessageListItemPopulated(I)V

    .line 577
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setContactBadge(Lcom/sonyericsson/conversations/model/Message;Ljava/util/List;)V

    .line 579
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 580
    .local v11, "messageKey":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .line 581
    .local v10, "lastPosition":I
    if-ne v13, v10, :cond_13

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagesAlreadyShown:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v8, 0x0

    .line 584
    .local v8, "isNewLastMessage":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_14

    add-int/lit8 v2, v10, -0x1

    if-ne v13, v2, :cond_14

    if-eqz v9, :cond_14

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mPreviousBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-nez v2, :cond_9

    .line 586
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mPreviousBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 593
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    if-eqz v2, :cond_a

    .line 594
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->getMessageBubble()Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->isStacked()Z

    move-result v2

    if-nez v2, :cond_15

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mPreviousBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-eqz v2, :cond_15

    .line 598
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->INVISIBLE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .line 597
    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setTimestampAndContactBadgeVisibility(Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;)V

    .line 603
    :goto_6
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    invoke-direct {v2, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    .line 607
    :cond_a
    if-eqz v8, :cond_18

    .line 609
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsFirstRefresh:Z

    if-eqz v2, :cond_16

    .line 610
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsFirstRefresh:Z

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 611
    const/4 v3, 0x0

    .line 612
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 611
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v3, v2, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setPadding(IIII)V

    .line 625
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagesAlreadyShown:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShouldMarkMessagesAsRead:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsDeletingAllMessages:Z

    if-eqz v2, :cond_19

    .line 633
    :cond_c
    :goto_8
    invoke-static {}, Lcom/sonymobile/conversations/util/LogUtil;->isTestLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v8, :cond_d

    .line 634
    const-string/jumbo v2, "Performance - New bubble loaded in bottom of message list"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 484
    :cond_d
    return-void

    .line 525
    .end local v8    # "isNewLastMessage":Z
    .end local v10    # "lastPosition":I
    .end local v11    # "messageKey":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getDateSeparatorText(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v15

    .local v15, "separator":Ljava/lang/String;
    goto/16 :goto_0

    .line 539
    .end local v15    # "separator":Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    .local v9, "isStacked":Z
    goto/16 :goto_1

    .line 548
    .end local v9    # "isStacked":Z
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 559
    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    goto/16 :goto_3

    .line 582
    .restart local v10    # "lastPosition":I
    .restart local v11    # "messageKey":Ljava/lang/String;
    :cond_12
    const/4 v8, 0x1

    .restart local v8    # "isNewLastMessage":Z
    goto/16 :goto_4

    .line 581
    .end local v8    # "isNewLastMessage":Z
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "isNewLastMessage":Z
    goto/16 :goto_4

    .line 590
    :cond_14
    sget-object v2, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->USE_STACKED_STATUS:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .line 589
    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setTimestampAndContactBadgeVisibility(Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;)V

    goto/16 :goto_5

    .line 601
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;->getAnimationState()Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    move-result-object v2

    .line 600
    invoke-virtual {v4, v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->updateTimestampToAnimationState(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;)V

    goto :goto_6

    .line 613
    :cond_16
    instance-of v2, v4, Lcom/sonyericsson/conversations/ui/SystemMessageBubbleView;

    if-nez v2, :cond_b

    .line 615
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v2, v3, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setPadding(IIII)V

    .line 616
    if-eqz v14, :cond_17

    .line 617
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->messagesCanBeStacked(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v6

    :goto_9
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 618
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->runSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;ZLandroid/view/View;)V

    goto :goto_7

    .line 616
    :cond_17
    const/4 v6, 0x0

    .local v6, "isStackedWithPreviousMessage":Z
    goto :goto_9

    .line 623
    .end local v6    # "isStackedWithPreviousMessage":Z
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 622
    const/4 v3, 0x0

    .line 623
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 622
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v3, v2, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setPadding(IIII)V

    goto/16 :goto_7

    .line 629
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShouldMarkMessagesAsRead:Z

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->markAllMessagesAsRead()V

    goto/16 :goto_8
.end method

.method public cancelSendAnimationsInProgress()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mBubbleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1373
    :cond_0
    return-void
.end method

.method public checkAnyMessageStarred(Landroid/util/SparseBooleanArray;)Z
    .locals 6
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1331
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1332
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 1333
    :cond_0
    return v4

    .line 1335
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1336
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 1337
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1336
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1340
    :cond_3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1341
    return v4

    .line 1343
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getStarStatus(Landroid/database/Cursor;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1344
    return v5

    .line 1347
    :cond_5
    return v4
.end method

.method public clearHighPattern()V
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 1326
    return-void
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1304
    .local v0, "itemIdForPosition":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 1305
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->createItemIdForPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1306
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1308
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 936
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->createKey(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 937
    :cond_0
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 1094
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1095
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cursor is null, ignore the view at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1097
    return v3

    .line 1098
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cursor is closed, ignore the view at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1100
    return v3

    .line 1101
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Ignore this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1103
    return v3

    .line 1105
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->ordinal()I

    move-result v1

    return v1
.end method

.method public getMessageIndexFromUri(Landroid/net/Uri;)I
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, -0x1

    .line 862
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    .line 864
    .local v3, "target":Lcom/sonyericsson/conversations/model/Message;
    if-nez v3, :cond_0

    .line 866
    return v6

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 870
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 872
    return v6

    .line 875
    :cond_1
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 876
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 877
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 879
    .local v1, "current":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 880
    return v2

    .line 875
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 885
    .end local v1    # "current":Lcom/sonyericsson/conversations/model/Message;
    :cond_3
    return v6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1112
    .local v0, "currentCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1113
    const-string/jumbo v3, "Cursor is null, create an empty view"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1114
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1131
    .local v2, "v":Landroid/view/View;
    :goto_0
    return-object v2

    .line 1115
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1116
    const-string/jumbo v3, "Cursor is closed, create an empty view"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1117
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0

    .line 1118
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1119
    const-string/jumbo v3, "Cursor couldn\'t move to position, create an empty view"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1120
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0

    .line 1122
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v1

    .line 1123
    .local v1, "itemViewType":Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    if-eqz p2, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->newViewType(Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1124
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, p3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1128
    .restart local v2    # "v":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v3, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1126
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    move-object v2, p2

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->values()[Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1323
    const/4 v0, 0x1

    return v0
.end method

.method public init(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMMSPreviewEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMMSPreviewEnabled:Z

    .line 262
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 264
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 266
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    .line 269
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    .line 271
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessageAsReadTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->sMarkMessagesAsReadTask:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 278
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/model/Participant;)V

    .line 280
    .local v0, "getReceiverStringTask":Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    .end local v0    # "getReceiverStringTask":Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagesAlreadyShown:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 286
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLastClickedItemHolder:Lcom/sonyericsson/conversations/ui/MessageListAdapter$LastClickedItemHolder;

    .line 287
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsFirstRefresh:Z

    .line 288
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    .line 289
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagePreCacher:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagePreCacher:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessagePreCacher:Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessagePreCacher;->setThreadId(J)V

    .line 259
    return-void

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 283
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 845
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->isJoynMessageType(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 849
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(I)I

    move-result v1

    .line 850
    .local v1, "type":I
    sget-object v4, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->SYSTEM_MESSAGE:Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_1

    :goto_0
    return v2

    .line 846
    .end local v1    # "type":I
    :cond_0
    return v3

    .restart local v1    # "type":I
    :cond_1
    move v2, v3

    .line 850
    goto :goto_0

    .line 852
    .end local v1    # "type":I
    :cond_2
    return v2
.end method

.method public isStarredItem(I)Z
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 926
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 927
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 928
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getStarStatus(Landroid/database/Cursor;)I

    move-result v1

    .line 929
    .local v1, "starStatus":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 931
    .end local v1    # "starStatus":I
    :cond_1
    return v3
.end method

.method public markAllMessagesAsRead()V
    .locals 6

    .prologue
    .line 1191
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "markAllMessagesAsRead called for threadID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1193
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 1192
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1195
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v2, "unreadJoynMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/JoynMessage;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1197
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1198
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1213
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->startMarkAsReadTaskIfNotRunning(Ljava/util/ArrayList;)V

    .line 1190
    return-void

    .line 1198
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1199
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Marking all messages as read ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1203
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->isJoynMessageType(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1205
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 1206
    .local v1, "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isRead()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1210
    .end local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1207
    .restart local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_5
    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .end local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 1146
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessage(Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    .line 1147
    .local v5, "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;

    move-result-object v3

    .line 1149
    .local v3, "itemViewType":Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030062

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1150
    .local v4, "listItem":Landroid/view/View;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->isSentMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 1154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 1152
    invoke-virtual {v4, v9, v6, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1157
    :cond_0
    const v6, 0x7f0d0111

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1158
    .local v1, "bubbleStub":Landroid/view/ViewStub;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->getBubbleLayout()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1159
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 1161
    .local v0, "bubble":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    const v6, 0x7f0d00fd

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1162
    .local v2, "contentStub":Landroid/view/ViewStub;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$ItemViewType;->getContentLayout()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1163
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setBubbleContent(Landroid/view/View;)V

    .line 1164
    const v6, 0x7f0d0112

    invoke-virtual {v4, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1165
    const v6, 0x7f0d00fe

    invoke-virtual {v4, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1167
    return-object v4
.end method

.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 383
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShouldMarkMessagesAsRead:Z

    .line 384
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->reset()V

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    const-string/jumbo v3, "Called notifyDataSetChanged with a closed cursor"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 393
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 396
    .local v2, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->notifyDataSetChanged()V

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->triggerDataSetChangedOnPassingDateline()V

    .line 382
    :cond_1
    :goto_1
    return-void

    .line 399
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->reset()V

    .line 407
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->notifyDataSetInvalidated()V

    .line 405
    return-void
.end method

.method public setContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "contextMenuListener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1170
    return-void
.end method

.method public setDeletingAllMessages(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1514
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsDeletingAllMessages:Z

    .line 1513
    return-void
.end method

.method public setEditorAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "editorAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mEditorAnimator:Landroid/animation/Animator;

    .line 1389
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 1284
    return-void
.end method

.method public setListItemPopulateListener(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 1183
    return-void
.end method

.method public setMarkedListener(Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    .line 1179
    return-void
.end method

.method public setMessageListMarkableMode(Z)V
    .locals 0
    .param p1, "isInMarkMode"    # Z

    .prologue
    .line 1298
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    .line 1297
    return-void
.end method

.method public setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V
    .locals 0
    .param p1, "messageStatusPopupMenuListener"    # Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    .line 1175
    return-void
.end method

.method public setSearchedMessageIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1523
    iput p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSearchedMessageIndex:I

    .line 1522
    return-void
.end method

.method public setStackedContactBadgeView(Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "stackedContactBadgeView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v3, 0x4

    .line 1394
    const v1, 0x7f0d0088

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMOContactBadge:Landroid/view/View;

    .line 1395
    const v1, 0x7f0d0089

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMTContactBadge:Landroid/view/View;

    .line 1396
    invoke-static {}, Lcom/sonyericsson/conversations/model/Participant;->getMySelfParticipant()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    .line 1397
    .local v0, "loadMyselfProperty":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    .line 1398
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$9;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    .line 1397
    invoke-virtual {v1, v2}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 1408
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 1409
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMTContactBadge:Landroid/view/View;

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 1408
    invoke-static {v2, v1}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setContactImage(Ljava/util/List;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 1410
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMOContactBadge:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mStackedMTContactBadge:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1386
    invoke-super {p0, p1}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method updateConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 1379
    return-void
.end method
