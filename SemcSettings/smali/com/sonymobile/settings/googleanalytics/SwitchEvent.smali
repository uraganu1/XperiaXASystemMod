.class public final enum Lcom/sonymobile/settings/googleanalytics/SwitchEvent;
.super Ljava/lang/Enum;
.source "SwitchEvent.java"

# interfaces
.implements Lcom/sonymobile/settings/googleanalytics/Event;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/googleanalytics/SwitchEvent;",
        ">;",
        "Lcom/sonymobile/settings/googleanalytics/Event;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum ALARM:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum BATTERY:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum BATTERY_PERCENTAGE:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum BLUETOOTH:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum LOCATION:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum STAMINA:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum TIME:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

.field public static final enum WIFI:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategory:Lcom/sonymobile/settings/googleanalytics/EventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "BLUETOOTH"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v3, "bluetooth"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BLUETOOTH:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 10
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "WIFI"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v3, "wifi"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->WIFI:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 11
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "BATTERY"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v3, "battery"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BATTERY:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 12
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "BATTERY_PERCENTAGE"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v3, "battery_percentage"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BATTERY_PERCENTAGE:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 13
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "ALARM"

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v3, "alarm"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->ALARM:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 14
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "TIME"

    const/4 v2, 0x5

    sget-object v3, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v4, "time"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->TIME:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 15
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "STAMINA"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v4, "stamina"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->STAMINA:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 16
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    const-string v1, "LOCATION"

    const/4 v2, 0x7

    sget-object v3, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v4, "location"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;-><init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->LOCATION:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    sget-object v1, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BLUETOOTH:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->WIFI:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BATTERY:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->BATTERY_PERCENTAGE:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->ALARM:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->TIME:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->STAMINA:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->LOCATION:Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->$VALUES:[Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/settings/googleanalytics/EventCategory;Ljava/lang/String;)V
    .locals 0
    .param p3, "category"    # Lcom/sonymobile/settings/googleanalytics/EventCategory;
    .param p4, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/settings/googleanalytics/EventCategory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->mCategory:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    .line 25
    iput-object p4, p0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->mAction:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/googleanalytics/SwitchEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/googleanalytics/SwitchEvent;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->$VALUES:[Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    invoke-virtual {v0}, [Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/settings/googleanalytics/SwitchEvent;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/settings/googleanalytics/SwitchEvent;->mCategory:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    invoke-virtual {v0}, Lcom/sonymobile/settings/googleanalytics/EventCategory;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
