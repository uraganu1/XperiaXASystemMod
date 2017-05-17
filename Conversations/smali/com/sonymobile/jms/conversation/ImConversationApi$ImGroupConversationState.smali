.class public final enum Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;
.super Ljava/lang/Enum;
.source "ImConversationApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/ImConversationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImGroupConversationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum ABORTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum ACCEPTING:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum FAILED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum FAILED_INITIATION:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum INITIATED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum INVITED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED_MAX_CHATS:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum REJECTED_TIME_OUT:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

.field public static final enum STARTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "INVITED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->INVITED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "INITIATED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->INITIATED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->STARTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->FAILED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "ACCEPTING"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ACCEPTING:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "ABORTED_BY_USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "ABORTED_BY_REMOTE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "ABORTED_BY_SYSTEM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED_BY_SECONDARY_DEVICE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_BY_SECONDARY_DEVICE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED_SPAM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED_MAX_CHATS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_MAX_CHATS:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED_BY_USER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED_BY_REMOTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "REJECTED_TIME_OUT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_TIME_OUT:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const-string/jumbo v1, "FAILED_INITIATION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->FAILED_INITIATION:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    const/16 v0, 0x10

    .line 26
    new-array v0, v0, [Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->INVITED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->INITIATED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->STARTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->FAILED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ACCEPTING:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_BY_SECONDARY_DEVICE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_MAX_CHATS:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->REJECTED_TIME_OUT:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->FAILED_INITIATION:Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    .line 26
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/conversation/ImConversationApi$ImGroupConversationState;

    return-object v0
.end method
