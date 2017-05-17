.class public Lcom/android/vcard/exception/VCardInvalidLineException;
.super Lcom/android/vcard/exception/VCardException;
.source "VCardInvalidLineException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/vcard/exception/VCardException;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
