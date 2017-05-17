.class public final enum Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
.super Ljava/lang/Enum;
.source "VideoCallEntityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

.field public static final enum CALL_LOG_CONTEXT_MENU:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

.field public static final enum CALL_LOG_DETAIL:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

.field public static final enum CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

.field public static final enum DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

.field public static final enum QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    const-string/jumbo v1, "DIALPAD_FRAGMENT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    const-string/jumbo v1, "CALL_LOG_CONTEXT_MENU"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_CONTEXT_MENU:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    const-string/jumbo v1, "CALL_LOG_DETAIL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_DETAIL:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    const-string/jumbo v1, "QUICK_CONTACT"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    const-string/jumbo v1, "CALL_LOG_LIST"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_CONTEXT_MENU:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_DETAIL:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    return-object v0
.end method
