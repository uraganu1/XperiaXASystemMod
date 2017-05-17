.class public final enum Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;
.super Ljava/lang/Enum;
.source "IceInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

.field public static final enum ABOUT_ICE:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

.field public static final enum DISABLED_CALL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

.field public static final enum MEDICAL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

.field public static final enum MYSELF_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

.field public static final enum NOT_VOICE_CAPABLE_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

.field public static final enum NO_NUMBER_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const-string/jumbo v1, "ABOUT_ICE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ABOUT_ICE:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const-string/jumbo v1, "MEDICAL_INFO"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MEDICAL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const-string/jumbo v1, "MYSELF_INFO"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MYSELF_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const-string/jumbo v1, "NO_NUMBER_INFO"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NO_NUMBER_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const-string/jumbo v1, "DISABLED_CALL_INFO"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->DISABLED_CALL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const-string/jumbo v1, "NOT_VOICE_CAPABLE_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NOT_VOICE_CAPABLE_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ABOUT_ICE:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MEDICAL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MYSELF_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NO_NUMBER_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->DISABLED_CALL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NOT_VOICE_CAPABLE_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    return-object v0
.end method
