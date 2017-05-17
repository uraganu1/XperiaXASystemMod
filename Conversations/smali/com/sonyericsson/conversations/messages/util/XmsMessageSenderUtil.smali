.class public Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;
.super Ljava/lang/Object;
.source "XmsMessageSenderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static prepareSendingComposedMms(Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonymobile/conversations/transaction/MessageSender;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 67
    .local v0, "messageId":J
    invoke-static {v0, v1}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v3

    .line 68
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->setUri(Landroid/net/Uri;)V

    .line 70
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 74
    .local v2, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/sonyericsson/conversations/model/ModelCache;->cacheMessageSlideshow(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 77
    new-instance v4, Lcom/sonymobile/conversations/transaction/MmsMessageSender;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getRawPriority()I

    move-result v6

    .line 78
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v7

    .line 77
    invoke-direct {v4, p0, v5, v6, v7}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    return-object v4
.end method

.method private static prepareSendingComposedSms(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    move-object v11, p1

    .line 83
    check-cast v11, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 84
    .local v11, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v10

    .line 85
    .local v10, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 86
    .local v9, "nrDests":I
    new-array v2, v9, [Ljava/lang/String;

    .line 88
    .local v2, "dests":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 89
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lcom/sonymobile/conversations/transaction/SmsMessageSender;

    iget-object v3, v11, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 93
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/SmsMessage;->getRawPriority()I

    move-result v6

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/SmsMessage;->getSubscriptionId()I

    move-result v7

    move-object v1, p0

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    return-object v0
.end method

.method public static saveMmsDraft(Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/util/List;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/model/MmsMessage;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    .line 99
    .local v9, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 100
    .local v4, "pb":Lcom/google/android/mms/pdu/PduBody;
    new-instance v6, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 102
    .local v6, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->setEncodedRecipients(Lcom/google/android/mms/pdu/SendReq;Ljava/util/List;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v6, v12, v13}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 105
    invoke-virtual {v6, v4}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getRawPriority()I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "subject":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 109
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v11, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 112
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v5

    .line 113
    .local v5, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isStored()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->delete()V

    .line 117
    :cond_1
    sget-object v11, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v11}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, "messageUri":Landroid/net/Uri;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12, v13}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateMessageSize(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->setUri(Landroid/net/Uri;)V

    .line 121
    invoke-virtual {v9, v4}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "fileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getMediaModelList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "slide$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/MediaModel;

    .line 130
    .local v7, "slide":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v7}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v7    # "slide":Lcom/android/mms/model/MediaModel;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->clearResizedImages(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 97
    return-void
.end method

.method public static sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, p2, v4}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->saveMmsDraft(Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/util/List;)V

    .line 43
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 44
    .local v2, "threadId":J
    invoke-static {p0, p2, p1}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->prepareSendingComposedMms(Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonymobile/conversations/transaction/MessageSender;

    move-result-object v0

    .line 45
    .local v0, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    invoke-interface {v0}, Lcom/sonymobile/conversations/transaction/MessageSender;->prepareForSendMessage()Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->setUri(Landroid/net/Uri;)V

    .line 47
    invoke-interface {v0, v2, v3}, Lcom/sonymobile/conversations/transaction/MessageSender;->sendMessage(J)Z

    .line 48
    return-object p2
.end method

.method public static sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/SmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 54
    .local v2, "threadId":J
    invoke-static {p0, p2, p1}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->prepareSendingComposedSms(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/Conversation;)Lcom/sonymobile/conversations/transaction/SmsMessageSender;

    move-result-object v0

    .line 55
    .local v0, "sender":Lcom/sonymobile/conversations/transaction/SmsMessageSender;
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->prepareForSendMessage()Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->setUri(Landroid/net/Uri;)V

    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 58
    return-object p2
.end method

.method public static setEncodedRecipients(Lcom/google/android/mms/pdu/SendReq;Ljava/util/List;)V
    .locals 7
    .param p0, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/SendReq;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 140
    .local v3, "nrDests":I
    if-lez v3, :cond_2

    .line 141
    new-array v1, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 145
    .local v1, "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 148
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    .line 149
    .local v4, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 151
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 137
    .end local v1    # "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
