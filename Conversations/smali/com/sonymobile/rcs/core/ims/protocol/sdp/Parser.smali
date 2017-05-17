.class Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private buffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->buffer:Ljava/util/Vector;

    return-void
.end method

.method private readChar(Ljava/io/ByteArrayInputStream;)I
    .locals 3
    .param p1, "input"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->buffer:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 126
    .local v0, "ch":I
    :goto_0
    return v0

    .line 121
    .end local v0    # "ch":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->buffer:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    .restart local v0    # "ch":I
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->buffer:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method private skipWhitespace(Ljava/io/ByteArrayInputStream;)V
    .locals 4
    .param p1, "input"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->readChar(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .local v0, "ch":I
    :goto_0
    const/16 v1, 0x20

    .line 107
    if-ne v0, v1, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->readChar(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    .line 107
    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->buffer:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-gtz v3, :cond_1

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 97
    .local v2, "line":Ljava/lang/String;
    return-object v2

    .line 89
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->readChar(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .local v1, "ch":I
    :goto_0
    const/16 v3, 0xa

    .line 90
    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->readChar(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    goto :goto_0
.end method

.method public getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z
    .locals 5
    .param p1, "input"    # Ljava/io/ByteArrayInputStream;
    .param p2, "tk"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 58
    .local v2, "found":Z
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->skipWhitespace(Ljava/io/ByteArrayInputStream;)V

    .line 61
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-gtz v4, :cond_0

    .line 70
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 71
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 74
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->ungetToken(Ljava/lang/String;)V

    .line 77
    :goto_1
    return v2

    .line 62
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->readChar(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .local v1, "ch":I
    :goto_2
    const/16 v4, 0x3d

    .line 63
    if-ne v1, v4, :cond_2

    .line 67
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    .line 63
    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->readChar(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    goto :goto_2

    .line 72
    .end local v1    # "ch":I
    .restart local v3    # "token":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public ungetToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "tk"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, "token":[B
    const/4 v0, 0x0

    .line 43
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 46
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->buffer:Ljava/util/Vector;

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
