.class public final enum Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
.super Ljava/lang/Enum;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

.field public static final enum FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

.field public static final enum NEAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    const-string/jumbo v1, "NEAR"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->NEAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    const-string/jumbo v1, "FAR"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->NEAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    return-object v0
.end method
