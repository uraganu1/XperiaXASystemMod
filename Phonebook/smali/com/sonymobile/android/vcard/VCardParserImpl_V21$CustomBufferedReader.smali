.class public final Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardParserImpl_V21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CustomBufferedReader"
.end annotation


# instance fields
.field private mNextLine:Ljava/lang/String;

.field private mNextLineIsValid:Z

.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public peekLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 89
    iget-wide v6, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    .line 91
    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 77
    iget-wide v6, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    .line 78
    return-object v2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    .line 71
    return-object v0
.end method
