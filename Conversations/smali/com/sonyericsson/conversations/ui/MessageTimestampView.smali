.class public Lcom/sonyericsson/conversations/ui/MessageTimestampView;
.super Landroid/widget/LinearLayout;
.source "MessageTimestampView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private mHasWallpaper:Z

.field private mHeaderIcon:Landroid/widget/ImageView;

.field private mHeaderSimCardContainer:Landroid/view/View;

.field private mHeaderSimCardIcon:Landroid/widget/ImageView;

.field private mHeaderSimCardText:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mJoynMessageReadIcon:Landroid/widget/ImageView;

.field private mLastUsedHeaderIcon:I

.field private mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

.field private mLastUsedMessageKey:Ljava/lang/String;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageTypeIndicator:Landroid/widget/TextView;

.field private mPriorityIcon:Landroid/widget/ImageView;

.field private mSenderString:Ljava/lang/String;

.field private mStarIcon:Landroid/widget/ImageView;

.field private mUpdateTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/MessageTimestampView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHasWallpaper:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/TextView;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p4, "headerTextView"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getMessageHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/TextView;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "messageHeaderText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setHeaderText(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->updateView(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedHeaderIcon:I

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

    .line 70
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedHeaderIcon:I

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

    .line 70
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedHeaderIcon:I

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

    .line 70
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    .line 84
    return-void
.end method

.method private getGroupIconId()I
    .locals 2

    .prologue
    .line 545
    const v0, 0x7f020055

    .line 546
    .local v0, "groupIconId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 547
    const v0, 0x7f020056

    .line 549
    :cond_0
    return v0
.end method

.method private getHeaderIconResourceId()I
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "headerIcon":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v2, v2, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    packed-switch v2, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 317
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v1

    .line 318
    .local v1, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getGroupIconId()I

    move-result v0

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getHeaderViewTextColor()I
    .locals 2

    .prologue
    .line 537
    const v0, 0x7f0e003b

    .line 538
    .local v0, "textColorId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 539
    const v0, 0x7f0e003c

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method private getJoynMessageReadIconId()I
    .locals 2

    .prologue
    .line 553
    const v0, 0x7f020103

    .line 554
    .local v0, "readIconId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 555
    const v0, 0x7f020104

    .line 557
    :cond_0
    return v0
.end method

