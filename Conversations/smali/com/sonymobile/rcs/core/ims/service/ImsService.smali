.class public abstract Lcom/sonymobile/rcs/core/ims/service/ImsService;
.super Ljava/lang/Object;
.source "ImsService.java"


# instance fields
.field private activated:Z

.field private imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .param p2, "activated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->activated:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->started:Z

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 117
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    .line 118
    iput-boolean p2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->activated:Z

    .line 119
    return-void
.end method


# virtual methods
.method public addSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add new session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->imsModule:Lcom/sonymobile/rcs/core/ims/ImsModule;

    return-object v0
.end method

.method public getOlderGCSessions(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)Ljava/util/Enumeration;
    .locals 6
    .param p1, "currentSession"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 220
    .local v3, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 221
    .local v1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 235
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    return-object v4

    .line 223
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 224
    .local v2, "oldSession":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    instance-of v4, v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/GroupChatSession;

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    return-object v0
.end method

.method public getSessions()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 206
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v0, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    .line 207
    .end local v0    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSessions(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 166
    .local v1, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    monitor-enter v4

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 168
    .local v0, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3

    .line 169
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .line 170
    .local v2, "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v0    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;>;"
    .end local v2    # "session":Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->activated:Z

    return v0
.end method

.method public isServiceStarted()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->started:Z

    return v0
.end method

.method public removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;I)V
    .locals 5
    .param p1, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    .param p2, "error"    # I

    .prologue
    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->createResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v1

    .line 332
    .local v1, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;)V

    .line 338
    .end local v1    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_0
    :goto_1
    return-void

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t send error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setServiceStarted(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/sonymobile/rcs/core/ims/service/ImsService;->started:Z

    .line 299
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
