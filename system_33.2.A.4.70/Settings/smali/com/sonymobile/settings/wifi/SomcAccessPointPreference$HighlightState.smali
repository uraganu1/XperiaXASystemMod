.class public final enum Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;
.super Ljava/lang/Enum;
.source "SomcAccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/wifi/SomcAccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HighlightState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

.field public static final enum BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

.field public static final enum CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

.field public static final enum CONNECTING:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

.field public static final enum DISCONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

.field public static final enum JUST_CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->DISCONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 25
    new-instance v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTING:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 26
    new-instance v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    const-string/jumbo v1, "JUST_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->JUST_CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 27
    new-instance v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 28
    new-instance v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    const-string/jumbo v1, "BAD_PASSWORD"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->DISCONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTING:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->JUST_CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->CONNECTED:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->BAD_PASSWORD:Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->$VALUES:[Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;->$VALUES:[Lcom/sonymobile/settings/wifi/SomcAccessPointPreference$HighlightState;

    return-object v0
.end method
