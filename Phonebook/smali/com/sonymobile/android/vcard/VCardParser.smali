.class public abstract Lcom/sonymobile/android/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract parse(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation
.end method

.method public parse(Ljava/io/InputStream;Lcom/sonymobile/android/vcard/VCardInterpreter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p2}, Lcom/sonymobile/android/vcard/VCardParser;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 89
    return-void
.end method

.method public abstract parseOne(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation
.end method
