.class public final enum Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
.super Ljava/lang/Enum;
.source "ConferenceCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConferenceConstraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

.field public static final enum CALLER_ID_DEACTIVATED:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

.field public static final enum CALLER_IN_ROAMING:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

.field public static final enum NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

.field public static final enum ONGOING_CALL_IN_PROGRESS:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    const-string/jumbo v1, "NO_CONSTRAINT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    const-string/jumbo v1, "ONGOING_CALL_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ONGOING_CALL_IN_PROGRESS:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    const-string/jumbo v1, "CALLER_ID_DEACTIVATED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_ID_DEACTIVATED:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    const-string/jumbo v1, "CALLER_IN_ROAMING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_IN_ROAMING:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ONGOING_CALL_IN_PROGRESS:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_ID_DEACTIVATED:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_IN_ROAMING:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    return-object v0
.end method
