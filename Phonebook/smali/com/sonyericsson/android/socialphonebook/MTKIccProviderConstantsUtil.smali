.class public Lcom/sonyericsson/android/socialphonebook/MTKIccProviderConstantsUtil;
.super Ljava/lang/Object;
.source "MTKIccProviderConstantsUtil.java"


# static fields
.field public static final AAS_KEY:Ljava/lang/String; = "aas"

.field public static final ANRS_COLUMN:I = 0x4

.field public static final COLUMN_SIM_CONTACT_INFO:[Ljava/lang/String;

.field public static final EMAIL_COLUMN:I = 0x3

.field public static final GAS_KEY:Ljava/lang/String; = "gas"

.field public static final GROUP_COLUMN:I = 0x5

.field public static final ICC_ADN_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/adn"

.field public static final ICC_PBR_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/pbr"

.field public static final ICC_SDN_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/sdn"

.field public static final INDEX_COLUMN:I = 0x0

.field public static final INDEX_KEY:Ljava/lang/String; = "index"

.field public static final NAME_COLUMN:I = 0x1

.field public static final NUMBER_COLUMN:I = 0x2

.field public static final SIM_PHONE_BOOK_SERVICE_NAME_FOR_SINGLE_SLOT:Ljava/lang/String; = "simphonebook"

.field public static final SIM_TYPE_SIM_TAG:Ljava/lang/String; = "SIM"

.field public static final SIM_TYPE_UIM_TAG:Ljava/lang/String; = "UIM"

.field public static final SIM_TYPE_UNKNOW_TAG:Ljava/lang/String; = "UNKONW"

.field public static final SIM_TYPE_USIM_TAG:Ljava/lang/String; = "USIM"

.field public static final SNE_KEY:Ljava/lang/String; = "sne"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 31
    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "number"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "emails"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "additionalNumber"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "groupIds"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 30
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/MTKIccProviderConstantsUtil;->COLUMN_SIM_CONTACT_INFO:[Ljava/lang/String;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
