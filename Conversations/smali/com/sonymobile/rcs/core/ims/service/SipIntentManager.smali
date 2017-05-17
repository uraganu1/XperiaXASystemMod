.class public Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;
.super Ljava/lang/Object;
.source "SipIntentManager.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 50
    return-void
.end method

.method public static formatIntentAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v1, "MESSAGE"

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "com.sonymobile.rcs.sip.SESSION_INVITATION"

    .line 116
    .local v0, "action":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "com.sonymobile.rcs.sip.INSTANT_MESSAGE"

    .line 112
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatIntentMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "="

    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "mime":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "mime":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "="

    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "submime":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/sonymobile/rcs/utils/StringUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mime":Ljava/lang/String;
    goto :goto_0
.end method

.method public static generateSipIntent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p1, "featureTag"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->formatIntentMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "mime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->formatIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    .line 85
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    return-object v1
.end method

.method public static isSipIntentResolvedByBroadcastReceiver(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    .line 98
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSipRequestResolved(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Landroid/content/Intent;
    .locals 8
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v3, 0x0

    .line 60
    .local v3, "result":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFeatureTags()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 72
    .end local v3    # "result":Landroid/content/Intent;
    :goto_1
    return-object v3

    .line 62
    .restart local v3    # "result":Landroid/content/Intent;
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "featureTag":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->generateSipIntent(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    :goto_2
    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->isSipIntentResolvedByBroadcastReceiver(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/SipIntentManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIP intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    :cond_2
    move-object v3, v2

    .local v3, "result":Landroid/content/Intent;
    goto :goto_1
.end method
