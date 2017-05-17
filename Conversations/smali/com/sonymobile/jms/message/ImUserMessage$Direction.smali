.class public final enum Lcom/sonymobile/jms/message/ImUserMessage$Direction;
.super Ljava/lang/Enum;
.source "ImUserMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/message/ImUserMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/message/ImUserMessage$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/message/ImUserMessage$Direction;

.field public static final enum INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

.field public static final enum OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    const-string/jumbo v1, "OUTGOING"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImUserMessage$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    new-instance v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/message/ImUserMessage$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->$VALUES:[Lcom/sonymobile/jms/message/ImUserMessage$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    .line 16
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->$VALUES:[Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0
.end method
