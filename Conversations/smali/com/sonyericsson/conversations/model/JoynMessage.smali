.class public Lcom/sonyericsson/conversations/model/JoynMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "JoynMessage.java"


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I


# instance fields
.field private mData:Ljava/lang/String;

.field private mImMsg:Lcom/sonymobile/jms/message/ImMessage;

.field private mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

.field private mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

.field private mIsGroupMessage:Z

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_DOWNLOAD:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DISPLAYED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->FAILED_DISPLAY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_19

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_18

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_17

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_16

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_15

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_14

    :goto_b
    :try_start_c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_13

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_12

    :goto_d
    :try_start_e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

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

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_d

    :goto_12
    :try_start_13
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_c

    :goto_13
    :try_start_14
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_b

    :goto_14
    :try_start_15
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_a

    :goto_15
    :try_start_16
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_9

    :goto_16
    :try_start_17
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_8

    :goto_17
    :try_start_18
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_7

    :goto_18
    :try_start_19
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_6

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_5

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_4

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_2

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_1f
    sput-object v0, Lcom/sonyericsson/conversations/model/JoynMessage;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->type:I

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 145
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 147
    iput v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->type:I

    .line 149
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v6

    .line 150
    .local v6, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mUri:Landroid/net/Uri;

    .line 151
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->isGroupMessage(Landroid/database/Cursor;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mIsGroupMessage:Z

    .line 152
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 153
    invoke-static {}, Lcom/sonyericsson/conversations/model/JoynMessage;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v12}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v10, "Detected unknown message type "

    .line 215
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 215
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 221
    :goto_0
    sget-object v9, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    iget-object v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-ne v9, v10, :cond_0

    .line 222
    const/4 v9, 0x5

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 144
    .end local v6    # "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    :cond_0
    :goto_1
    return-void

    .line 155
    .restart local v6    # "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    :pswitch_0
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImTextMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v7

    .line 157
    .local v7, "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImTextMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    move-result-object v8

    .line 158
    .local v8, "imTextMessageDeliveryStatus":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    iput-object v7, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    .line 159
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->isTextMessageRead(Landroid/database/Cursor;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mRead:Z

    .line 160
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asTextMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v11

    iput-object v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 161
    invoke-static {v8}, Lcom/sonyericsson/conversations/model/MessageUtil;->imTextMessageDeliveryStatus2DeliveryStatus(Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)I

    move-result v11

    iput v11, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->deliveryStatus:I

    .line 163
    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImTextMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v11

    sget-object v12, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-ne v11, v12, :cond_1

    :goto_2
    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 164
    iget v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    if-ne v9, v10, :cond_2

    .line 165
    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImTextMessage;->getLocalTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    .line 169
    :goto_3
    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mData:Ljava/lang/String;

    .line 170
    const/4 v9, 0x3

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->starStatus:I
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v6    # "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .end local v7    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v8    # "imTextMessageDeliveryStatus":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v9, "Failed to extract data from cursor for joyn message!"

    .line 226
    invoke-static {v9, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .end local v0    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v6    # "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .restart local v7    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .restart local v8    # "imTextMessageDeliveryStatus":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    :cond_1
    move v9, v10

    .line 163
    goto :goto_2

    .line 167
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/sonymobile/jms/message/ImTextMessage;->getSentTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    goto :goto_3

    .line 173
    .end local v7    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v8    # "imTextMessageDeliveryStatus":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    :pswitch_1
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImFileMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v2

    .line 175
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImFileMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    move-result-object v3

    .line 176
    .local v3, "imFileMessageDeliveryStatus":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    .line 177
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->isFileMessageRead(Landroid/database/Cursor;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mRead:Z

    .line 178
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asFileMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 179
    invoke-static {v3}, Lcom/sonyericsson/conversations/model/MessageUtil;->imFileMessageDeliveryStatus2DeliveryStatus(Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->deliveryStatus:I

    .line 181
    sget-object v9, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    iget-object v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-ne v9, v10, :cond_3

    .line 182
    const/4 v9, 0x2

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 192
    :goto_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "fileUri":Landroid/net/Uri;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    iput-object v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mData:Ljava/lang/String;

    .line 194
    const/4 v9, 0x3

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->starStatus:I

    goto/16 :goto_0

    .line 184
    .end local v1    # "fileUri":Landroid/net/Uri;
    :cond_3
    sget-object v9, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v10

    if-ne v9, v10, :cond_4

    .line 185
    const/4 v9, 0x0

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 186
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getSentTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    goto :goto_4

    .line 188
    :cond_4
    const/4 v9, 0x3

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 189
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    goto :goto_4

    .line 193
    .restart local v1    # "fileUri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 197
    .end local v1    # "fileUri":Landroid/net/Uri;
    .end local v2    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v3    # "imFileMessageDeliveryStatus":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    :pswitch_2
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImSystemMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImSystemMessage;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;

    .line 199
    .local v4, "imJoinedSystemMessage":Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;
    iput-object v4, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    .line 200
    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;->getLocalTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    .line 201
    const/4 v9, 0x0

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 202
    const/4 v9, 0x2

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->starStatus:I

    .line 203
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mRead:Z

    goto/16 :goto_0

    .line 206
    .end local v4    # "imJoinedSystemMessage":Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;
    :pswitch_3
    invoke-interface {v6, p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImSystemMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImSystemMessage;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;

    .line 208
    .local v5, "imLeftSystemMessage":Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;
    iput-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    .line 209
    invoke-virtual {v5}, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->getLocalTimestamp()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    .line 210
    const/4 v9, 0x0

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 211
    const/4 v9, 0x2

    iput v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->starStatus:I

    .line 212
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mRead:Z
    :try_end_1
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/Message;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slideshowModel"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 136
    new-instance v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/JoynMessage;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonyericsson/conversations/model/JoynMessage;->box:I

    .line 139
    iput-object p1, v0, Lcom/sonyericsson/conversations/model/JoynMessage;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 141
    return-object v0
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 132
    new-instance v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/model/JoynMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/JoynMessage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveImMessage(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/conversations/model/JoynMessage;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_0
    return-object v2

    .line 119
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v3, "Failed to get joyn message from cursor \'"

    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    const-string/jumbo v3, "\'"

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_1
    return-object v4

    .line 124
    .end local v1    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catchall_0
    move-exception v2

    .line 125
    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_2
    throw v2
.end method

.method private getImMessageStatusText()Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f0b007f

    .line 232
    invoke-static {}, Lcom/sonyericsson/conversations/model/JoynMessage;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 260
    const v1, 0x7f0b0079

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 237
    const v1, 0x7f0b0080

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 240
    const v1, 0x7f0b007a

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 244
    const v1, 0x7f0b007b

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 251
    const v1, 0x7f0b007d

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 256
    const v1, 0x7f0b007e

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getMessageDetailsText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mIsGroupMessage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v0, v1, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getOutgoingImGroupTextMessageStatus()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v0, v1, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getOutgoingImGroupFileMessageStatus()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v0, v1, :cond_2

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getStatusText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 431
    const v1, 0x7f0b007b

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 434
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNameStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/String;
    .locals 4
    .param p2, "imGroupFileMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;",
            ">;",
            "Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "imGroupFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 554
    .local v0, "filteredRecipientNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imFileMessageDeliveryInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;

    .line 555
    .local v1, "imFileMessageDeliveryInfo":Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->getImFileMessageDeliveryStatus()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 558
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;->getRecipientNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    .end local v1    # "imFileMessageDeliveryInfo":Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getNameStringForRecipientNumbers(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNameStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/String;
    .locals 4
    .param p2, "imGroupTextMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;",
            ">;",
            "Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "imGroupTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 479
    .local v0, "filteredRecipientNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imTextMessageDeliveryInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;

    .line 480
    .local v1, "imTextMessageDeliveryInfo":Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->getImTextMessageDeliveryStatus()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 483
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;->getRecipientNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    .end local v1    # "imTextMessageDeliveryInfo":Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getNameStringForRecipientNumbers(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNameStringForRecipientNumbers(Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "recipientNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    .line 441
    .local v3, "nbrOfPersons":I
    if-nez v3, :cond_0

    .line 442
    const/4 v7, 0x0

    return-object v7

    .line 444
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 445
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 447
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 446
    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/contact/DisplayName;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 450
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 452
    const v8, 0x7f0b01da

    .line 451
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "lastDivider":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    const v8, 0x7f0b01d9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "divider":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 458
    .local v5, "recipientNumberIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 459
    .local v4, "recipientIndex":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 460
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    add-int/lit8 v7, v3, -0x2

    if-ge v4, v7, :cond_3

    .line 464
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 465
    :cond_3
    add-int/lit8 v7, v3, -0x2

    if-ne v4, v7, :cond_2

    .line 468
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 472
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getOutgoingImGroupFileMessageStatus()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 598
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 599
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getImGroupFileMessageDeliveryInfos(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 600
    .local v1, "imGroupFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getStatusText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 606
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 608
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .line 606
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 611
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .line 609
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .line 612
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .line 615
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 618
    .end local v1    # "imGroupFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v2, "Failed to get group file message delivery status for "

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    return-object v2
.end method

.method private getOutgoingImGroupTextMessageStatus()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 523
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 524
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getImGroupTextMessageDeliveryInfos(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 525
    .local v1, "imGroupTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 530
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 532
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DISPLAYED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    .line 530
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 535
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    .line 533
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    .line 536
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 541
    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    .line 539
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatusStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 543
    .end local v1    # "imGroupTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v2, "Failed to get group text message delivery status for "

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    return-object v2
.end method

.method private getStatusStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/StringBuilder;
    .locals 5
    .param p2, "imGroupFileMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;",
            ">;",
            "Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "imGroupFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getNameStringForImGroupFileMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    return-object v1

    .line 572
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/JoynMessage;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImFileMessageDeliveryStatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown group file message delivery status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    const-string/jumbo v2, " from "

    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    return-object v1

    .line 574
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 575
    aput-object v0, v3, v4

    const v4, 0x7f0b0200

    .line 574
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 577
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 578
    aput-object v0, v3, v4

    const v4, 0x7f0b01ff

    .line 577
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 580
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 582
    aput-object v0, v3, v4

    .line 581
    const v4, 0x7f0b01fe

    .line 580
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 584
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 588
    aput-object v0, v3, v4

    .line 587
    const v4, 0x7f0b0201

    .line 585
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getStatusStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/StringBuilder;
    .locals 5
    .param p2, "imGroupTextMessageDeliveryStatus"    # Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;",
            ">;",
            "Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "imGroupTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getNameStringForImGroupTextMessageDeliveryStatus(Ljava/util/Set;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    return-object v1

    .line 497
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/JoynMessage;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImTextMessageDeliveryStatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown group text message delivery status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    const-string/jumbo v2, " from "

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    return-object v1

    .line 499
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 500
    aput-object v0, v3, v4

    const v4, 0x7f0b0200

    .line 499
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 502
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 503
    aput-object v0, v3, v4

    const v4, 0x7f0b01ff

    .line 502
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 505
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 507
    aput-object v0, v3, v4

    .line 506
    const v4, 0x7f0b01fe

    .line 505
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 509
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 513
    aput-object v0, v3, v4

    .line 512
    const v4, 0x7f0b0201

    .line 510
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "mime":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;-><init>()V

    .line 629
    .local v1, "attachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    invoke-virtual {v1, v7}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setNumberOfAttachments(I)V

    .line 630
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isUnspecified(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 631
    :cond_0
    invoke-virtual {v1, v8}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    .line 657
    :goto_0
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mIsGroupMessage:Z

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setIsGroupThread(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getDirection()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    instance-of v5, v5, Lcom/sonymobile/jms/message/ImUserMessage;

    if-eqz v5, :cond_1

    .line 659
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v5, Lcom/sonymobile/jms/message/ImUserMessage;

    invoke-interface {v5}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 661
    .local v3, "sender":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setSenderString(Ljava/lang/String;)V

    .line 663
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    return-object v1

    .line 632
    :cond_2
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 633
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_0

    .line 634
    :cond_3
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 635
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_0

    .line 636
    :cond_4
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 637
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_0

    .line 638
    :cond_5
    const-string/jumbo v5, "text/x-vCalendar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 639
    const-string/jumbo v5, "text/vcalendar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 638
    if-eqz v5, :cond_7

    .line 640
    :cond_6
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_0

    .line 641
    :cond_7
    const-string/jumbo v5, "text/x-vCard"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 642
    const-string/jumbo v5, "text/vcard"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 641
    if-eqz v5, :cond_a

    .line 643
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 644
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_9

    invoke-static {p1, v4}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 645
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto/16 :goto_0

    .line 647
    :cond_9
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto/16 :goto_0

    .line 650
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_a
    const-string/jumbo v5, "text/plain"

    .line 649
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 650
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    instance-of v5, v5, Lcom/sonymobile/jms/message/ImTextMessage;

    .line 649
    if-eqz v5, :cond_b

    .line 651
    invoke-virtual {v1, v6}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    .line 652
    invoke-virtual {v1, v6}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setNumberOfAttachments(I)V

    goto/16 :goto_0

    .line 654
    :cond_b
    invoke-virtual {v1, v8}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto/16 :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 12

    .prologue
    const v11, 0x7f0b0065

    const/4 v10, 0x1

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0062

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-static {}, Lcom/sonyericsson/conversations/model/JoynMessage;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v5

    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v8}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 366
    .end local v1    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :goto_0
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 368
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0064

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_1
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 376
    invoke-virtual {v1}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v0

    .line 380
    .local v0, "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 381
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 382
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    const-string/jumbo v8, " "

    .line 381
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    iget-wide v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    invoke-virtual {v0, v8, v9, v10}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v8, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v5, v8, :cond_1

    .line 401
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    const v8, 0x7f0b006a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 405
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v5, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 404
    invoke-static {v9, v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getFormattedFileSize(Landroid/content/Context;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 410
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    const v9, 0x7f0b006b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 409
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageDetailsText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 340
    .end local v0    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .restart local v1    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :pswitch_0
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 341
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 342
    const v9, 0x7f0b0202

    .line 341
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 340
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v3, Lcom/sonymobile/jms/message/ImTextMessage;

    .line 344
    .local v3, "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImTextMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v5

    sget-object v8, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-ne v5, v8, :cond_2

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImTextMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    goto/16 :goto_0

    .line 345
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_2
    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImTextMessage;->getRecipient()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    goto/16 :goto_0

    .line 348
    .end local v3    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :pswitch_1
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 350
    const v9, 0x7f0b0203

    .line 349
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 348
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v2, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 352
    .local v2, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v5

    sget-object v8, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-ne v5, v8, :cond_3

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    goto/16 :goto_0

    .line 353
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_3
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getRecipient()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    goto/16 :goto_0

    .line 356
    .end local v2    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :pswitch_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v5, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;

    invoke-virtual {v5}, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;->getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    goto/16 :goto_0

    .line 359
    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :pswitch_3
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v5, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;

    invoke-virtual {v5}, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;->getAffectedContact()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    .local v1, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    goto/16 :goto_0

    .line 371
    .end local v1    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_4
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 373
    const v9, 0x7f0b0063

    .line 372
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 371
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 386
    .restart local v0    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v8, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v5, v8}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v8, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v5, v8}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 387
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v5, Lcom/sonymobile/jms/message/ImUserMessage;

    invoke-interface {v5}, Lcom/sonymobile/jms/message/ImUserMessage;->getSentTimestamp()J

    move-result-wide v6

    .line 388
    .local v6, "sentTimestamp":J
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 388
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    const-string/jumbo v8, " "

    .line 388
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    invoke-virtual {v0, v6, v7, v10}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v8

    .line 388
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .end local v6    # "sentTimestamp":J
    :cond_7
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 394
    iget-object v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mContext:Landroid/content/Context;

    .line 395
    const v9, 0x7f0b0067

    .line 394
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 393
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 396
    const-string/jumbo v8, " "

    .line 393
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 396
    iget-wide v8, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->date:J

    invoke-virtual {v0, v8, v9, v10}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v8

    .line 393
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v1, Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImMessage()Lcom/sonymobile/jms/message/ImMessage;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    return-object v0
.end method

.method public getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgStatus:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v0
.end method

.method public getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 296
    return-object v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v0, Lcom/sonymobile/jms/message/ImUserMessage;

    invoke-interface {v0}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/sonyericsson/conversations/model/JoynMessage;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsg:Lcom/sonymobile/jms/message/ImMessage;

    check-cast v0, Lcom/sonymobile/jms/message/ImUserMessage;

    invoke-interface {v0}, Lcom/sonymobile/jms/message/ImUserMessage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRawPriority()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public getSlideshowModel()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isGroupMessage()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mIsGroupMessage:Z

    return v0
.end method

.method public isReadable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mImMsgType:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mData:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSlideshowModel(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "slideShowModel"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/JoynMessage;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
