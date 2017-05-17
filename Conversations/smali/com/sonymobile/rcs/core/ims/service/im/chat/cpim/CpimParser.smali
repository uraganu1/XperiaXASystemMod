.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
.super Ljava/lang/Object;
.source "CpimParser.java"


# instance fields
.field private cpim:Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->cpim:Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    .line 64
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->parse(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->cpim:Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->parse(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private parse(Ljava/lang/String;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v11, "\r\n\r\n"

    const/4 v12, 0x0

    .line 93
    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .local v6, "end":I
    const/4 v11, 0x0

    .line 94
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "block2":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string/jumbo v11, "\r\n"

    invoke-direct {v9, v1, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v9, "lines":Ljava/util/StringTokenizer;
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 97
    .local v8, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 98
    .local v4, "contentHeaders":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_0

    .line 114
    add-int/lit8 v0, v6, 0x4

    .local v0, "begin":I
    const/4 v3, 0x0

    .line 116
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "content":Ljava/lang/String;
    :goto_1
    new-instance v11, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    invoke-static {v3}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v8, v4, v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->cpim:Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    .line 137
    return-void

    .line 99
    .end local v0    # "begin":I
    .end local v3    # "content":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "token":Ljava/lang/String;
    invoke-static {v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->parseHeader(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;

    move-result-object v7

    .line 101
    .local v7, "hd":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Content-Type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 104
    :cond_1
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "block2":Ljava/lang/String;
    .end local v4    # "contentHeaders":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "end":I
    .end local v7    # "hd":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
    .end local v8    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "lines":Ljava/util/StringTokenizer;
    .end local v10    # "token":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/Exception;

    const-string/jumbo v12, "Bad CPIM message format"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 101
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "block2":Ljava/lang/String;
    .restart local v4    # "contentHeaders":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "end":I
    .restart local v7    # "hd":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
    .restart local v8    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "lines":Ljava/util/StringTokenizer;
    .restart local v10    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Content-type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Content-Length"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Content-length"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 106
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 109
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    :cond_3
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v7    # "hd":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
    .end local v10    # "token":Ljava/lang/String;
    .restart local v0    # "begin":I
    .local v3, "content":Ljava/lang/String;
    :cond_4
    const-string/jumbo v11, "\r\n\r\n"

    .line 117
    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 118
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "block3":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    .end local v9    # "lines":Ljava/util/StringTokenizer;
    const-string/jumbo v11, "\r\n"

    invoke-direct {v9, v2, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .restart local v9    # "lines":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_5

    .line 125
    add-int/lit8 v0, v6, 0x4

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "content":Ljava/lang/String;
    goto/16 :goto_1

    .line 121
    .local v3, "content":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 122
    .restart local v10    # "token":Ljava/lang/String;
    invoke-static {v10}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->parseHeader(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;

    move-result-object v7

    .line 123
    .restart local v7    # "hd":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimHeader;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getCpimMessage()Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->cpim:Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    return-object v0
.end method
