.class public Lcom/android/mms/model/TextModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "TextModel.java"


# instance fields
.field private final mCharset:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "charset"    # I
    .param p5, "data"    # [B
    .param p6, "region"    # Lcom/android/mms/model/RegionModel;

    .prologue
    const/4 v0, 0x0

    .line 50
    const-string/jumbo v2, "text"

    .line 51
    if-eqz p5, :cond_1

    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V

    .line 53
    if-nez p4, :cond_0

    .line 56
    const/16 p4, 0x6a

    .line 58
    :cond_0
    iput p4, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    .line 59
    invoke-direct {p0, p5}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 49
    return-void

    .line 51
    :cond_1
    new-array v5, v0, [B

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "region"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v5, v0, [B

    const/16 v4, 0x6a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .line 44
    return-void
.end method

.method private extractTextFromData([B)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 65
    :try_start_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 68
    :cond_0
    iget v2, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 71
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 76
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string/jumbo v2, ""

    return-object v2
.end method


# virtual methods
.method public getCharset()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/mms/model/TextModel;->mCharset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/mms/model/TextModel;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/TextModel;->extractTextFromData([B)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iput-boolean v3, p0, Lcom/android/mms/model/TextModel;->mVisible:Z

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 108
    return-void

    .line 111
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/TextModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 112
    iput-boolean v2, p0, Lcom/android/mms/model/TextModel;->mVisible:Z

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mms/model/TextModel;->mText:Ljava/lang/CharSequence;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/TextModel;->notifyModelChanged(Z)V

    .line 94
    return-void
.end method
