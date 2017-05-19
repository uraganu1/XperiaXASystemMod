.class final enum Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;
.super Ljava/lang/Enum;
.source "SomcAnswerPad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcAnswerPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SomcAnswerPadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

.field public static final enum VIDEO:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

.field public static final enum VIDEO_WAITING:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

.field public static final enum VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    const-string/jumbo v1, "VOICE"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    .line 35
    new-instance v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    .line 36
    new-instance v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    const-string/jumbo v1, "VIDEO_WAITING"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO_WAITING:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO_WAITING:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->$VALUES:[Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->$VALUES:[Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    return-object v0
.end method
