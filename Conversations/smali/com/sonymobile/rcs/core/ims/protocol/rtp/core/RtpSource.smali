.class public Lcom/sonymobile/rcs/core/ims/protocol/rtp/core/RtpSource;
.super Ljava/lang/Object;
.source "RtpSource.java"


# static fields
.field public static CNAME:Ljava/lang/String;

.field private static MIN_SEQUENCIAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "anonymous@127.0.0.1"

    .line 50
    sput-object v0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/core/RtpSource;->CNAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    sput v0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/core/RtpSource;->MIN_SEQUENCIAL:I

    return-void
.end method
