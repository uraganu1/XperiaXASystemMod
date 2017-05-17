.class public Lcom/gsma/services/rcs/JoynContactFormatException;
.super Lcom/gsma/services/rcs/JoynServiceException;
.source "JoynContactFormatException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "joyn contact format not supported"

    .line 38
    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/JoynServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
