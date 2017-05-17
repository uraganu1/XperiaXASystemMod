.class public final enum Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
.super Ljava/lang/Enum;
.source "ImMessageStorageApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/message/ImMessageStorageApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

.field public static final enum FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

.field public static final enum SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

.field public static final enum SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

.field public static final enum TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    const-string/jumbo v1, "SYSTEM_EVENT_JOINED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    const-string/jumbo v1, "SYSTEM_EVENT_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    const-string/jumbo v1, "FILE_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    const-string/jumbo v1, "TEXT_MESSAGE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->$VALUES:[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    .line 32
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->$VALUES:[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v0
.end method
