.class Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;
.super Ljava/lang/Object;
.source "FileProgressHandler.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImFileMessageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileDeliveryListener"
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I


# instance fields
.field private final mFileProgressHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1f

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1e

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1d

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_19

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_18

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_17

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_16

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_15

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_14

    :goto_b
    :try_start_c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_13

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_12

    :goto_d
    :try_start_e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_11

    :goto_e
    :try_start_f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_10

    :goto_f
    :try_start_10
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_f

    :goto_10
    :try_start_11
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_e

    :goto_11
    :try_start_12
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_d

    :goto_12
    :try_start_13
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_c

    :goto_13
    :try_start_14
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_b

    :goto_14
    :try_start_15
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_a

    :goto_15
    :try_start_16
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_9

    :goto_16
    :try_start_17
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_8

    :goto_17
    :try_start_18
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_7

    :goto_18
    :try_start_19
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_6

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_5

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_4

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_2

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_1f
    sput-object v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

.method private constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)V
    .locals 1
    .param p1, "fileProgressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->mFileProgressHandlerReference:Ljava/lang/ref/WeakReference;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;)V
    .locals 0
    .param p1, "fileProgressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)V

    return-void
.end method

.method private onMessageStatusUpdate(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 3
    .param p1, "fileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->mFileProgressHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    .line 122
    .local v0, "progressHandler":Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->shouldHandleEvent(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;Lcom/sonymobile/jms/message/ImFileMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->unregisterThisMessageEventListener()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onReceiveProgress(Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 6
    .param p1, "fileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "currentSize"    # J

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->mFileProgressHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    .line 114
    .local v1, "progressHandler":Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->shouldHandleEvent(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;Lcom/sonymobile/jms/message/ImFileMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v4

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->setProgressValue(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;JJ)V

    .line 112
    :cond_0
    return-void
.end method

.method private setProgressValue(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;JJ)V
    .locals 8
    .param p1, "progressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
    .param p2, "currValue"    # J
    .param p4, "maxValue"    # J

    .prologue
    .line 167
    invoke-static {p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->-get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Landroid/widget/TextView;

    move-result-object v2

    .line 168
    .local v2, "headerView":Landroid/widget/TextView;
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;Landroid/widget/TextView;Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;JJ)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method private shouldHandleEvent(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;Lcom/sonymobile/jms/message/ImFileMessage;)Z
    .locals 3
    .param p1, "progressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
    .param p2, "fileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->unregisterThisMessageEventListener()V

    .line 157
    return v1

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "joynMessageId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private unregisterThisMessageEventListener()V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onImFileMessageDeliveryProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 103
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->onReceiveProgress(Lcom/sonymobile/jms/message/ImFileMessage;J)V

    .line 102
    return-void
.end method

.method public onImFileMessageDeliveryStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 109
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->onMessageStatusUpdate(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 108
    return-void
.end method

.method public onImFileMessageReceiveProgress(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;J)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "currentSize"    # J

    .prologue
    .line 91
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->onReceiveProgress(Lcom/sonymobile/jms/message/ImFileMessage;J)V

    .line 90
    return-void
.end method

.method public onImFileMessageReceiveStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p3, "status"    # Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .prologue
    .line 97
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->onMessageStatusUpdate(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 96
    return-void
.end method
