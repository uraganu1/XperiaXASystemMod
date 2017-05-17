.class final enum Lcom/sonymobile/jms/conversation/Session$InvitationState;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InvitationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/conversation/Session$InvitationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/conversation/Session$InvitationState;

.field public static final enum ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

.field public static final enum PROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

.field public static final enum REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

.field public static final enum UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    const-string/jumbo v1, "UNPROCESSED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/Session$InvitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    const-string/jumbo v1, "PROCESSED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/conversation/Session$InvitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->PROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    const-string/jumbo v1, "ACCEPTED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/conversation/Session$InvitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/conversation/Session$InvitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [Lcom/sonymobile/jms/conversation/Session$InvitationState;

    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->UNPROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->PROCESSED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->ACCEPTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/conversation/Session$InvitationState;->REJECTED:Lcom/sonymobile/jms/conversation/Session$InvitationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->$VALUES:[Lcom/sonymobile/jms/conversation/Session$InvitationState;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/conversation/Session$InvitationState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/jms/conversation/Session$InvitationState;->$VALUES:[Lcom/sonymobile/jms/conversation/Session$InvitationState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/conversation/Session$InvitationState;

    return-object v0
.end method
