.class public final enum Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
.super Ljava/lang/Enum;
.source "ImSettingApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/setting/ImSettingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

.field public static final enum CONVERGED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

.field public static final enum INTEGRATED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

.field public static final enum NO_CLIENT:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

.field public static final enum SEAMLESS:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    const-string/jumbo v1, "NO_CLIENT"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->NO_CLIENT:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    const-string/jumbo v1, "INTEGRATED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->INTEGRATED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    const-string/jumbo v1, "CONVERGED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->CONVERGED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    const-string/jumbo v1, "SEAMLESS"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->SEAMLESS:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->NO_CLIENT:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->INTEGRATED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->CONVERGED:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->SEAMLESS:Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    .line 27
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;

    return-object v0
.end method
