.class public final enum Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
.super Ljava/lang/Enum;
.source "EntityVisibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

.field public static final enum DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

.field public static final enum HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

.field public static final enum LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

.field public static final enum NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    const-string/jumbo v1, "LIMITED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    const-string/jumbo v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    return-object v0
.end method
