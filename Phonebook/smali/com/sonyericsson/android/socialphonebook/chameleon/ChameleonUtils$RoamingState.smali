.class public final enum Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
.super Ljava/lang/Enum;
.source "ChameleonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoamingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

.field public static final enum DOMESTIC:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

.field public static final enum GSM:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

.field public static final enum HOME:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

.field public static final enum INTERNATIONAL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

.field public static final enum NULL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    const-string/jumbo v1, "NULL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->NULL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->HOME:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    const-string/jumbo v1, "DOMESTIC"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->DOMESTIC:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    const-string/jumbo v1, "INTERNATIONAL"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->INTERNATIONAL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    const-string/jumbo v1, "GSM"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->GSM:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->NULL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->HOME:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->DOMESTIC:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->INTERNATIONAL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->GSM:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    return-object v0
.end method
