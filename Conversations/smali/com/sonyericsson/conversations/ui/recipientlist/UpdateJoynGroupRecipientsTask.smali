.class public Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;
.super Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;
.source "UpdateJoynGroupRecipientsTask.java"


# instance fields
.field private final mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

.field private mRecipientInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "isAnimate"    # Z
    .param p4, "updateRecipientListener"    # Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    .line 42
    invoke-interface {p2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 40
    return-void
.end method

.method private getJoynGroupConversationName(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "recipientsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0266

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v2

    .line 106
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->getTitleFromRecipients(Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2

    .line 108
    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 110
    .end local v1    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v3, "Unable to get subject for ImConversation \'"

    .line 111
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    const-string/jumbo v3, "\'!"

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 114
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    return-object v2
.end method

.method private getRecipientInfoList(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/List;
    .locals 9
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getRecipients(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 71
    .local v5, "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getParticipants(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/Set;
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 78
    .local v1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, "recipientInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "recipient$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/contact/ImContactNumber;

    .line 80
    .local v2, "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    new-instance v6, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    new-instance v7, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 82
    sget-object v8, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;->ACTIVE:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    .line 81
    invoke-direct {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;-><init>(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    .end local v1    # "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    .end local v2    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "recipient$iterator":Ljava/util/Iterator;
    .end local v4    # "recipientInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    .end local v5    # "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v6, "Failed to get recipients \'"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\'!"

    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "recipients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    goto :goto_0

    .line 73
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v0

    .line 75
    .restart local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    goto :goto_1

    .line 84
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v2    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v3    # "recipient$iterator":Ljava/util/Iterator;
    .restart local v4    # "recipientInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    :cond_0
    new-instance v6, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    new-instance v7, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 85
    sget-object v8, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;->INACTIVE:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    .line 84
    invoke-direct {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;-><init>(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v2    # "recipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_1
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_2

    .line 89
    const-string/jumbo v6, "Update participants for im conversation id \'"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 90
    const-string/jumbo v7, ", recipients: "

    .line 89
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 90
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 89
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 91
    const-string/jumbo v7, ", active participants: "

    .line 89
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 91
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    .line 89
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 93
    :cond_2
    return-object v4
.end method

.method private getTitleFromRecipients(Ljava/util/List;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "recipientInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "recipientInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;

    .line 121
    .local v1, "recipientInfo":Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->getParticipant()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v1    # "recipientInfo":Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->getRecipientInfoList(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mRecipientInfoList:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mImGroupConversationId:Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mRecipientInfoList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->getJoynGroupConversationName(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mTitle:Landroid/text/SpannableStringBuilder;

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mUpdateRecipientListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mRecipientInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mTitle:Landroid/text/SpannableStringBuilder;

    .line 55
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateJoynGroupRecipientsTask;->mIsAnimate:Z

    .line 54
    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;->onJoynGroupRecipientsUpdated(Ljava/util/List;Landroid/text/SpannableStringBuilder;Z)V

    .line 53
    return-void
.end method
