.class public Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;
.super Ljava/lang/Object;
.source "ConversationsDeleteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatDeleteCondition(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const-string/jumbo v2, "_id IN ()"

    return-object v2

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 166
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static removeMessages(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "messageKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_1

    .line 70
    :cond_0
    new-instance v25, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;-><init>(III)V

    return-object v25

    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 73
    .local v4, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 74
    .local v6, "deletedMmsCount":I
    const/4 v5, 0x0

    .line 75
    .local v5, "deletedJoynCount":I
    const/4 v7, 0x0

    .line 77
    .local v7, "deletedSmsCount":I
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_2

    .line 79
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "messageKey$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 80
    .local v13, "messageKey":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    add-int v7, v7, v25

    goto :goto_0

    .line 83
    .end local v13    # "messageKey":Ljava/lang/String;
    .end local v14    # "messageKey$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v18, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v18, "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v16, "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v10, "joynMessageKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 88
    .local v11, "key":Ljava/lang/String;
    invoke-static {v11}, Lcom/sonyericsson/conversations/model/MessageUtil;->getTypeFromKey(Ljava/lang/String;)I

    move-result v23

    .line 89
    .local v23, "type":I
    packed-switch v23, :pswitch_data_0

    goto :goto_1

    .line 91
    :pswitch_0
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :pswitch_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :pswitch_2
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    .end local v11    # "key":Ljava/lang/String;
    .end local v23    # "type":I
    :cond_3
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;->formatDeleteCondition(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, "sms":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;->formatDeleteCondition(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, "mms":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    .line 109
    .local v22, "tempThreadId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 110
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, " AND thread_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 113
    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 114
    sget-object v24, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 115
    .local v24, "uri":Landroid/net/Uri;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 116
    .local v21, "tempSms":Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v7, v25, 0x0

    .line 120
    .end local v21    # "tempSms":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 121
    sget-object v24, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 122
    .restart local v24    # "uri":Landroid/net/Uri;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, "tempMms":Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v6, v25, 0x0

    .line 126
    .end local v20    # "tempMms":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "joynMessageKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 127
    .local v8, "joynMessageKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/sonyericsson/conversations/model/MessageUtil;->delete(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;)V

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 133
    .end local v8    # "joynMessageKey":Ljava/lang/String;
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v25

    add-int v26, v5, v6

    add-int v26, v26, v7

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 134
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 135
    sget-object v24, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 136
    .restart local v24    # "uri":Landroid/net/Uri;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 138
    .restart local v20    # "tempMms":Ljava/lang/String;
    const-string/jumbo v25, "_id ="

    const-string/jumbo v26, "msg_id ="

    .line 137
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 139
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    add-int v6, v6, v25

    .line 144
    .end local v9    # "joynMessageKey$iterator":Ljava/util/Iterator;
    .end local v10    # "joynMessageKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "key$iterator":Ljava/util/Iterator;
    .end local v15    # "mms":Ljava/lang/String;
    .end local v16    # "mmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17    # "sms":Ljava/lang/String;
    .end local v18    # "smsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "tempMms":Ljava/lang/String;
    .end local v22    # "tempThreadId":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_8
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/sonyericsson/conversations/Apis;->getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v19

    .line 145
    .local v19, "starStatusApi":Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->deleteMessageStarStatuses(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)V

    .line 147
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "messageKey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 148
    .restart local v13    # "messageKey":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v25

    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2, v13}, Lcom/sonyericsson/conversations/model/ModelCache;->removeMessage(JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Message;

    goto :goto_3

    .line 150
    .end local v13    # "messageKey":Ljava/lang/String;
    :cond_9
    new-instance v25, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;

    move-object/from16 v0, v25

    invoke-direct {v0, v7, v6, v5}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController$RemovedMessagesInformation;-><init>(III)V

    return-object v25

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
