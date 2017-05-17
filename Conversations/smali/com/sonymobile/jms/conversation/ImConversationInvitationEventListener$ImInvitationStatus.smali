.class public final enum Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
.super Ljava/lang/Enum;
.source "ImConversationInvitationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImInvitationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

.field public static final enum PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "PENDING_LOCAL_RESPONSE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "AUTO_ACCEPTED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "AUTO_REJECTED_SPAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const-string/jumbo v1, "AUTO_REJECTED_UNKNOWN_REASON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    const/4 v0, 0x7

    .line 10
    new-array v0, v0, [Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->PENDING_LOCAL_RESPONSE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_ACCEPTED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_TOO_MANY_SESSIONS_ALLOCATED:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_FILE_EXCEEDS_MAX_SIZE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_NOT_ENOUGH_SPACE_TO_DOWNLOAD_FILE:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_SPAM:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->AUTO_REJECTED_UNKNOWN_REASON:Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;->$VALUES:[Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;

    return-object v0
.end method
