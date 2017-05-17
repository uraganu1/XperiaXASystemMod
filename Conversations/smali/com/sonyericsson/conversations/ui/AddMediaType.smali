.class public final enum Lcom/sonyericsson/conversations/ui/AddMediaType;
.super Ljava/lang/Enum;
.source "AddMediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/AddMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_FILE:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_NOTES:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_PICTURE:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_SKETCH:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_STICKER:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_VCALENDAR:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum ADD_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum CAPTURE_PHOTO:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum CAPTURE_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum GET_LOCATION:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum INVALID_ROW_ID:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum SEND_CONTACT:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum STICKER_STORE:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field public static final enum STICKER_STORE_BANNER:Lcom/sonyericsson/conversations/ui/AddMediaType;

.field private static sValueMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sonyericsson/conversations/ui/AddMediaType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 14
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_PICTURE"

    const-wide/16 v4, 0x1

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_PICTURE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 15
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "CAPTURE_PHOTO"

    const-wide/16 v4, 0x2

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_PHOTO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 16
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_VIDEO"

    const-wide/16 v4, 0x3

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 17
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "CAPTURE_VIDEO"

    const-wide/16 v4, 0x4

    invoke-direct {v2, v3, v9, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 18
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_AUDIO"

    const-wide/16 v4, 0x5

    invoke-direct {v2, v3, v10, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 19
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_NOTES"

    const-wide/16 v4, 0x6

    const/4 v6, 0x5

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_NOTES:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 20
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "GET_LOCATION"

    const-wide/16 v4, 0x7

    const/4 v6, 0x6

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->GET_LOCATION:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 21
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_SKETCH"

    const-wide/16 v4, 0x8

    const/4 v6, 0x7

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_SKETCH:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 22
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "SEND_CONTACT"

    const-wide/16 v4, 0x9

    const/16 v6, 0x8

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->SEND_CONTACT:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 23
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_STICKER"

    const-wide/16 v4, 0xa

    const/16 v6, 0x9

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_STICKER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 24
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_VCALENDAR"

    const-wide/16 v4, 0xb

    const/16 v6, 0xa

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VCALENDAR:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 25
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "ADD_FILE"

    const-wide/16 v4, 0xc

    const/16 v6, 0xb

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_FILE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 26
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "STICKER_STORE"

    const-wide/16 v4, 0xd

    const/16 v6, 0xc

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 27
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "STICKER_STORE_BANNER"

    const-wide/16 v4, 0xe

    const/16 v6, 0xd

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE_BANNER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 28
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "RECORD_AUDIO"

    const-wide/16 v4, 0xf

    const/16 v6, 0xe

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 29
    new-instance v2, Lcom/sonyericsson/conversations/ui/AddMediaType;

    const-string/jumbo v3, "INVALID_ROW_ID"

    const-wide/16 v4, -0x1

    const/16 v6, 0xf

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->INVALID_ROW_ID:Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 13
    const/16 v2, 0x10

    new-array v2, v2, [Lcom/sonyericsson/conversations/ui/AddMediaType;

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_PICTURE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_PHOTO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->CAPTURE_VIDEO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    aput-object v3, v2, v9

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    aput-object v3, v2, v10

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_NOTES:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->GET_LOCATION:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_SKETCH:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->SEND_CONTACT:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_STICKER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_VCALENDAR:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->ADD_FILE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->STICKER_STORE_BANNER:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0xe

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/conversations/ui/AddMediaType;->INVALID_ROW_ID:Lcom/sonyericsson/conversations/ui/AddMediaType;

    const/16 v4, 0xf

    aput-object v3, v2, v4

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->$VALUES:[Lcom/sonyericsson/conversations/ui/AddMediaType;

    .line 31
    new-instance v2, Landroid/util/LongSparseArray;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v2, Lcom/sonyericsson/conversations/ui/AddMediaType;->sValueMap:Landroid/util/LongSparseArray;

    .line 34
    invoke-static {}, Lcom/sonyericsson/conversations/ui/AddMediaType;->values()[Lcom/sonyericsson/conversations/ui/AddMediaType;

    move-result-object v2

    array-length v3, v2

    .local v0, "addMediaType":Lcom/sonyericsson/conversations/ui/AddMediaType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 35
    sget-object v4, Lcom/sonyericsson/conversations/ui/AddMediaType;->sValueMap:Landroid/util/LongSparseArray;

    iget-wide v6, v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->mPosition:J

    invoke-virtual {v4, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "position"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-wide p3, p0, Lcom/sonyericsson/conversations/ui/AddMediaType;->mPosition:J

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/AddMediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/sonyericsson/conversations/ui/AddMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/AddMediaType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/AddMediaType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/sonyericsson/conversations/ui/AddMediaType;->$VALUES:[Lcom/sonyericsson/conversations/ui/AddMediaType;

    return-object v0
.end method
