.class public Lcom/sonymobile/cdma/sms/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field private static final ASCII_MAP:[C

.field public static final ASCII_MAP_MAX_INDEX:I

.field public static final charToAscii:Landroid/util/SparseIntArray;


# instance fields
.field public msgEncoding:I

.field public msgEncodingSet:Z

.field public msgType:I

.field public numFields:I

.field public paddingBits:I

.field public payload:[B

.field public payloadStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 64
    const/16 v1, 0x5f

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    .line 86
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    aget-char v2, v2, v0

    add-int/lit8 v3, v0, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sonymobile/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    .line 26
    return-void

    .line 64
    :array_0
    .array-data 2
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncodingSet:Z

    .line 26
    return-void
.end method

.method public static stringToAscii(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 102
    .local v2, "len":I
    new-array v3, v2, [B

    .line 103
    .local v3, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 104
    sget-object v4, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 105
    .local v0, "charCode":I
    if-ne v0, v6, :cond_0

    .line 106
    const/4 v4, 0x0

    return-object v4

    .line 108
    :cond_0
    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "charCode":I
    :cond_1
    return-object v3
.end method
