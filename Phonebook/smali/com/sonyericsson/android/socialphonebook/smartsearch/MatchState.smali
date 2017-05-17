.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
.super Ljava/lang/Object;
.source "MatchState.java"


# instance fields
.field private mKeyForResult:Ljava/lang/String;

.field private mLen:I

.field private mStateBits:[I

.field private mTypeForResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;-><init>(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mKeyForResult:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mTypeForResult:I

    .line 75
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    .line 76
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->unsetAll()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "strState"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mKeyForResult:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mTypeForResult:I

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    .line 89
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x31

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_1
    aput v1, v4, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 91
    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public copy()Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;-><init>(I)V

    .line 62
    .local v0, "copyState":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v1, v2, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->set(I)V

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mKeyForResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setKey(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method

.method public getFirstSetPos()I
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v0, v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    return v0

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mKeyForResult:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSetPos()I
    .locals 3

    .prologue
    .line 137
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    return v0

    .line 137
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    return v0
.end method

.method public getSetCount()I
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v1, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mTypeForResult:I

    return v0
.end method

.method public isSet(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 121
    :cond_0
    return v1

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public set(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 97
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 95
    return-void
.end method

.method public setAll()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mKeyForResult:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mTypeForResult:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x31

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unset(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 104
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    aput v1, v0, p1

    .line 102
    return-void
.end method

.method public unsetAll()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mLen:I

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->mStateBits:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method
