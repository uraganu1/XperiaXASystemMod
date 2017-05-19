.class public final enum Lcom/android/incallui/InCallPresenter$InCallState;
.super Ljava/lang/Enum;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/InCallPresenter$InCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

.field public static final enum WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2126
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string/jumbo v1, "NO_CALLS"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    .line 2127
    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 2129
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    .line 2130
    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 2132
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string/jumbo v1, "INCALL"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    .line 2133
    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 2135
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string/jumbo v1, "WAITING_FOR_ACCOUNT"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    .line 2136
    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 2138
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string/jumbo v1, "PENDING_OUTGOING"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    .line 2140
    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 2142
    new-instance v0, Lcom/android/incallui/InCallPresenter$InCallState;

    const-string/jumbo v1, "OUTGOING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallState;-><init>(Ljava/lang/String;I)V

    .line 2143
    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 2125
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->$VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2125
    const-class v0, Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 2125
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->$VALUES:[Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method


# virtual methods
.method public isConnectingOrConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2150
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v1, :cond_0

    .line 2151
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v1, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return v0

    .line 2152
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 2146
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
