.class public Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"


# instance fields
.field private parts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    iput-object v13, p0, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->parts:Ljava/util/Hashtable;

    .line 52
    if-nez p1, :cond_1

    .line 88
    :cond_0
    return-void

    .line 52
    :cond_1
    if-eqz p2, :cond_0

    .line 53
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "fragments":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v5, v1, v7

    .line 55
    .local v5, "fragment":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "trimmedFragment":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_3

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v13, "--"

    .line 56
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string/jumbo v13, "\r\n\r\n"

    .line 57
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "begin":I
    const/4 v13, -0x1

    .line 58
    if-eq v2, v13, :cond_2

    const/4 v13, 0x0

    .line 61
    :try_start_0
    invoke-virtual {v5, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .local v10, "part":Ljava/lang/String;
    const-string/jumbo v13, "Content-Type"

    .line 67
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "beginType":I
    const-string/jumbo v13, "\r\n"

    .line 68
    invoke-virtual {v12, v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .local v4, "endType":I
    const/4 v9, 0x0

    .local v9, "mime":Ljava/lang/String;
    const/4 v13, -0x1

    .line 70
    if-eq v4, v13, :cond_4

    const-string/jumbo v13, "Content-Type"

    .line 74
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v3

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "mime":Ljava/lang/String;
    :goto_2
    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->parts:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    .end local v3    # "beginType":I
    .end local v4    # "endType":I
    .end local v9    # "mime":Ljava/lang/String;
    .end local v10    # "part":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1

    .restart local v3    # "beginType":I
    .restart local v4    # "endType":I
    .local v9, "mime":Ljava/lang/String;
    .restart local v10    # "part":Ljava/lang/String;
    .restart local v12    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "Content-Type"

    .line 71
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v3

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .local v9, "mime":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public getPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->parts:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isMultipart()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->parts:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
