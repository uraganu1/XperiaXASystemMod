.class public final enum Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
.super Ljava/lang/Enum;
.source "ImSettingApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/setting/ImSettingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileResizeOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

.field public static final enum ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

.field public static final enum ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

.field public static final enum NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    const-string/jumbo v1, "ALWAYS_RESIZE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    const-string/jumbo v1, "ALWAYS_ASK"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    const-string/jumbo v1, "NEVER_RESIZE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    return-object v0
.end method