.method private getMessageAuthorDisplayString(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v5, 0x0

    .line 478
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v3, :cond_2

    .line 479
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    return-object v5

    :cond_0
    move-object v0, p1

    .line 483
    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 484
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v3

    .line 485
    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 484
    if-eq v3, v4, :cond_1

    .line 486
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v3

    .line 487
    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 486
    if-eq v3, v4, :cond_1

    .line 488
    return-object v5

    .line 491
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getAuthorDisplayName(Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 492
    .end local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_2
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 493
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 494
    .local v1, "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mSenderString:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->messageHeaderTextForMms(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 495
    .end local v1    # "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_3
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v3, :cond_4

    .line 496
    invoke-static {}, Lcom/android/mms/MmsConfig;->showParticipantsInMessageHeader()Z

    move-result v2

    .line 497
    .local v2, "xmsSenderNameVisible":Z
    if-eqz v2, :cond_4

    .line 498
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mSenderString:Ljava/lang/String;

    return-object v3

    .line 501
    .end local v2    # "xmsSenderNameVisible":Z
    :cond_4
    return-object v5
.end method

.method private getMessageHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/TextView;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p4, "headerTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v8, 0x0

    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    instance-of v4, p2, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v4, :cond_2

    move-object v2, p2

    .line 404
    check-cast v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 405
    .local v2, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v4, v5, :cond_2

    .line 406
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v1

    .line 407
    .local v1, "imFileMsgStatus":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    sget-object v4, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-ne v1, v4, :cond_0

    .line 408
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 409
    invoke-static {p1, v2, p4}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateProgressAndReturnCurrent(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/widget/TextView;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 408
    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    .line 412
    :cond_0
    sget-object v4, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->IM_FAILED_STATES:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    :cond_1
    invoke-static {p1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->getStatusText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    return-object v4

    .line 419
    .end local v1    # "imFileMsgStatus":Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .end local v2    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 420
    .local v0, "headerText":Landroid/text/SpannableStringBuilder;
    iget v4, p2, Lcom/sonyericsson/conversations/model/Message;->box:I

    packed-switch v4, :pswitch_data_0

    .line 452
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->isReceivedMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getMessageAuthorDisplayString(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "sender":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 455
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 456
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 459
    .end local v3    # "sender":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v4

    iget-wide v6, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-virtual {v4, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 463
    :cond_4
    :goto_0
    if-eqz v2, :cond_6

    .line 464
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->isRead()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 467
    :cond_5
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->isReceivedMessage()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    .line 468
    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 467
    if-ne v4, v5, :cond_6

    .line 468
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageStatus()Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v4

    .line 469
    sget-object v5, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    .line 468
    if-ne v4, v5, :cond_6

    .line 470
    invoke-static {p1, v0, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileDecorator;->decorateIncomingFileTransferStatusText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lcom/sonyericsson/conversations/model/JoynMessage;)V

    .line 474
    :cond_6
    :goto_1
    return-object v0

    .line 423
    :pswitch_0
    const v4, 0x7f0b00f0

    .line 422
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 428
    :pswitch_1
    const v4, 0x7f0b00ef

    .line 427
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 433
    :pswitch_2
    const v4, 0x7f0b00ee

    .line 432
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 437
    :pswitch_3
    iget v4, p2, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 439
    const v4, 0x7f0b0079

    .line 438
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 440
    :cond_7
    iget v4, p2, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 442
    const v4, 0x7f0b004a

    .line 441
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 443
    :cond_8
    iget v4, p2, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 444
    iget v4, p2, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    if-nez v4, :cond_4

    .line 445
    :cond_9
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v4

    .line 446
    iget-wide v6, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    .line 445
    invoke-virtual {v4, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 466
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getJoynMessageReadIconId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setJoynMessageReadIcon(I)V

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMessageStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-nez v2, :cond_0

    .line 166
    return-object v3

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 170
    .local v1, "messageStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v2, :cond_4

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v0, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 172
    .local v0, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v2, v3, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isSentMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isRead()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->isGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/JoynMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 184
    .end local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v1    # "messageStatus":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 175
    .restart local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .restart local v1    # "messageStatus":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, ""

    .line 176
    .local v1, "messageStatus":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getJoynMessageReadIconId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setJoynMessageReadIcon(I)V

    goto :goto_0

    .line 182
    .end local v0    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .local v1, "messageStatus":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getStatus()Ljava/lang/String;

    move-result-object v1

    .local v1, "messageStatus":Ljava/lang/String;
    goto :goto_0
.end method

.method private getTypeIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I
    .locals 3
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/16 v2, 0x8

    .line 362
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    return v2

    .line 366
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->isImConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    return v2

    .line 370
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    return v2

    .line 374
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown conversation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 384
    return v2

    .line 377
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 380
    :pswitch_1
    return v2

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private messageHeaderTextForMms(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "receiverString"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v2

    .line 513
    .local v2, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    const-string/jumbo v0, ""

    .line 514
    .local v0, "headerText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 515
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    .line 516
    .local v3, "sender":Lcom/sonyericsson/conversations/model/Participant;
    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "personName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .end local v1    # "personName":Ljava/lang/String;
    .end local v3    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    :goto_0
    return-object v0

    .line 521
    .restart local v1    # "personName":Ljava/lang/String;
    .restart local v3    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    .end local v1    # "personName":Ljava/lang/String;
    .end local v3    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->showParticipantsInMessageHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setHeaderIcon(I)V
    .locals 2
    .param p1, "iconResourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 256
    if-nez p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHeaderSimCard(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->shouldShowSimIcon(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    instance-of v2, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v2, :cond_0

    .line 283
    check-cast p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getSubscriptionId()I

    move-result v1

    .line 291
    .local v1, "subscriptionId":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardIcon:Landroid/widget/ImageView;

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSlotIndexFromSubscriptionId(I)I

    move-result v0

    .line 294
    .local v0, "simCardSlotIndex":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardText:Landroid/widget/TextView;

    .line 295
    if-nez v0, :cond_2

    const-string/jumbo v2, "1"

    .line 294
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .end local v0    # "simCardSlotIndex":I
    .end local v1    # "subscriptionId":I
    :goto_2
    return-void

    .line 284
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    instance-of v2, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_1

    .line 285
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v1

    .restart local v1    # "subscriptionId":I
    goto :goto_0

    .line 288
    .end local v1    # "subscriptionId":I
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    const-string/jumbo v2, "Unhandled message type was not filtered by shouldShowSimIcon()"

    .line 287
    invoke-static {v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    .restart local v1    # "subscriptionId":I
    goto :goto_0

    .line 295
    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    .restart local v0    # "simCardSlotIndex":I
    :cond_2
    const-string/jumbo v2, "2"

    goto :goto_1

    .line 298
    .end local v0    # "simCardSlotIndex":I
    .end local v1    # "subscriptionId":I
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setHeaderText(Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p1, "messageHeaderText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getHeaderViewTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    return-void
.end method

.method private setIcons(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 4
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mJoynMessageReadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mStarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mStarIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView$3;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :goto_1
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mStarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setJoynMessageReadIcon(I)V
    .locals 2
    .param p1, "iconResourceId"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mJoynMessageReadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mJoynMessageReadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    return-void
.end method

.method private setTypeIndicator(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessageTypeIndicator:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getTypeIndicatorVisibility(Lcom/sonyericsson/conversations/conversation/ConversationId;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget v0, p1, Lcom/sonyericsson/conversations/model/Message;->type:I

    packed-switch v0, :pswitch_data_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unsupported message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessageTypeIndicator:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getHeaderViewTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessageTypeIndicator:Landroid/widget/TextView;

    .line 344
    const v1, 0x7f0b0073

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessageTypeIndicator:Landroid/widget/TextView;

    .line 348
    const v1, 0x7f0b0072

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessageTypeIndicator:Landroid/widget/TextView;

    .line 352
    const v1, 0x7f0b0074

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private shouldShowSimIcon(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 273
    :goto_0
    return v0

    .line 274
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startUpdateNowTask(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 195
    iget-wide v0, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-static {}, Lcom/android/mms/MmsConfig;->getStackedMessagesDelayTimeMillis()J

    move-result-wide v2

    add-long v4, v0, v2

    .line 196
    .local v4, "updateTime":J
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/ui/MessageTimestampView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/model/Message;JLcom/sonyericsson/conversations/conversation/ConversationId;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    return-void
.end method

.method private updateView(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 10
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v7, 0x0

    .line 124
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setIcons(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setTypeIndicator(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getHeaderIconResourceId()I

    move-result v0

    .line 129
    .local v0, "headerIcon":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderText:Landroid/widget/TextView;

    invoke-direct {p0, v3, p1, p2, v6}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getMessageHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/widget/TextView;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 131
    .local v2, "messageHeaderText":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedHeaderIcon:I

    if-ne v0, v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageKey:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedHeaderIcon:I

    .line 140
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mLastUsedMessageHeaderText:Landroid/text/SpannableStringBuilder;

    .line 142
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setHeaderIcon(I)V

    .line 143
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setHeaderText(Landroid/text/SpannableStringBuilder;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setHeaderSimCard(Lcom/sonyericsson/conversations/model/Message;)V

    .line 146
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mUpdateTask:Ljava/lang/Runnable;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/sonyericsson/conversations/model/Message;->date:J

    sub-long v4, v6, v8

    .line 149
    .local v4, "nowDiff":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getStackedMessagesDelayTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->startUpdateNowTask(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 123
    :cond_1
    return-void

    .line 136
    .end local v4    # "nowDiff":J
    :cond_2
    invoke-static {p0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessageTypeIndicator:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderIcon:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderText:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0d0117

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mPriorityIcon:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mJoynMessageReadIcon:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardContainer:Landroid/view/View;

    .line 97
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardIcon:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mHeaderSimCardText:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0d0119

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mStarIcon:Landroid/widget/ImageView;

    .line 89
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 107
    :cond_0
    return-void

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 111
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v2

    .line 113
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    .line 114
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampView;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 103
    return-void
.end method

.method public setParticipantStrings(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderString"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->mSenderString:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public updateHeaderTextToMessageStatus()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->getMessageStatus()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "messageStatus":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setHeaderText(Landroid/text/SpannableStringBuilder;)V

    .line 157
    :cond_0
    return-void
.end method
