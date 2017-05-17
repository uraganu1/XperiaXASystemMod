.class public final enum Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
.super Ljava/lang/Enum;
.source "ImConferenceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/ImConferenceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImConferenceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum BOOTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum BUSY:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum CONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum DECLINED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum DEPARTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum DISCONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum FAILED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum PENDING:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

.field public static final enum UNKNOWN:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->UNKNOWN:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->PENDING:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->CONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DISCONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "DEPARTED"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DEPARTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "BOOTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->BOOTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->FAILED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "BUSY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->BUSY:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const-string/jumbo v1, "DECLINED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DECLINED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    const/16 v0, 0x9

    .line 12
    new-array v0, v0, [Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->UNKNOWN:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->PENDING:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->CONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DISCONNECTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DEPARTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->BOOTED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->FAILED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->BUSY:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->DECLINED:Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;

    return-object v0
.end method
