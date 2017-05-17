.class public final enum Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
.super Ljava/lang/Enum;
.source "ImMessageStorageApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/message/ImMessageStorageApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImFileMessageDeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field public static final enum DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field public static final enum FAILED_DOWNLOAD:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field public static final enum FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field public static final enum INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field public static final enum NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

.field public static final enum UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const-string/jumbo v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const-string/jumbo v1, "NOT_DELIVERED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const-string/jumbo v1, "INVITATION_DELIVERED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const-string/jumbo v1, "FAILED_INVITATION_DELIVERY"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const-string/jumbo v1, "DOWNLOADED"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const-string/jumbo v1, "FAILED_DOWNLOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_DOWNLOAD:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_DOWNLOAD:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->$VALUES:[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->$VALUES:[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v0
.end method
