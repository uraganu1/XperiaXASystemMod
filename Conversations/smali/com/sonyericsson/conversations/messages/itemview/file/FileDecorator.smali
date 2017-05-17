.class public Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;
.super Ljava/lang/Object;
.source "FileDecorator.java"


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_18

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_17

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_16

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_15

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_14

    :goto_b
    :try_start_c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FORBIDDEN:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_13

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_12

    :goto_d
    :try_start_e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_11

    :goto_e
    :try_start_f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_10

    :goto_f
    :try_start_10
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_f

    :goto_10
    :try_start_11
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_e

    :goto_11
    :try_start_12
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_d

    :goto_12
    :try_start_13
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_c

    :goto_13
    :try_start_14
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_b

    :goto_14
    :try_start_15
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_a

    :goto_15
    :try_start_16
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_9

    :goto_16
    :try_start_17
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_8

    :goto_17
    :try_start_18
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_7

    :goto_18
    :try_start_19
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_6

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_5

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_4

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_2

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_1f
    sput-object v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->-com_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorateCancelButton(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonymobile/jms/conversation/ImConversationId;Landroid/widget/ImageButton;)V
    .locals 1
    .param p0, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "cancelButton"    # Landroid/widget/ImageButton;

    .prologue
    .line 70
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;

    invoke-direct {v0, p1, p0, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageButton;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileCancelHandler;->startFileCancelHandling()V

    .line 69
    return-void
.end method

.method public static decorateIncomingFileTransferStatusText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/model/JoynMessage;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 98
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 99
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getFormattedFileSize(Landroid/content/Context;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    return-void
.end method

.method public static decorateInviteThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p1, "thumbnailImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 326
    .local v1, "messageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getFileIcon(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 327
    .local v2, "thumbnailUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 328
    invoke-static {v2, p1}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadPreviewImageThumbnailBlurred(Landroid/net/Uri;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "messageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    .end local v2    # "thumbnailUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const v3, 0x7f020048

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static decorateMetaData(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p2, "fileNameTextView"    # Landroid/widget/TextView;
    .param p3, "fileSizeTextView"    # Landroid/widget/TextView;
    .param p4, "fileIconView"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 52
    .local v0, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getFormattedFileSize(Landroid/content/Context;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1, p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->getMessageFileTypeIcon()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    return-void
.end method

.method public static decorateProgressAndReturnCurrent(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/TextView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p2, "headerTextView"    # Landroid/widget/TextView;

    .prologue
    .line 85
    new-instance v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->getCurrentProgressAndStartProgressHandling()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static decorateRetryButton(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/ImageButton;)V
    .locals 1
    .param p0, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p2, "retryButton"    # Landroid/widget/ImageButton;

    .prologue
    .line 351
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->isOutgoingOne2OneFileTransfer(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 349
    :goto_0
    return-void

    .line 354
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public static decorateThumbnail(Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p1, "thumbnailImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 338
    .local v0, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->populateImageThumbnail(Lcom/android/mms/model/ImageModel;Landroid/widget/ImageView;)V

    .line 335
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->populateVideoThumbnail(Lcom/android/mms/model/VideoModel;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 343
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    const-string/jumbo v2, " does not contain visual content"

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAuthorDisplayName(Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 315
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 316
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v0

    .line 317
    .local v0, "contactManager":Lcom/sonyericsson/conversations/contact/ContactManager;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/jms/message/ImUserMessage;

    invoke-interface {v4}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v1

    .line 319
    .local v1, "displayNameWithFallback":Lcom/sonyericsson/conversations/contact/DisplayName;
    invoke-static {v3, v1}, Lcom/sonyericsson/conversations/contact/DisplayNameDecorator;->appendDecoratedDisplayName(Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/contact/DisplayName;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    return-object v4
.end method

.method public static getFormattedFileSize(Landroid/content/Context;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imFileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/util/FileSize;->newInstance(J)Lcom/sonyericsson/conversations/util/FileSize;

    move-result-object v0

    .line 41
    .local v0, "fileSize":Lcom/sonyericsson/conversations/util/FileSize;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/FileSize;->getUnit()Lcom/sonyericsson/conversations/util/ByteUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/util/ByteUnit;->getUnitResId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "unit":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/FileSize;->getIntegerFormattedSize()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 43
    const v3, 0x7f0b0213

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getIncomingFileTransferHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    const v4, 0x7f0b0218

    const v3, 0x7f0b01e3

    .line 125
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 126
    .local v0, "headerText":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    :pswitch_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getStatusName(Lcom/sonyericsson/conversations/model/JoynMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 205
    :goto_0
    return-object v0

    .line 130
    :pswitch_1
    const v1, 0x7f0b0081

    .line 129
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 134
    :pswitch_2
    const v1, 0x7f0b01dd

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 138
    :pswitch_3
    const v1, 0x7f0b01e6

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 142
    :pswitch_4
    const v1, 0x7f0b01e5

    .line 141
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 149
    :pswitch_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 157
    :pswitch_6
    const v1, 0x7f0b01dc

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 160
    :pswitch_7
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 164
    :pswitch_8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 169
    :pswitch_9
    const v1, 0x7f0b0219

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 173
    :pswitch_a
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 180
    :pswitch_b
    const v1, 0x7f0b01db

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 184
    :pswitch_c
    const v1, 0x7f0b01e1

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 188
    :pswitch_d
    const v1, 0x7f0b01e7

    .line 187
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 194
    :pswitch_e
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 199
    :pswitch_f
    const v1, 0x7f0b01e0

    .line 198
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_f
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static getOutgoingFileTransferHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    const v4, 0x7f0b0219

    const v3, 0x7f0b0218

    .line 210
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 211
    .local v0, "headerText":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->-getcom_sonymobile_jms_message_ImUserMessage$StatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 298
    :pswitch_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getStatusName(Lcom/sonyericsson/conversations/model/JoynMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 301
    :goto_0
    return-object v0

    .line 215
    :pswitch_1
    const v1, 0x7f0b0082

    .line 214
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 219
    :pswitch_2
    const v1, 0x7f0b01dd

    .line 218
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 223
    :pswitch_3
    const v1, 0x7f0b01e6

    .line 222
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 231
    :pswitch_4
    const v1, 0x7f0b01e4

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 235
    :pswitch_5
    const v1, 0x7f0b00f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 238
    :pswitch_6
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 242
    :pswitch_7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 246
    :pswitch_8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 251
    :pswitch_9
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 256
    :pswitch_a
    const v1, 0x7f0b00ee

    .line 255
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 262
    :pswitch_b
    const v1, 0x7f0b01de

    .line 261
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 266
    :pswitch_c
    const v1, 0x7f0b01e2

    .line 265
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 270
    :pswitch_d
    const v1, 0x7f0b01e7

    .line 269
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 276
    :pswitch_e
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const v1, 0x7f0b007c

    .line 277
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 281
    :cond_0
    const v1, 0x7f0b007a

    .line 280
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 285
    :pswitch_f
    const v1, 0x7f0b0079

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 290
    :pswitch_10
    const v1, 0x7f0b01df

    .line 289
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 295
    :pswitch_11
    const v1, 0x7f0b007e

    .line 294
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_e
        :pswitch_4
        :pswitch_9
        :pswitch_11
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private static getStatusName(Lcom/sonyericsson/conversations/model/JoynMessage;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v2

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-interface {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getFileMessageStatus(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    .line 308
    .local v1, "fileMessageStatus":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImUserMessage$Status;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 309
    .end local v1    # "fileMessageStatus":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public static getStatusText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getOutgoingFileTransferHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 120
    .local v0, "statusText":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v0

    .line 118
    .end local v0    # "statusText":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getIncomingFileTransferHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .restart local v0    # "statusText":Landroid/text/SpannableStringBuilder;
    goto :goto_0
.end method

.method private static isOutgoingOne2OneFileTransfer(Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/conversation/ConversationId;)Z
    .locals 2
    .param p0, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 360
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static populateImageThumbnail(Lcom/android/mms/model/ImageModel;Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "imageModel"    # Lcom/android/mms/model/ImageModel;
    .param p1, "thumbnailImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 367
    .local v0, "imageUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const v2, 0x7f0d00c5

    invoke-virtual {p1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 375
    const v2, 0x7f0d00c7

    invoke-virtual {p1, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 377
    :cond_0
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadImageThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static populateVideoThumbnail(Lcom/android/mms/model/VideoModel;Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "videoModel"    # Lcom/android/mms/model/VideoModel;
    .param p1, "thumbnailImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 383
    .local v1, "videoUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/model/VideoModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "contentType":Ljava/lang/String;
    const v2, 0x7f0d00c5

    invoke-virtual {p1, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 388
    const v2, 0x7f0d00c7

    invoke-virtual {p1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 389
    const v2, 0x7f020142

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadVideoThumbnail(Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 381
    return-void
.end method
