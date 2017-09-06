.class public final Lcom/mediatek/contacts/simcontact/SlotUtils;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;,
        Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;
    }
.end annotation


# static fields
.field private static mActiveUsimPhbInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static sSlotInfoMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 304
    sput-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->mActiveUsimPhbInfoMap:Ljava/util/HashMap;

    .line 325
    sput-object v0, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllSlotIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getSlotInfoMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 329
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    .line 330
    const-string/jumbo v2, "SlotUtils"

    const-string/jumbo v3, "[SlotUtils] update the phb info"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 332
    add-int/lit8 v1, v0, 0x0

    .line 333
    .local v1, "slotId":I
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;

    invoke-direct {v4, v1}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "slotId":I
    :cond_0
    sget-object v2, Lcom/mediatek/contacts/simcontact/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    return-object v2
.end method

.method public static isGeminiEnabled()Z
    .locals 1

    .prologue
    .line 467
    sget-boolean v0, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_GEMINI_SUPPORT:Z

    return v0
.end method
