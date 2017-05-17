.class public Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;
.super Landroid/app/IntentService;
.source "RcsUiConnectorService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private getLastPathUriSegment(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getParameter(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "parameter":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 46
    return-object v1

    .line 48
    :cond_0
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/Uri;

    .end local v0    # "parameter":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 49
    .restart local v0    # "parameter":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "parameter":Ljava/lang/Object;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getParameter(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 35
    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 37
    return-object v3

    .line 40
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v5
.end method

.method private getUriParameter(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getParameter(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "parameter":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 55
    return-object v1

    .line 57
    :cond_0
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/Uri;

    .end local v0    # "parameter":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "parameter":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "parameter":Ljava/lang/Object;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getUrisParameter(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getParameter(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "parameter":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 63
    return-object v4

    .line 65
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 67
    check-cast v2, Ljava/util/List;

    .end local v2    # "parameter":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "entry":Ljava/lang/Object;
    instance-of v4, v0, Landroid/net/Uri;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/net/Uri;

    .end local v0    # "entry":Ljava/lang/Object;
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v0    # "entry":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 71
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method private logIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "intentAction":Ljava/lang/String;
    const-string/jumbo v6, "com.gsma.services.rcs.action.VIEW_ONE_TO_ONE_CHAT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getLastPathUriSegment(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "contactNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    .end local v0    # "contactNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v6, "com.gsma.services.rcs.action.VIEW_GROUP_CHAT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getLastPathUriSegment(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "groupChatId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 93
    .end local v3    # "groupChatId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "com.gsma.services.rcs.action.SEND_ONE_TO_ONE_CHAT_MESSAGE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getUriParameter(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, "contactUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    goto :goto_0

    .line 100
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v6, "com.gsma.services.rcs.action.INITIATE_GROUP_CHAT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getUrisParameter(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v2, :cond_0

    goto :goto_0

    .line 107
    .end local v2    # "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4
    const-string/jumbo v6, "com.gsma.services.rcs.action.INITIATE_ONE_TO_ONE_FILE_TRANSFER"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getUriParameter(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .restart local v1    # "contactUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v6, "com.gsma.services.rcs.action.INITIATE_GROUP_FILE_TRANSFER"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getUrisParameter(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 116
    .restart local v2    # "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v2, :cond_0

    goto :goto_0

    .line 122
    .end local v2    # "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_6
    const-string/jumbo v6, "com.gsma.services.rcs.action.VIEW_FILE_TRANSFER"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->getLastPathUriSegment(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "msgId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rcsIntent"    # Landroid/content/Intent;

    .prologue
    .line 145
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "enter"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 148
    :cond_0
    if-nez p1, :cond_1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, " should never be started with no intent to handle!"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 152
    return-void

    .line 154
    :cond_1
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/rcs/RcsUiConnectorService;->logIntent(Landroid/content/Intent;)V

    .line 144
    :cond_2
    return-void
.end method
