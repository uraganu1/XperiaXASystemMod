.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
.super Ljava/lang/Object;
.source "ListOfParticipant.java"


# instance fields
.field private list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 77
    :try_start_0
    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v6, "pidfInput":Lorg/xml/sax/InputSource;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;

    invoke-direct {v4, v6}, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 79
    .local v4, "listParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;->getResourceList()Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;

    move-result-object v7

    .line 80
    .local v7, "resList":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
    if-nez v7, :cond_1

    .line 101
    .end local v4    # "listParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;
    .end local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v7    # "resList":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v4    # "listParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;
    .restart local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .restart local v7    # "resList":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
    :cond_1
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;->getEntries()Ljava/util/Vector;

    move-result-object v1

    .local v1, "entries":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 82
    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 83
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "entry":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 82
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 88
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    .line 91
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 100
    .end local v1    # "entries":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "listParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .end local v7    # "resList":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t parse resource-list document"

    invoke-virtual {v8, v9, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entries":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v2    # "entry":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "listParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListParser;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "pidfInput":Lorg/xml/sax/InputSource;
    .restart local v7    # "resList":Lcom/sonymobile/rcs/core/ims/service/im/chat/resourcelist/ResourceListDocument;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Add participant "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to the list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    return-void
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "participant"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add participant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public removeParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "participant"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove participant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Participant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v2, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 153
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
