.class public final enum Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
.super Ljava/lang/Enum;
.source "ConversationId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/conversation/ConversationId$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

.field public static final enum JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

.field public static final enum NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

.field public static final enum XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

.field public static final enum XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    const-string/jumbo v1, "NO_CONVERSATION"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    const-string/jumbo v1, "XMS_CONVERSATION"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    const-string/jumbo v1, "XMS_AND_JOYN_ONE2ONE_CONVERSATION"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .line 16
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    const-string/jumbo v1, "JOYN_GROUP_CONVERSATION"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->$VALUES:[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->$VALUES:[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    return-object v0
.end method
