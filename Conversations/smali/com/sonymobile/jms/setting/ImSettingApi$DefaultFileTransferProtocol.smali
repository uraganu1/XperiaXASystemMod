.class public final enum Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
.super Ljava/lang/Enum;
.source "ImSettingApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/setting/ImSettingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultFileTransferProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

.field public static final enum HTTP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

.field public static final enum MSRP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    const-string/jumbo v1, "MSRP"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->MSRP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->HTTP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->MSRP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->HTTP:Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    .line 20
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;

    return-object v0
.end method
