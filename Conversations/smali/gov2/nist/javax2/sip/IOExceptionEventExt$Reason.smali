.class public final enum Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;
.super Ljava/lang/Enum;
.source "IOExceptionEventExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/IOExceptionEventExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

.field public static final enum KeepAliveTimeout:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

.field public static final enum TCPSocketFailure:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    const-string/jumbo v1, "KeepAliveTimeout"

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->KeepAliveTimeout:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    new-instance v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    const-string/jumbo v1, "TCPSocketFailure"

    invoke-direct {v0, v1, v3}, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->TCPSocketFailure:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    const/4 v0, 0x2

    new-array v0, v0, [Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    sget-object v1, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->KeepAliveTimeout:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->TCPSocketFailure:Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    aput-object v1, v0, v3

    sput-object v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->$VALUES:[Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    .line 16
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    return-object v0
.end method

.method public static values()[Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;->$VALUES:[Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov2/nist/javax2/sip/IOExceptionEventExt$Reason;

    return-object v0
.end method
