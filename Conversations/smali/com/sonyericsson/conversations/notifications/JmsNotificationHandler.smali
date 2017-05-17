.class public Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;
.super Ljava/lang/Object;
.source "JmsNotificationHandler.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImTextMessageEventListener;
.implements Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;
.implements Lcom/sonymobile/jms/message/ImFileMessageEventListener;
.implements Lcom/sonymobile/jms/message/ImFileMessageAcceptRejectListener;
.implements Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;


# static fields
.field private static synthetic -com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I


# instance fields
.field private final mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

.field private final mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

.field private mLastFileProgressTime:J

.field private mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;


# direct methods
.method private static synthetic -getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->values()[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-com_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues:[I

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

.method private static synthetic -getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1f

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1e

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1d

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_19

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_18

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_17

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_16

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_15

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_14

    :goto_b
    :try_start_c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_13

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_12

    :goto_d
    :try_start_e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_11

    :goto_e
    :try_start_f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_10

    :goto_f
    :try_start_10
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_f

    :goto_10
    :try_start_11
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_e

    :goto_11
    :try_start_12
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_d

    :goto_12
    :try_start_13
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_c

    :goto_13
    :try_start_14
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_b

    :goto_14
    :try_start_15
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_a

    :goto_15
    :try_start_16
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_9

    :goto_16
    :try_start_17
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_8

    :goto_17
    :try_start_18
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_7

    :goto_18
    :try_start_19
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_6

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_5

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_4

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_2

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_1f
    sput-object v0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

.method public constructor <init>(Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;)V
    .locals 2
    .param p1, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .param p2, "imConversationApi"    # Lcom/sonymobile/jms/conversation/ImConversationApi;
    .param p3, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p4, "notificationManagerProxy"    # Lcom/sonyericsson/conversations/notifications/NotificationService$NotificationManagerProxy;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mLastFileProgressTime:J

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    .line 59
    new-instance v0, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-direct {v0, p4, p3}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;-><init>(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->registerMessageListener()V

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->registerInvitationListener()V

    .line 56
    return-void
.end method

.method private handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    .locals 1
    .param p1, "notification"    # Lcom/sonyericsson/conversations/notifications/ImNotification;
    .param p2, "type"    # Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    .param p3, "isSilent"    # Z

    .prologue
    .line 364
    instance-of v0, p1, Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 363
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0
.end method

.method private registerInvitationListener()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/conversation/ImConversationApi;->registerImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V

    .line 234
    return-void
.end method

.method private registerMessageListener()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 230
    return-void
.end method

.method private shouldBeIgnoredAsTooOftenEvent()Z
    .locals 6

    .prologue
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 352
    .local v0, "currTime":J
    iget-wide v2, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mLastFileProgressTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 353
    const/4 v2, 0x1

    return v2

    .line 355
    :cond_0
    iput-wide v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mLastFileProgressTime:J

    .line 356
    const/4 v2, 0x0

    return v2
.end method

.method private unregisterInvitationListener()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mImConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/conversation/ImConversationApi;->unregisterImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V

    .line 242
    return-void
.end method

.method private unregisterMessageListener()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 238
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->unregisterMessageListener()V

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->unregisterInvitationListener()V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->cleanup()V

    .line 224
    return-void
.end method

.method public onImConversationInvitationReceived(Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;)V
    .locals 11
    .param p1, "invitation"    # Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;

    .prologue
    const/4 v10, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 119
    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    if-nez v3, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v6

    .line 124
    .local v6, "imInvitationStatus":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 157
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v5, "Detected unsupported im conversation invitation status "

    .line 157
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    const-string/jumbo v5, "!"

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 117
    :goto_0
    :pswitch_1
    return-void

    .line 127
    :pswitch_2
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->getMessage()Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v7

    .line 128
    .local v7, "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    new-instance v9, Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    .line 132
    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v4

    .line 131
    invoke-direct {v9, v7, v3, v4, v5}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;-><init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 133
    .local v9, "textNotification":Lcom/sonyericsson/conversations/notifications/ImTextNotification;
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    .line 134
    sget-object v5, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 133
    invoke-virtual {v4, v9, v5, v10}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 137
    .end local v9    # "textNotification":Lcom/sonyericsson/conversations/notifications/ImTextNotification;
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;

    .line 138
    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v4

    .line 137
    invoke-direct {v0, v7, v3, v4, v5}, Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;-><init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 139
    .local v0, "groupInvitation":Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;
    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    if-ne v6, v4, :cond_2

    const/4 v8, 0x1

    .line 140
    .local v8, "isSilent":Z
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    .line 141
    sget-object v5, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 140
    invoke-virtual {v4, v0, v5, v8}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 139
    .end local v8    # "isSilent":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isSilent":Z
    goto :goto_1

    .line 146
    .end local v0    # "groupInvitation":Lcom/sonyericsson/conversations/notifications/ImGroupInvitationNotification;
    .end local v7    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v8    # "isSilent":Z
    :pswitch_3
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;->getMessage()Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v2

    .line 148
    .local v2, "imMsg":Lcom/sonymobile/jms/message/ImTextMessage;
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;

    .line 149
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v4

    .line 148
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;-><init>(Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;)V

    .line 151
    .local v1, "failNotification":Lcom/sonyericsson/conversations/notifications/ImConversationInvitationFailNotification;
    sget-object v4, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 150
    invoke-direct {p0, v1, v4, v10}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onImFileMessageAccepted(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 333
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .line 334
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v4

    sget-object v6, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ACCEPTED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-object v2, p2

    move-object v3, p1

    .line 333
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V

    .line 336
    .local v1, "fileNotification":Lcom/sonyericsson/conversations/notifications/ImFileNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x1

    .line 335
    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 332
    return-void
.end method

.method public onImFileMessageDeliveryProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 300
    return-void
.end method

.method public onImFileMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 307
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 320
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 321
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    .line 322
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    .line 321
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 324
    .local v1, "failNotification":Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x0

    .line 323
    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V
    .locals 14
    .param p1, "invitation"    # Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;

    .prologue
    const/4 v13, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->getId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    .line 166
    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    if-nez v3, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->getStatus()Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    move-result-object v6

    .line 171
    .local v6, "status":Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-getcom_sonymobile_jms_conversation_ImConversationInvitationEventListener$ImInvitationStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {v6}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v4, "Detected unsupported im file invitation status "

    .line 198
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string/jumbo v4, "!"

    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 164
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->getMessage()Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v2

    .line 182
    .local v2, "imMsg":Lcom/sonymobile/jms/message/ImFileMessage;
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;

    .line 183
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v4

    .line 182
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;)V

    .line 185
    .local v1, "failNotification":Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 184
    invoke-direct {p0, v1, v0, v13}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 191
    .end local v1    # "failNotification":Lcom/sonyericsson/conversations/notifications/ImFileInvitationFailNotification;
    .end local v2    # "imMsg":Lcom/sonymobile/jms/message/ImFileMessage;
    :pswitch_2
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->getMessage()Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v8

    .line 192
    .local v8, "msg":Lcom/sonymobile/jms/message/ImFileMessage;
    new-instance v7, Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .line 193
    invoke-virtual {v8}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v10

    sget-object v12, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->INVITED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-object v9, v3

    .line 192
    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V

    .line 195
    .local v7, "fileNotification":Lcom/sonyericsson/conversations/notifications/ImFileNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 194
    invoke-direct {p0, v7, v0, v13}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onImFileMessageReceiveProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 249
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v2

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->shouldBeIgnoredAsTooOftenEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .line 253
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v4

    sget-object v6, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-object v2, p2

    move-object v3, p1

    .line 252
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V

    .line 254
    .local v1, "fileNotification":Lcom/sonyericsson/conversations/notifications/ImFileNotification;
    invoke-virtual {v1, p3, p4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;->updateCurrentFileSize(J)V

    .line 256
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x1

    .line 255
    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 248
    return-void
.end method

.method public onImFileMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    const/4 v9, 0x0

    .line 262
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    :pswitch_0
    return-void

    .line 264
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification;

    .line 265
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v4

    sget-object v6, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    move-object v2, p2

    move-object v3, p1

    .line 264
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImFileNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;)V

    .line 267
    .local v1, "fileNotification":Lcom/sonyericsson/conversations/notifications/ImFileNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 266
    invoke-direct {p0, v1, v0, v9}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 281
    .end local v1    # "fileNotification":Lcom/sonyericsson/conversations/notifications/ImFileNotification;
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 282
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 283
    new-instance v3, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;

    .line 284
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v6

    move-object v4, p2

    move-object v5, p1

    move-object v8, p3

    .line 283
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;-><init>(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 286
    .local v3, "failNotification":Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 285
    invoke-direct {p0, v3, v0, v9}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 289
    .end local v3    # "failNotification":Lcom/sonyericsson/conversations/notifications/ImFileMessageFailNotification;
    :pswitch_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 290
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onImFileMessageRejected(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 341
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 342
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onImTextMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 7
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 97
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 104
    :sswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;

    .line 107
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;-><init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 109
    .local v1, "failNotification":Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;
    sget-object v0, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onImTextMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    const/4 v7, 0x0

    .line 68
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImTextNotification;

    .line 71
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v2

    .line 70
    invoke-direct {v0, p2, p1, v2, v3}, Lcom/sonyericsson/conversations/notifications/ImTextNotification;-><init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 72
    .local v0, "textNotification":Lcom/sonyericsson/conversations/notifications/ImTextNotification;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->mTextMsgHandler:Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;

    .line 73
    sget-object v3, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 72
    invoke-virtual {v2, v0, v3, v7}, Lcom/sonyericsson/conversations/notifications/JmsMessageNotificationHandler;->addItem(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 82
    .end local v0    # "textNotification":Lcom/sonyericsson/conversations/notifications/ImTextNotification;
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeSpecificNotification(Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;

    .line 85
    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;-><init>(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 87
    .local v1, "failNotification":Lcom/sonyericsson/conversations/notifications/ImTextMessageFailNotification;
    sget-object v2, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 86
    invoke-direct {p0, v1, v2, v7}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onUndeliveredImUserMessagesDetected(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 4
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 211
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    .line 212
    .local v1, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shouldAlwaysResendUndeliveredMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    invoke-direct {v0, p1, v2, v3}, Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;J)V

    .line 217
    .local v0, "failNotification":Lcom/sonyericsson/conversations/notifications/ImUndeliveredNotification;
    sget-object v2, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->JOYN_FAILED:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 218
    const/4 v3, 0x0

    .line 217
    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/notifications/JmsNotificationHandler;->handleNotification(Lcom/sonyericsson/conversations/notifications/ImNotification;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V

    .line 210
    return-void
.end method
