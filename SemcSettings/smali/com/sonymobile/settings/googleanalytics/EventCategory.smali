.class public final enum Lcom/sonymobile/settings/googleanalytics/EventCategory;
.super Ljava/lang/Enum;
.source "EventCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/googleanalytics/EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/googleanalytics/EventCategory;

.field public static final enum SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;


# instance fields
.field private final mCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/sonymobile/settings/googleanalytics/EventCategory;

    const-string v1, "SYSTEM_ICONS"

    const-string v2, "system_icons"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/settings/googleanalytics/EventCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/settings/googleanalytics/EventCategory;

    sget-object v1, Lcom/sonymobile/settings/googleanalytics/EventCategory;->SYSTEM_ICONS:Lcom/sonymobile/settings/googleanalytics/EventCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/settings/googleanalytics/EventCategory;->$VALUES:[Lcom/sonymobile/settings/googleanalytics/EventCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/sonymobile/settings/googleanalytics/EventCategory;->mCategory:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/googleanalytics/EventCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/sonymobile/settings/googleanalytics/EventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/googleanalytics/EventCategory;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/googleanalytics/EventCategory;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/sonymobile/settings/googleanalytics/EventCategory;->$VALUES:[Lcom/sonymobile/settings/googleanalytics/EventCategory;

    invoke-virtual {v0}, [Lcom/sonymobile/settings/googleanalytics/EventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/settings/googleanalytics/EventCategory;

    return-object v0
.end method


# virtual methods
.method getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/settings/googleanalytics/EventCategory;->mCategory:Ljava/lang/String;

    return-object v0
.end method
