.class public Lcom/sonyericsson/conversations/util/vcalendar/ParsingException;
.super Ljava/lang/Exception;
.source "ParsingException.java"


# static fields
.field private static final serialVersionUID:J = 0x7d93521acccf1b43L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
