.class public final enum Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;
.super Ljava/lang/Enum;
.source "DialogTimeoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov2/nist/javax2/sip/DialogTimeoutEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

.field public static final enum AckNotReceived:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

.field public static final enum AckNotSent:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

.field public static final enum ReInviteTimeout:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    const-string/jumbo v1, "AckNotReceived"

    invoke-direct {v0, v1, v2}, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    new-instance v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    const-string/jumbo v1, "AckNotSent"

    invoke-direct {v0, v1, v3}, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    new-instance v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    const-string/jumbo v1, "ReInviteTimeout"

    invoke-direct {v0, v1, v4}, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    sget-object v1, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    .line 33
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method

.method public static values()[Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;->$VALUES:[Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgov2/nist/javax2/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method
