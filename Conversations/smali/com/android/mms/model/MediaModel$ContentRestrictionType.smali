.class public final enum Lcom/android/mms/model/MediaModel$ContentRestrictionType;
.super Ljava/lang/Enum;
.source "MediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/MediaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentRestrictionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/model/MediaModel$ContentRestrictionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/model/MediaModel$ContentRestrictionType;

.field public static final enum JOYN_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

.field public static final enum MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

.field public static final enum NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    const-string/jumbo v1, "MMS_CONTENT_RESTRICTION"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/MediaModel$ContentRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 76
    new-instance v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    const-string/jumbo v1, "JOYN_CONTENT_RESTRICTION"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/model/MediaModel$ContentRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->JOYN_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 77
    new-instance v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    const-string/jumbo v1, "NO_CONTENT_RESTRICTION"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/model/MediaModel$ContentRestrictionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    sget-object v1, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->MMS_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->JOYN_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->NO_CONTENT_RESTRICTION:Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->$VALUES:[Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/mms/model/MediaModel$ContentRestrictionType;->$VALUES:[Lcom/android/mms/model/MediaModel$ContentRestrictionType;

    return-object v0
.end method
