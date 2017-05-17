.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;
.super Landroid/os/AsyncTask;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitConversationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1913
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    .line 1914
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .line 1912
    return-void
.end method

.method private checkSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 7
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1976
    const/4 v1, 0x0

    .line 1977
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->hasLocationImage()Z

    move-result v2

    .line 1979
    .local v2, "hasLocation":Z
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 1981
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;

    .line 1982
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardThreadid:J

    .line 1983
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    .line 1981
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;-><init>(Landroid/net/Uri;JLandroid/content/Context;)V

    .line 1984
    .local v0, "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .line 1985
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v1, v3, :cond_0

    .line 1986
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap30(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    .line 2007
    .end local v0    # "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    .end local v1    # "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :cond_0
    :goto_0
    return-object v1

    .line 1988
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :cond_1
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1989
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1991
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;

    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 1992
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 1991
    invoke-direct {v0, v3, v4, v5}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 1993
    .restart local v0    # "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .line 1994
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v1, v3, :cond_0

    .line 1995
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1996
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getAddableContentUris()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1997
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap30(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    goto :goto_0

    .line 1999
    .end local v0    # "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :cond_2
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2001
    new-instance v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;

    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;-><init>(Ljava/lang/String;)V

    .line 2002
    .restart local v0    # "checker":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->getContentStatus(Z)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    .line 2003
    .local v1, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    sget-object v3, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v1, v3, :cond_0

    .line 2004
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v3, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap30(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    goto :goto_0
.end method

.method private chooseSendIntentDataOverDraft()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2018
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v1, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return v0

    .line 2020
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepareThreadForReplyAll()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2060
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v1, v9, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 2062
    .local v1, "mmsUri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2063
    .local v2, "messageId":J
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 2064
    .local v4, "originalThreadId":J
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    .line 2066
    .local v6, "threadIdForAll":J
    invoke-static {v2, v3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v8

    .line 2067
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2068
    new-instance v0, Landroid/content/ContentValues;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 2069
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "thread_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2070
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2071
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2072
    const-string/jumbo v9, "thread_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2073
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2074
    const-string/jumbo v9, "parent_thread_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2076
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2059
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1932
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v2, :cond_5

    .line 1933
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1934
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->prepareThreadForReplyAll()V

    .line 1937
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 1940
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->chooseSendIntentDataOverDraft()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1941
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->checkSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    .line 1942
    .local v0, "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    if-eqz v0, :cond_3

    .line 1943
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v0, v2, :cond_1

    .line 1944
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-ne v0, v2, :cond_2

    .line 1946
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1945
    :cond_2
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    if-eq v0, v2, :cond_1

    .line 1948
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap36(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    .end local v0    # "contentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1955
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap35(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1967
    :catch_0
    move-exception v1

    .line 1968
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Error while loading conversation"

    invoke-static {v2, v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1969
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1964
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap35(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1928
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 2026
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap13(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 2024
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    .line 2031
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 2032
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap13(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 2034
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2035
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    :cond_0
    return-void

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2040
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2041
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap26(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 2046
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 2030
    :cond_2
    :goto_0
    return-void

    .line 2049
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2050
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2030
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-set0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 1921
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v2

    .line 1923
    const v3, 0x7f0b00eb

    .line 1922
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap31(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1918
    :cond_0
    return-void
.end method
