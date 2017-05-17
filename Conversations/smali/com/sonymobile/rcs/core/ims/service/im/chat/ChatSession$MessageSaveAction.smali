.class public final enum Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
.super Ljava/lang/Enum;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageSaveAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

.field public static final enum ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

.field public static final enum DO_NOT_ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

.field public static final enum UPDATE_MESSAGE_MSGID:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    const-string/jumbo v1, "DO_NOT_ADD_MESSAGE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->DO_NOT_ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    const-string/jumbo v1, "ADD_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    const-string/jumbo v1, "UPDATE_MESSAGE_MSGID"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->UPDATE_MESSAGE_MSGID:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    const/4 v0, 0x3

    .line 162
    new-array v0, v0, [Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->DO_NOT_ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->ADD_MESSAGE:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->UPDATE_MESSAGE_MSGID:Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->$VALUES:[Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    .line 162
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;->$VALUES:[Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession$MessageSaveAction;

    return-object v0
.end method
