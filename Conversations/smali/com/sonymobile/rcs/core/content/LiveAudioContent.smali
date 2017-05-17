.class public Lcom/sonymobile/rcs/core/content/LiveAudioContent;
.super Lcom/sonymobile/rcs/core/content/AudioContent;
.source "LiveAudioContent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "capture://audio"

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/rcs/core/content/AudioContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
