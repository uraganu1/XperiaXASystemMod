.class final enum Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
.super Ljava/lang/Enum;
.source "ImConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/ImConversationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ImConversationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum ABORTED_BY_TIMEOUT:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum CANCELLED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum FILE_TRANSFERED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum FILE_UPLOADED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

.field public static final enum TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "PENDING_REMOTE_RESPONSE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "PENDING_LOCAL_RESPONSE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "ESTABLISHED"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "NOT_PRESENT_IN_STACK"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "ABORTED_BY_USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "ABORTED_BY_SYSTEM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "ABORTED_BY_TIMEOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_TIMEOUT:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "TERMINATED_BY_REMOTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "CANCELLED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->CANCELLED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "NOT_JOINED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "FILE_TRANSFERED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_TRANSFERED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const-string/jumbo v1, "FILE_UPLOADED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_UPLOADED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    const/16 v0, 0xd

    .line 63
    new-array v0, v0, [Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NEW:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_REMOTE_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ESTABLISHED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_PRESENT_IN_STACK:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_USER:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_SYSTEM:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->ABORTED_BY_TIMEOUT:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->CANCELLED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->NOT_JOINED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_TRANSFERED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->FILE_UPLOADED:Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    .line 63
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/conversation/ImConversationManager$ImConversationState;

    return-object v0
.end method
